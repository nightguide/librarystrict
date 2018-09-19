package ru.strict.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.strict.db.core.dto.DtoUser;
import ru.strict.db.core.repositories.interfaces.IRepositoryUser;
import ru.strict.services.data.responses.ResponseUser;
import ru.strict.services.interfaces.IServiceUser;

import java.util.UUID;

@Service
public class ServiceUser implements IServiceUser {

    @Autowired
    private IRepositoryUser<UUID, DtoUser<UUID>> repositoryUser;

    @Override
    public ResponseUser readUserByName(String username) {
        ResponseUser result = null;
        DtoUser user = repositoryUser.readByName(username);
        if(user != null){
            result = new ResponseUser(user.getUsername(), user.getEmail(),
                    user.isBlocked(), user.isDeleted(), user.isConfirmEmail());
        }

        return result;
    }

    @Override
    public ResponseUser readUserByEmail(String email) {
        ResponseUser result = null;
        DtoUser user = repositoryUser.readByEmail(email);
        if(user != null){
            result = new ResponseUser(user.getUsername(), user.getEmail(),
                    user.isBlocked(), user.isDeleted(), user.isConfirmEmail());
        }

        return result;
    }
}
