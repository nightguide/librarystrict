package ru.strict.services.interfaces;

import ru.strict.services.data.requests.RequestAuthUser;

public interface IServiceAuthentication {
    boolean authUser(RequestAuthUser request);
}
