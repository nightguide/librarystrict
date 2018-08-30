package ru.strict.app.controllers.registration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.strict.app.models.registration.SignUpViewModel;
import ru.strict.services.data.requests.RequestCreateUser;
import ru.strict.services.interfaces.IServiceRegistration;

@Controller
public class RegistrationController{

    @Autowired
    private IServiceRegistration serviceRegistration;

    @RequestMapping(value="/registration", method=RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView model = new ModelAndView();
        model.setViewName("registration/index");
        return model;
    }

    @RequestMapping(value="/registration", method=RequestMethod.POST)
    public ModelAndView signUp(SignUpViewModel data){
        ModelAndView model = new ModelAndView();

        RequestCreateUser request = new RequestCreateUser();
        request.setUsername(data.getUsername());
        request.setEmail(data.getEmail());
        request.setPassword(data.getPassword());
        request.setPasswordRetry(data.getPasswordRetry());
        request.setName(data.getName());
        request.setSurname(data.getSurname());
        request.setMiddlename(data.getMiddlename());
        serviceRegistration.createUser((request));

        model.setViewName("redirect:/auth");
        return model;
    }
}
