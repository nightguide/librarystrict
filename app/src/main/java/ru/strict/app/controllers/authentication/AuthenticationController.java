package ru.strict.app.controllers.authentication;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.strict.app.models.authentication.SignInViewModel;
import ru.strict.validates.ValidateBaseValue;

@Controller
public class AuthenticationController {

    @RequestMapping(value="/auth", method=RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView model = new ModelAndView();
        model.setViewName("authentication/index");
        return model;
    }

    @RequestMapping(value="/auth", method=RequestMethod.POST)
    public ModelAndView signIn(SignInViewModel data){
        String redirectUrl = "/";
        ModelAndView model = new ModelAndView();
        if(data != null){
            if(ValidateBaseValue.isNotEmptyOrNull(data.getUsername())
                    && ValidateBaseValue.isNotEmptyOrNull(data.getPassword())
                    && data.getUsername().equals("user")
                    && data.getPassword().equals("user")) {
                redirectUrl = "/books";
            }
        }

        model.setViewName("redirect:" + redirectUrl);

        return model;
    }
}
