package ru.strict.app.controllers.authentication;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.strict.app.models.authentication.SignInViewModel;
import ru.strict.components.TokenInfo;
import ru.strict.services.data.requests.RequestAuthUser;
import ru.strict.services.interfaces.IServiceAuthentication;
import ru.strict.utils.UtilDate;
import ru.strict.utils.UtilJWTToken;
import ru.strict.validates.ValidateBaseValue;

import java.util.Date;

@Controller
public class AuthenticationController {

    @Autowired
    private IServiceAuthentication serviceAuthentication;

    @RequestMapping(value="/auth", method=RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView model = new ModelAndView();
        TokenInfo token = UtilJWTToken.createToken(null, null, null, null,
                "aaaa",null, null);
        Jws<Claims> jwt = UtilJWTToken.decodeToken(token.getSecret(), token.getToken());
        model.setViewName("authentication/index");
        return model;
    }

    @RequestMapping(value="/auth", method=RequestMethod.POST)
    public ModelAndView signIn(SignInViewModel data){
        String redirectUrl = "/";
        ModelAndView model = new ModelAndView();

        RequestAuthUser request = new RequestAuthUser(data.getUsername(), data.getPassword());

        if(serviceAuthentication.authUser(request)){
            redirectUrl = "/books";
        }

        model.setViewName("redirect:" + redirectUrl);

        return model;
    }
}
