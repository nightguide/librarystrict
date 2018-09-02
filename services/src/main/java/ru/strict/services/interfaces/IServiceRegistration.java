package ru.strict.services.interfaces;

import ru.strict.services.data.requests.RequestCreateUser;
import ru.strict.services.data.responses.ResponseUserRegistration;

public interface IServiceRegistration {
    boolean createUser(RequestCreateUser request);
}
