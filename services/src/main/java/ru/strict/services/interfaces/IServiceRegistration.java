package ru.strict.services.interfaces;

import ru.strict.services.data.requests.RequestCreateUser;

public interface IServiceRegistration {
    boolean createUser(RequestCreateUser request);
}
