package ru.strict.app.interceptors;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import ru.strict.components.LoggerWrapper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InterceptorLogging extends HandlerInterceptorAdapter {

    private static final LoggerWrapper LOGGER = new LoggerWrapper(InterceptorLogging.class);

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        LOGGER.info("sent the request (%s) to url '%s'", request.getMethod(), request.getRequestURI());
        return true;
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        LOGGER.info("request complete (%s) to url '%s'", request.getMethod(), request.getRequestURI());
    }
}
