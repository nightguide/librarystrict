package ru.strict.services.interfaces;

import ru.strict.services.data.requests.RequestCreateToken;
import ru.strict.services.data.responses.ResponseCreateToken;

public interface IServiceToken {
    ResponseCreateToken createToken(RequestCreateToken request);
    void deleteToken(String accessToken);
    ResponseCreateToken updateTokenByRefresh(String refreshToken);
}
