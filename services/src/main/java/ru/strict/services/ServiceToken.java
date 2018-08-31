package ru.strict.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.strict.components.TokenInfo;
import ru.strict.db.core.dto.DtoJWTUserToken;
import ru.strict.db.core.repositories.interfaces.IRepositoryJWTToken;
import ru.strict.services.data.requests.RequestCreateToken;
import ru.strict.services.data.responses.ResponseCreateToken;
import ru.strict.services.interfaces.IServiceToken;
import ru.strict.utils.UtilDate;
import ru.strict.utils.UtilJWTToken;

import java.util.Date;
import java.util.UUID;

@Service
public class ServiceToken implements IServiceToken {

    @Autowired
    private IRepositoryJWTToken<UUID> repositoryToken;

    @Override
    public ResponseCreateToken createToken(RequestCreateToken request) {
        Date currentDate = new Date();

        DtoJWTUserToken<UUID> token = new DtoJWTUserToken();
        token.setId(UUID.randomUUID());
        token.setRefreshToken(UUID.randomUUID().toString());
        token.setIssuedAt(currentDate);
        token.setExpireTimeRefresh(UtilDate.addMonthsToDate(currentDate, 3));
        token.setExpireTimeAccess(UtilDate.addDaysToDate(currentDate, 3));
        token.setRoleUserId(request.getRoleId());
        token.setUserId(request.getUserId());
        token.setIssuer("LibraryStrict");
        token.setSubject("USER");
        token.setType("JWT");
        TokenInfo accessTokenInfo = UtilJWTToken.createToken(token.getId(), token.getExpireTimeAccess(),
                token.getIssuedAt(), token.getIssuer(), token.getSubject(),
                token.getNotBefore(), token.getAudience());

        token.setAccessToken(accessTokenInfo.getToken());
        token.setSecret(accessTokenInfo.getSecret());
        token.setAlgorithm(accessTokenInfo.getAlgorithm());

        repositoryToken.create(token);

        return new ResponseCreateToken(token.getAccessToken(), token.getRefreshToken());
    }
}
