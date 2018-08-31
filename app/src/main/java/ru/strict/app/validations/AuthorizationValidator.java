package ru.strict.app.validations;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import ru.strict.app.models.authentication.SignInViewModel;
import ru.strict.validates.ValidateBaseValue;

@Component
public class AuthorizationValidator implements Validator {

    @Override
    public boolean supports(Class<?> clazz) {
        return clazz.equals(SignInViewModel.class);
    }

    @Override
    public void validate(Object target, Errors errors) {
        SignInViewModel object = (SignInViewModel) target;

        if(!ValidateBaseValue.isNotEmptyOrNull(object.getUsername())){
            errors.rejectValue("username",
                    "username.empty",
                    "Поле 'Логин' не может быть пустым");
        }

        if(!ValidateBaseValue.isNotEmptyOrNull(object.getPassword())){
            errors.rejectValue("password",
                    "password.empty",
                    "Поле 'Пароль' не может быть пустым");
        }
    }
}
