package ru.strict.controllers.genres;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GenresController {

    @RequestMapping(value="/genres", method= RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView model = new ModelAndView();
        model.setViewName("genres/index");
        return model;
    }
}
