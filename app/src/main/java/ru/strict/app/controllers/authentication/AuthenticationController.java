package ru.strict.app.controllers.authentication;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.strict.app.models.authentication.SignInViewModel;
import ru.strict.app.validations.AuthorizationValidator;
import ru.strict.components.Url;
import ru.strict.services.data.requests.RequestAuthUser;
import ru.strict.services.interfaces.IServiceAuthentication;
import ru.strict.validates.ValidateBaseValue;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@SessionAttributes("accessToken")
public class AuthenticationController {

    @Autowired
    private IServiceAuthentication serviceAuthentication;

    @Autowired
    private AuthorizationValidator authorizationValidator;

    @RequestMapping(value="/auth", method=RequestMethod.GET)
    public ModelAndView index(@ModelAttribute String accessToken,
                              @CookieValue(value="libraryStrict_AccessToken", required = false)
                                      Cookie cookieAccessToken,
                              @CookieValue(value="libraryStrict_RefreshToken", required = false)
                                          Cookie cookieRefreshToken,
                              HttpServletResponse httpResponse){
        ModelAndView model = new ModelAndView();
        String resultPage = "authentication/index";
        if(!ValidateBaseValue.isNotEmptyOrNull(accessToken)){
            if(cookieAccessToken == null){
                if(cookieRefreshToken == null){
                    // Выполнить авторизацию
                }else{
                    // Проверить refreshToken
                    // Если всё норм сгенерировать новые токены
                    // Иначе перейти на страницу авторизации
                }
            }else{
                // Получить accessToken из куки и выполнить проверку как ниже
            }
        }else{
            // Проверить accessToken, если он не вылидный, тогда получить новый accessToken используя refreshToken
            // Проверить refreshToken, если он не вылидный, тогда отправить на страницу авторизации
            //resultPage = "books/index";
        }

        model.setViewName(resultPage);

        return model;
    }

    @RequestMapping(value="/auth", method=RequestMethod.POST)
    @ResponseBody
    public Object signIn(@RequestBody SignInViewModel data,
                         HttpServletResponse httpResponse,
                         BindingResult resultValidation){
        Object result = null;

        authorizationValidator.validate(data, resultValidation);

        if(resultValidation.hasErrors()){
            httpResponse.setStatus(400);
            result = resultValidation.getAllErrors();
        }else {
            RequestAuthUser request = new RequestAuthUser(data.getUsername(), data.getPassword());
            if (serviceAuthentication.authUser(request)) {
                result = new Url("books");
            }else{
                httpResponse.setStatus(400);
                resultValidation.rejectValue("username",
                        "username.notvalid",
                        "Неверно введен логин или пароль");
                result = resultValidation.getAllErrors();
            }
        }

        return result;
    }

    @ModelAttribute("accessToken")
    private String defaultAccessToken(){
        return null;
    }
}
