package ru.strict.controllers.authentication;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuthenticationController {

    @RequestMapping(value="/auth", method=RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView model = new ModelAndView();
        model.setViewName("authentication/index");
        return model;
    }

    @RequestMapping(value="/auth", method=RequestMethod.POST)
    public ModelAndView authorize(){
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:/books");
        return model;
    }
}
