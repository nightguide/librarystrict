package ru.strict.app.controllers.authentication;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.strict.app.models.authentication.SignInViewModel;
import ru.strict.app.validations.AuthorizationValidator;
import ru.strict.components.Url;
import ru.strict.services.data.requests.RequestAuthUser;
import ru.strict.services.data.responses.ResponseUserAuthentication;
import ru.strict.services.interfaces.IServiceAuthentication;
import ru.strict.services.interfaces.IServiceToken;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class AuthenticationController {

    @Autowired
    private IServiceAuthentication serviceAuthentication;

    @Autowired
    private AuthorizationValidator authorizationValidator;

    @Autowired
    private IServiceToken serviceToken;

    @RequestMapping(value="/auth", method=RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView model = new ModelAndView();
        model.setViewName("authentication/index");
        return model;
    }

    @RequestMapping(value="/auth", method=RequestMethod.POST)
    @ResponseBody
    public Object signIn(@RequestBody SignInViewModel data,
                         HttpServletResponse httpResponse,
                         BindingResult resultValidation,
                         HttpSession session){
        Object result = null;

        authorizationValidator.validate(data, resultValidation);

        if(resultValidation.hasErrors()){
            httpResponse.setStatus(400);
            result = resultValidation.getAllErrors();
        }else {
            RequestAuthUser request = new RequestAuthUser(data.getUsername(), data.getPassword());
            ResponseUserAuthentication responseUserAuthentication = serviceAuthentication.authUser(request);

            if (responseUserAuthentication != null) {
                Cookie cookieAccessToken = new Cookie("libraryStrict_AccessToken", responseUserAuthentication.getAccessToken());
                cookieAccessToken.setMaxAge(259200);
                httpResponse.addCookie(cookieAccessToken);

                Cookie cookieRefreshToken = new Cookie("libraryStrict_RefreshToken", responseUserAuthentication.getRefreshToken());
                cookieRefreshToken.setMaxAge(7776000);
                httpResponse.addCookie(cookieRefreshToken);

                session.setMaxInactiveInterval(43200);
                session.setAttribute("accessToken", responseUserAuthentication.getAccessToken());

                result = new Url("books");
            }else{
                httpResponse.setStatus(400);
                resultValidation.rejectValue("username",
                        "username.notvalid",
                        "Неверно введен логин или пароль");
                result = resultValidation.getAllErrors();
            }
        }

        return result;
    }

    @RequestMapping("/logout")
    public ModelAndView logout(@CookieValue(value = "libraryStrict_AccessToken", required = false) Cookie cookieAccessToken,
                               @CookieValue(value = "libraryStrict_RefreshToken", required = false) Cookie cookieRefreshToken,
                               HttpServletRequest httpRequest, HttpServletResponse httpResponse){
        ModelAndView model = new ModelAndView();

        if(cookieAccessToken != null){
            cookieAccessToken.setMaxAge(0);
            cookieAccessToken.setValue("");
            httpResponse.addCookie(cookieAccessToken);
        }
        if(cookieRefreshToken != null){
            cookieRefreshToken.setMaxAge(0);
            cookieRefreshToken.setValue("");
            httpResponse.addCookie(cookieRefreshToken);
        }

        serviceToken.deleteToken((String)httpRequest.getSession().getAttribute("accessToken"));

        httpRequest.getSession().removeAttribute("accessToken");

        model.setViewName("redirect:/books");

        return model;
    }
}
