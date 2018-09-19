package ru.strict.services.interfaces;

import ru.strict.services.data.responses.ResponseUser;

public interface IServiceUser {
    ResponseUser readUserByName(String username);
    ResponseUser readUserByEmail(String email);
}
