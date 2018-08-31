package ru.strict.app.controllers.registration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import ru.strict.app.validations.RegistrationValidator;
import ru.strict.app.models.registration.SignUpViewModel;
import ru.strict.components.Url;
import ru.strict.services.data.requests.RequestCreateUser;
import ru.strict.services.data.responses.ResponseUserRegistration;
import ru.strict.services.interfaces.IServiceRegistration;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.util.List;

@Controller
public class RegistrationController{

    @Autowired
    private IServiceRegistration serviceRegistration;

    @Autowired
    private RegistrationValidator registrationValidator;

    @RequestMapping(value="/registration", method=RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView model = new ModelAndView();
        model.setViewName("registration/index");
        return model;
    }

    @RequestMapping(value="/registration", method=RequestMethod.POST)
    @ResponseBody
    public Object signUp(@RequestBody SignUpViewModel data,
                              HttpServletResponse httpResponse,
                              BindingResult resultValidation){
        Object result = null;

        registrationValidator.validate(data, resultValidation);

        if(resultValidation.hasErrors()){
            httpResponse.setStatus(400);
            result = resultValidation.getAllErrors();
        }else {
            RequestCreateUser request = new RequestCreateUser();
            request.setUsername(data.getUsername());
            request.setEmail(data.getEmail());
            request.setPassword(data.getPassword());
            request.setPasswordRetry(data.getPasswordRetry());
            request.setName(data.getName());
            request.setSurname(data.getSurname());
            request.setMiddlename(data.getMiddlename());
            ResponseUserRegistration responseUserRegistration = serviceRegistration.createUser((request));

            if (responseUserRegistration != null) {
                Cookie cookieAccessToken = new Cookie("libraryStrict_AccessToken", responseUserRegistration.getAccessToken());
                cookieAccessToken.setMaxAge(259200);
                httpResponse.addCookie(cookieAccessToken);

                Cookie cookieRefreshToken = new Cookie("libraryStrict_RefreshToken", responseUserRegistration.getRefreshToken());
                cookieRefreshToken.setMaxAge(7776000);
                httpResponse.addCookie(cookieRefreshToken);
                result = new Url("auth");
            }
        }

        return result;
    }
}
