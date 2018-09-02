package ru.strict.app.interceptors;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import ru.strict.services.data.responses.ResponseCreateToken;
import ru.strict.services.interfaces.IServiceToken;
import ru.strict.validates.ValidateBaseValue;

import javax.servlet.http.*;
import java.util.Arrays;

public class InterceptorToken extends HandlerInterceptorAdapter {

    private IServiceToken serviceToken;

    public InterceptorToken(IServiceToken serviceToken) {
        this.serviceToken = serviceToken;
    }

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response,
                             Object handler) throws Exception {
        boolean result = true;

        String accessToken = "";
        HttpSession session = request.getSession();

        if (request.getMethod().equals("GET")) {
            accessToken = (String) session.getAttribute("accessToken");

            if (!ValidateBaseValue.isNotEmptyOrNull(accessToken)) {
                Cookie cookieAccessToken = Arrays.stream(request.getCookies())
                        .filter(cookie -> cookie.getName().equals("libraryStrict_AccessToken"))
                        .findFirst().orElse(null);

                if (cookieAccessToken == null) {
                    accessToken = createAccessTokenByRefresh(request, response);
                } else {
                    if(serviceToken.isValidAccessToken(cookieAccessToken.getValue())) {
                        accessToken = cookieAccessToken.getValue();
                    }else{
                        cookieAccessToken.setValue("");
                        cookieAccessToken.setMaxAge(0);
                        response.addCookie(cookieAccessToken);

                        accessToken = createAccessTokenByRefresh(request, response);
                    }
                }
            }
        }

        if(!ValidateBaseValue.isNotEmptyOrNull(accessToken)){
            accessToken = "";
        }else{
            session.setAttribute("accessToken", accessToken);
        }

        response.setHeader("Authorization","Bearer " + accessToken);

        return result;
    }

    @Override
    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response,
                           Object handler,
                           ModelAndView modelAndView) throws Exception {
        if (request.getMethod().equals("GET")) {
            String accessToken = response.getHeader("Authorization").replace("Bearer ", "");
            if (!ValidateBaseValue.isNotEmptyOrNull(accessToken)) {
                modelAndView.addObject("user", null);
            } else {
                modelAndView.addObject("user", "user");
            }
        }
    }

    private String createAccessTokenByRefresh(HttpServletRequest request, HttpServletResponse response){
        String accessToken = "";
        Cookie cookieRefreshToken = Arrays.stream(request.getCookies())
                .filter(cookie -> cookie.getName().equals("libraryStrict_RefreshToken"))
                .findFirst().orElse(null);

        if (cookieRefreshToken != null) {
            ResponseCreateToken newToken =
                    serviceToken.updateTokenByRefresh(cookieRefreshToken.getValue());
            if(newToken != null){
                accessToken = newToken.getAccessToken();
            }else{
                cookieRefreshToken.setValue("");
                cookieRefreshToken.setMaxAge(0);
                response.addCookie(cookieRefreshToken);
            }
        }

        return accessToken;
    }
}
