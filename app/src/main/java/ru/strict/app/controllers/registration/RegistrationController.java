package ru.strict.app.controllers.registration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.strict.app.models.registration.SignUpViewModel;
import ru.strict.db.core.dto.DtoProfile;
import ru.strict.db.core.dto.DtoUser;
import ru.strict.db.core.entities.EntityUser;
import ru.strict.db.spring.repositories.RepositorySpringBase;
import ru.strict.utils.UtilData;
import ru.strict.utils.UtilHash;

import java.util.UUID;

@Controller
public class RegistrationController{

    @Autowired
    private RepositorySpringBase<UUID, EntityUser, DtoUser> repositoryUser;

    @RequestMapping(value="/registration", method=RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView model = new ModelAndView();
        model.setViewName("registration/index");
        return model;
    }

    @RequestMapping(value="/registration", method=RequestMethod.POST)
    public ModelAndView signUp(SignUpViewModel data){
        ModelAndView model = new ModelAndView();
        if(data != null){
            if(data.getPassword().equals(data.getPasswordRetry())){
                DtoUser<UUID> user = new DtoUser<>();
                user.setId(UUID.randomUUID());
                user.setUsername(data.getUsername());
                user.setPasswordEncode(UtilHash.hashMd5(data.getPassword()));
                user.setEmail(data.getEmail());

                DtoProfile<UUID> profile = new DtoProfile<>();
                profile.setName(UtilData.convertStringFromISOToUTF8(data.getName()));
                profile.setSurname(UtilData.convertStringFromISOToUTF8(data.getSurname()));
                profile.setMiddlename(UtilData.convertStringFromISOToUTF8(data.getMiddlename()));

                repositoryUser.create(user);
                int i = 0;
            }
        }
        model.setViewName("redirect:/auth");
        return model;
    }
}
