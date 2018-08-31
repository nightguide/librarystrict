package ru.strict.services.interfaces;

import ru.strict.services.data.requests.RequestAuthUser;
import ru.strict.services.data.responses.ResponseUserAuthentication;

public interface IServiceAuthentication {
    ResponseUserAuthentication authUser(RequestAuthUser request);
}
