package ru.strict.app.interceptors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import ru.strict.db.core.repositories.interfaces.IRepositoryJWTToken;
import ru.strict.validates.ValidateBaseValue;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.UUID;

public class TokenInterceptor extends HandlerInterceptorAdapter {

    @Autowired
    private IRepositoryJWTToken<UUID> repositoryJWTToken;

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response,
                             Object handler) throws Exception {
        boolean result = false;

        String accessToken = "";

        if (request.getMethod().equals("GET")) {
            HttpSession session = request.getSession();
            accessToken = (String) session.getAttribute("accessToken");

            if (!ValidateBaseValue.isNotEmptyOrNull(accessToken)) {
                Cookie cookieAccessToken = Arrays.stream(request.getCookies())
                        .filter(cookie -> cookie.getName().equals("libraryStrict_AccessToken"))
                        .findFirst().orElse(null);

                if (cookieAccessToken == null) {
                    Cookie cookieRefreshToken = Arrays.stream(request.getCookies())
                            .filter(cookie -> cookie.getName().equals("libraryStrict_RefreshToken"))
                            .findFirst().orElse(null);

                    if (cookieRefreshToken == null) {
                        result = true;
                    } else {
                        result = true;
                    }
                } else {
                    session.setAttribute("accessToken", cookieAccessToken.getValue());
                    result = true;
                }
            } else {
                result = true;
            }
        } else {
            result = true;
        }

        if(accessToken == null){
            accessToken = "";
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
}
