package ru.strict.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.strict.components.LoggerWrapper;
import ru.strict.db.core.dto.DtoRoleuser;
import ru.strict.db.core.dto.DtoUser;
import ru.strict.db.core.repositories.IRepositoryNamed;
import ru.strict.db.repositories.interfaces.IRepositoryUser;
import ru.strict.services.data.requests.RequestAuthUser;
import ru.strict.services.data.requests.RequestCreateToken;
import ru.strict.services.data.responses.ResponseCreateToken;
import ru.strict.services.data.responses.ResponseUserAuthentication;
import ru.strict.services.interfaces.IServiceAuthentication;
import ru.strict.services.interfaces.IServiceToken;
import ru.strict.utils.UtilHash;
import ru.strict.validates.ValidateBaseValue;

import java.util.UUID;

@Service
public class ServiceAuthentication implements IServiceAuthentication {

    private static final LoggerWrapper LOGGER = new LoggerWrapper(ServiceAuthentication.class);

    @Autowired
    private IRepositoryUser repositoryUser;
    @Autowired
    private IServiceToken serviceToken;
    @Autowired
    private IRepositoryNamed<UUID, DtoRoleuser<UUID>> repositoryRoleuser;

    @Override
    public ResponseUserAuthentication authUser(RequestAuthUser request) {
        LOGGER.info("start an user authentication");
        ResponseUserAuthentication result = null;

        if(request != null){
            if(ValidateBaseValue.isNotEmptyOrNull(request.getUsername())
                    && ValidateBaseValue.isNotEmptyOrNull(request.getPassword())){
                DtoUser user = repositoryUser.readByName(request.getUsername());
                if(user != null){
                    if(user.getPasswordEncode().equals(UtilHash.hashMd5(request.getPassword()))){
                        UUID roleUserId = (UUID) repositoryRoleuser.readByName("USER").getId();
                        ResponseCreateToken responseCreateToken =
                                serviceToken.createToken(
                                        new RequestCreateToken((UUID) user.getId(), roleUserId));
                        result = new ResponseUserAuthentication(
                                responseCreateToken.getAccessToken(),
                                responseCreateToken.getRefreshToken()
                        );
                    }else{
                        LOGGER.warn("entered a password for user '%s' not valid", request.getUsername());
                    }
                }else{
                    LOGGER.warn("user with name '%s' not found", request.getUsername());
                }
            }else{
                LOGGER.warn("username or password is empty");
            }
        }else{
            LOGGER.error("request data for create user is null");
        }
        LOGGER.info("complete an user authentication");

        return result;
    }
}
