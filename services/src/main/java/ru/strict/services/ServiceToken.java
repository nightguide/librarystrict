package ru.strict.services;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.strict.components.TokenInfo;
import ru.strict.db.core.dto.DtoJWTUserToken;
import ru.strict.db.core.dto.DtoToken;
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

    @Override
    public void deleteToken(String accessToken) {
        DtoToken token = repositoryToken.readByAccessToken(accessToken);
        if(token != null){
            repositoryToken.delete((UUID)token.getId());
        }
    }

    @Override
    public ResponseCreateToken updateTokenByRefresh(String refreshToken) {
        DtoJWTUserToken<UUID> token = repositoryToken.readByRefreshToken(refreshToken);
        repositoryToken.delete(token.getId());

        return createToken(new RequestCreateToken(token.getUserId(), token.getRoleUserId()));
    }

    @Override
    public boolean isValidAccessToken(String accessToken) {
        boolean result = true;

        Date currentDate = new Date();

        DtoJWTUserToken<UUID> dbToken = repositoryToken.readByAccessToken(accessToken);
        Jws<Claims> checkTokenData = UtilJWTToken.decodeToken(dbToken.getSecret(), accessToken);

        if(!checkTokenData.getBody().getId().equals(dbToken.getId().toString())){
            result = false;
        }
        if(!checkTokenData.getBody().getExpiration().equals(dbToken.getExpireTimeAccess())){
            result = false;
        }else{
            if(checkTokenData.getBody().getExpiration().before(currentDate)){
                result = false;
            }
        }
        if(!checkTokenData.getBody().getIssuedAt().equals(dbToken.getIssuedAt())){
            result = false;
        }
        if(!checkTokenData.getBody().getAudience().equals(dbToken.getAudience())){
            result = false;
        }
        if(!checkTokenData.getBody().getSubject().equals(dbToken.getSubject())){
            result = false;
        }
        if(!checkTokenData.getBody().getNotBefore().equals(dbToken.getNotBefore())){
            result = false;
        }
        if(!checkTokenData.getBody().getIssuer().equals(dbToken.getIssuer())){
            result = false;
        }
        if(!checkTokenData.getHeader().getAlgorithm().equals(dbToken.getAlgorithm())){
            result = false;
        }
        if(!checkTokenData.getHeader().getType().equals(dbToken.getType())){
            result = false;
        }

        return result;
    }
}
