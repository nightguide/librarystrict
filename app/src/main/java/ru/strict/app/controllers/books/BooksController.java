package ru.strict.app.controllers.books;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;

@Controller
public class BooksController {

    @RequestMapping(value="/books", method=RequestMethod.GET)
    public ModelAndView index(HttpServletResponse httpResponse){
        ModelAndView model = new ModelAndView();
        String token = httpResponse.getHeader("Authorization");
        model.setViewName("books/index");
        return model;
    }

}
