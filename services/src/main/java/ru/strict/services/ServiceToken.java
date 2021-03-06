package ru.strict.services;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.strict.components.LoggerWrapper;
import ru.strict.components.TokenInfo;
import ru.strict.db.core.dto.DtoJWTToken;
import ru.strict.db.core.dto.DtoToken;
import ru.strict.db.core.repositories.interfaces.IRepositoryJWTToken;
import ru.strict.services.data.JWTConfig;
import ru.strict.services.data.requests.RequestCreateToken;
import ru.strict.services.data.responses.ResponseCreateToken;
import ru.strict.services.interfaces.IServiceToken;
import ru.strict.utils.UtilDate;
import ru.strict.utils.UtilJWTToken;

import java.util.Date;
import java.util.UUID;

@Service
public class ServiceToken implements IServiceToken {

    private static final LoggerWrapper LOGGER = new LoggerWrapper(ServiceToken.class);

    @Autowired
    private IRepositoryJWTToken<UUID> repositoryToken;

    public ServiceToken() {
    }

    public ServiceToken(IRepositoryJWTToken<UUID> repositoryToken) {
        this.repositoryToken = repositoryToken;
    }

    @Override
    public ResponseCreateToken createToken(RequestCreateToken request) {
        LOGGER.info("start a create of token");
        Date currentDate = UtilDate.getDateWithoutTime(new Date());

        DtoJWTToken<UUID> token = new DtoJWTToken();
        token.setId(UUID.randomUUID());
        token.setRefreshToken(UUID.randomUUID().toString());
        token.setIssuedAt(currentDate);
        token.setExpireTimeRefresh(UtilDate.addDaysToDate(currentDate,
                JWTConfig.instance().getExpireDaysRefresh()));
        token.setExpireTimeAccess(UtilDate.addDaysToDate(currentDate,
                JWTConfig.instance().getExpireDaysAccess()));
        token.setRoleUserId(request.getRoleId());
        token.setUserId(request.getUserId());
        token.setIssuer(JWTConfig.instance().getIssuer());
        token.setSubject(JWTConfig.instance().getSubject());
        token.setType(JWTConfig.instance().getType());
        TokenInfo accessTokenInfo = UtilJWTToken.createToken(token.getId(), token.getExpireTimeAccess(),
                token.getIssuedAt(), token.getIssuer(), token.getSubject(),
                token.getNotBefore(), token.getAudience());

        token.setAccessToken(accessTokenInfo.getToken());
        token.setSecret(accessTokenInfo.getSecret());
        token.setAlgorithm(accessTokenInfo.getAlgorithm());

        repositoryToken.create(token);
        LOGGER.info("token is created '%s' for user '%s'", token.getAccessToken(), request.getUserId().toString());
        LOGGER.info("complete a create of token");
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
        LOGGER.info("start an update of access-token by refresh-token '%s'", refreshToken);
        ResponseCreateToken result = null;
        DtoJWTToken<UUID> token = repositoryToken.readByRefreshToken(refreshToken);
        if(token != null) {
            repositoryToken.delete(token.getId());
            if(token.getExpireTimeRefresh().after(new Date())) {
                result = createToken(new RequestCreateToken(token.getUserId(), token.getRoleUserId()));
            }else{
                LOGGER.error("expiration time for refresh-token is over '%s'", refreshToken);
            }
        }else{
            LOGGER.error("token not found by refresh-token '%s'", refreshToken);
        }

        LOGGER.info("complete an update of access-token by refresh-token '%s'", refreshToken);
        return result;
    }

    @Override
    public boolean isValidAccessToken(String accessToken) {
        LOGGER.info("start a check of access-token");
        boolean result = true;

        Date currentDate = new Date();

        DtoJWTToken<UUID> dbToken = repositoryToken.readByAccessToken(accessToken);
        if(dbToken != null) {
            Jws<Claims> checkTokenData = UtilJWTToken.decodeToken(dbToken.getSecret(), accessToken);

            if(checkTokenData != null) {
                if (!checkTokenData.getBody().getId().equals(dbToken.getId().toString())) {
                    LOGGER.warn("'token id' not equals");
                    result = false;
                }
                if (!checkTokenData.getBody().getExpiration().equals(dbToken.getExpireTimeAccess())) {
                    LOGGER.warn("'expiration time' for access-token not equals");
                    result = false;
                } else {
                    if (checkTokenData.getBody().getExpiration().before(currentDate)) {
                        LOGGER.warn("'expiration time' for access-token is over");
                        result = false;
                    }
                }
                if (!checkTokenData.getBody().getIssuedAt().equals(dbToken.getIssuedAt())) {
                    LOGGER.warn("'issued at' not equals");
                    result = false;
                }
                if (!(checkTokenData.getBody().getAudience() == null && dbToken.getAudience() == null) &&
                        !checkTokenData.getBody().getAudience().equals(dbToken.getAudience())) {
                    LOGGER.warn("'audience' not equals");
                    result = false;
                }
                if (!(checkTokenData.getBody().getSubject() == null && dbToken.getSubject() == null) &&
                        !checkTokenData.getBody().getSubject().equals(dbToken.getSubject())) {
                    LOGGER.warn("'subject' not equals");
                    result = false;
                }
                if (!(checkTokenData.getBody().getNotBefore() == null && dbToken.getNotBefore() == null) &&
                        !checkTokenData.getBody().getNotBefore().equals(dbToken.getNotBefore())) {
                    LOGGER.warn("'not before' not equals");
                    result = false;
                }
                if (!(checkTokenData.getBody().getIssuer() == null && dbToken.getIssuer() == null) &&
                        !checkTokenData.getBody().getIssuer().equals(dbToken.getIssuer())) {
                    LOGGER.warn("'issuer' not equals");
                    result = false;
                }
                if (!checkTokenData.getHeader().getAlgorithm().equals(dbToken.getAlgorithm())) {
                    LOGGER.warn("'algorithm' not equals");
                    result = false;
                }
            }else{
                LOGGER.error("fail a decoding of acces-token '%s'", accessToken);
                result = false;
            }
        }else{
            LOGGER.error("access-token not found into db '%s'", accessToken);
            result = false;
        }

        LOGGER.info("complete a check of access-token");

        return result;
    }
}
