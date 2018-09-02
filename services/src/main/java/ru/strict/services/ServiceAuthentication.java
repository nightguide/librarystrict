package ru.strict.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.strict.db.core.dto.DtoRoleuser;
import ru.strict.db.core.dto.DtoUser;
import ru.strict.db.core.repositories.IRepositoryNamed;
import ru.strict.db.core.repositories.interfaces.IRepositoryJWTToken;
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

    @Autowired
    private IRepositoryUser repositoryUser;
    @Autowired
    private IServiceToken serviceToken;
    @Autowired
    private IRepositoryNamed<UUID, DtoRoleuser> repositoryRoleuser;

    @Override
    public ResponseUserAuthentication authUser(RequestAuthUser request) {
        ResponseUserAuthentication result = null;

        if(request != null){
            if(ValidateBaseValue.isNotEmptyOrNull(request.getUsername())
                    && ValidateBaseValue.isNotEmptyOrNull(request.getPassword())){
                DtoUser user = repositoryUser.readByName(request.getUsername());
                if(user != null
                        && user.getPasswordEncode().equals(UtilHash.hashMd5(request.getPassword()))){

                    UUID roleUserId = (UUID) repositoryRoleuser.readByName("USER").getId();
                    ResponseCreateToken responseCreateToken =
                            serviceToken.createToken(
                                    new RequestCreateToken((UUID) user.getId(), roleUserId));
                    result = new ResponseUserAuthentication(
                            responseCreateToken.getAccessToken(),
                            responseCreateToken.getRefreshToken()
                    );
                }
            }
        }

        return result;
    }
}
