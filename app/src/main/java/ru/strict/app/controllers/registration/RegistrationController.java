package ru.strict.app.controllers.registration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.strict.app.controllers.RegValidator;
import ru.strict.app.models.registration.SignUpViewModel;
import ru.strict.services.data.requests.RequestCreateUser;
import ru.strict.services.data.responses.ResponseUserRegistration;
import ru.strict.services.interfaces.IServiceRegistration;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

@Controller
public class RegistrationController{

    @Autowired
    private IServiceRegistration serviceRegistration;

    @Autowired
    private RegValidator regValidator;

    @RequestMapping(value="/registration", method=RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView model = new ModelAndView();
        model.setViewName("registration/index");
        return model;
    }

    @RequestMapping(value="/registration", method=RequestMethod.POST)
    public ModelAndView signUp(@RequestBody SignUpViewModel data,
                               HttpServletResponse response,
                               BindingResult resultValidation){
        ModelAndView model = new ModelAndView();

        RequestCreateUser request = new RequestCreateUser();
        request.setUsername(data.getUsername());
        request.setEmail(data.getEmail());
        request.setPassword(data.getPassword());
        request.setPasswordRetry(data.getPasswordRetry());
        request.setName(data.getName());
        request.setSurname(data.getSurname());
        request.setMiddlename(data.getMiddlename());
        ResponseUserRegistration responseUserRegistration = serviceRegistration.createUser((request));

        Cookie cookieAccessToken = new Cookie("libraryStrict_AccessToken", responseUserRegistration.getAccessToken());
        cookieAccessToken.setMaxAge(259200);
        response.addCookie(cookieAccessToken);

        Cookie cookieRefreshToken = new Cookie("libraryStrict_RefreshToken", responseUserRegistration.getRefreshToken());
        cookieRefreshToken.setMaxAge(7776000);
        response.addCookie(cookieRefreshToken);

        model.setViewName("redirect:/auth");
        return model;
    }
}
