package ru.strict.app.validations;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import ru.strict.app.models.registration.SignUpViewModel;
import ru.strict.services.interfaces.IServiceUser;
import ru.strict.validates.ValidateBaseRegex;
import ru.strict.validates.ValidateBaseValue;

@Component
public class RegistrationValidator implements Validator{

    private IServiceUser serviceUser;

    public boolean supports(Class<?> clazz) {
        return clazz.equals(SignUpViewModel.class);
    }

    public void validate(Object target, Errors errors) {
        SignUpViewModel object = (SignUpViewModel) target;

        if(!ValidateBaseValue.isNotEmptyOrNull(object.getUsername())){
            errors.rejectValue("username",
                    "username.empty",
                    "Поле 'Логин' не может быть пустым");
        }else{
            if(!ValidateBaseValue.isMinLength(object.getUsername(), 3)){
                errors.rejectValue("username",
                        "username.short",
                        "Логин слишком короткий. Введите не меньше 3 символов");
            }else{
                if(serviceUser.readUserByName(object.getUsername()) != null){
                    errors.rejectValue("username",
                            "username.exists",
                            "Пользователь с таким логином уже существует");
                }
            }
        }

        if(!ValidateBaseValue.isNotEmptyOrNull(object.getPassword())){
            errors.rejectValue("password",
                    "password.empty",
                    "Поле 'Пароль' не может быть пустым");
        }else{
            if(!ValidateBaseValue.isMinLength(object.getPassword(),8)){
                errors.rejectValue("password",
                        "password.short",
                        "Пароль слишком короткий. Введите не меньше 8 символов");
            }else{
                if(!object.getPassword().equals(object.getPasswordRetry())){
                    errors.rejectValue("password",
                            "password.notEquals",
                            "Введенные пароли не совпадают");
                }
            }
        }

        if(!ValidateBaseValue.isNotEmptyOrNull(object.getEmail())){
            errors.rejectValue("email",
                    "email.empty",
                    "Поле 'Email' не может быть пустым");
        }else{
            if(!ValidateBaseRegex.isEmail(object.getEmail())){
                errors.rejectValue("email",
                        "email.notEmail",
                        "Введен некорректный email");
            }else{
                if(serviceUser.readUserByEmail(object.getEmail()) != null){
                    errors.rejectValue("email",
                            "email.exists",
                            "Пользователь с таким email уже существует");
                }
            }
        }

        if(!ValidateBaseValue.isNotEmptyOrNull(object.getName())){
            errors.rejectValue("name",
                    "name.empty",
                    "Поле 'Имя' не может быть пустым");
        }

        if(!ValidateBaseValue.isNotEmptyOrNull(object.getSurname())){
            errors.rejectValue("surname",
                    "surname.empty",
                    "Поле 'Фамилия' не может быть пустым");
        }
    }
}
