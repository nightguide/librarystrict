package ru.strict.app.interceptors;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import ru.strict.validates.ValidateBaseValue;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Arrays;

public class TokenInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response,
                             Object handler) throws Exception {
        boolean result = false;

        if (request.getMethod().equals("GET")
                && !request.getRequestURI().equals("/auth")
                && !request.getRequestURI().equals("/registration")) {
            HttpSession session = request.getSession();
            String accessToken = (String) session.getAttribute("accessToken");

            if (!ValidateBaseValue.isNotEmptyOrNull(accessToken)) {
                Cookie cookieAccessToken = Arrays.stream(request.getCookies())
                        .filter(cookie -> cookie.getName().equals("libraryStrict_AccessToken"))
                        .findFirst().orElse(null);
                cookieAccessToken = null;
                if (cookieAccessToken == null) {
                    Cookie cookieRefreshToken = Arrays.stream(request.getCookies())
                            .filter(cookie -> cookie.getName().equals("libraryStrict_RefreshToken"))
                            .findFirst().orElse(null);

                    cookieRefreshToken = null;
                    if (cookieRefreshToken == null) {
                        result = false;
                        response.sendRedirect("/auth");
                        // Выполнить авторизацию
                    } else {
                        result = true;
                        // Проверить refreshToken
                        // Если всё норм сгенерировать новые токены
                        // Иначе перейти на страницу авторизации
                    }
                } else {
                    // Получить accessToken из куки и выполнить проверку как ниже
                    result = true;
                }
            } else {
                // Проверить accessToken, если он не вылидный, тогда получить новый accessToken используя refreshToken
                // Проверить refreshToken, если он не вылидный, тогда отправить на страницу авторизации
                //resultPage = "books/index";
                result = true;
            }
        } else {
            result = true;
        }

        return result;
    }

    @Override
    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response,
                           Object handler,
                           ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);
    }

    @Override
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response,
                                Object handler,
                                Exception ex) throws Exception {
        super.afterCompletion(request, response, handler, ex);
    }
}
