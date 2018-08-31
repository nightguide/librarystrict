package ru.strict.app.controllers.authentication;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.strict.app.models.authentication.SignInViewModel;
import ru.strict.app.validations.AuthorizationValidator;
import ru.strict.components.TokenInfo;
import ru.strict.components.Url;
import ru.strict.services.data.requests.RequestAuthUser;
import ru.strict.services.interfaces.IServiceAuthentication;
import ru.strict.utils.UtilDate;
import ru.strict.utils.UtilJWTToken;
import ru.strict.validates.ValidateBaseValue;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;

@Controller
public class AuthenticationController {

    @Autowired
    private IServiceAuthentication serviceAuthentication;

    @Autowired
    private AuthorizationValidator authorizationValidator;

    @RequestMapping(value="/auth", method=RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView model = new ModelAndView();
        model.setViewName("authentication/index");
        return model;
    }

    @RequestMapping(value="/auth", method=RequestMethod.POST)
    @ResponseBody
    public Object signIn(@RequestBody SignInViewModel data,
                         HttpServletResponse response,
                         BindingResult resultValidation){
        Object result = null;

        authorizationValidator.validate(data, resultValidation);

        if(resultValidation.hasErrors()){
            response.setStatus(400);
            result = resultValidation.getAllErrors();
        }else {
            RequestAuthUser request = new RequestAuthUser(data.getUsername(), data.getPassword());
            if (serviceAuthentication.authUser(request)) {
                result = new Url("books");
            }else{
                response.setStatus(400);
                resultValidation.rejectValue("username",
                        "username.notvalid",
                        "Неверно введен логин или пароль");
                result = resultValidation.getAllErrors();
            }
        }

        return result;
    }
}
