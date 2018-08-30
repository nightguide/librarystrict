package ru.strict.services.interfaces;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.strict.db.core.dto.DtoUser;
import ru.strict.db.repositories.interfaces.IRepositoryUser;
import ru.strict.services.data.requests.RequestAuthUser;
import ru.strict.utils.UtilHash;
import ru.strict.validates.ValidateBaseValue;

@Service
public class ServiceAuthentication implements IServiceAuthentication {

    @Autowired
    private IRepositoryUser repositoryUser;

    @Override
    public boolean authUser(RequestAuthUser request) {
        boolean result = false;

        if(request != null){
            if(ValidateBaseValue.isNotEmptyOrNull(request.getUsername())
                    && ValidateBaseValue.isNotEmptyOrNull(request.getPassword())){
                DtoUser user = repositoryUser.readByName(request.getUsername());
                if(user != null
                        && user.getPasswordEncode().equals(UtilHash.hashMd5(request.getPassword()))){
                    result = true;
                }
            }
        }

        return result;
    }
}
