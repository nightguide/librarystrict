package ru.strict.controllers.authors;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuthorsController {

    @RequestMapping(value="/authors", method= RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView model = new ModelAndView();
        model.setViewName("authors/index");
        return model;
    }
}
