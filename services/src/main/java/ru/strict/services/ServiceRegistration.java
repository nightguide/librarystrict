package ru.strict.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.strict.db.core.dto.DtoProfile;
import ru.strict.db.core.dto.DtoUser;
import ru.strict.db.repositories.interfaces.IRepositoryUser;
import ru.strict.services.data.requests.RequestCreateUser;
import ru.strict.services.interfaces.IServiceRegistration;
import ru.strict.utils.UtilData;
import ru.strict.utils.UtilHash;

import java.util.UUID;

@Service
public class ServiceRegistration implements IServiceRegistration {

    @Autowired
    private IRepositoryUser repositoryUser;

    @Override
    public boolean createUser(RequestCreateUser request) {
        boolean result = false;

        if(request != null){
            if(request.getPassword().equals(request.getPasswordRetry())){
                DtoUser<UUID> user = new DtoUser<>();
                user.setId(UUID.randomUUID());
                user.setUsername(request.getUsername());
                user.setPasswordEncode(UtilHash.hashMd5(request.getPassword()));
                user.setEmail(request.getEmail());

                DtoProfile<UUID> profile = new DtoProfile<>();
                profile.setId(UUID.randomUUID());
                profile.setName(UtilData.convertStringFromISOToUTF8(request.getName()));
                profile.setSurname(UtilData.convertStringFromISOToUTF8(request.getSurname()));
                profile.setMiddlename(UtilData.convertStringFromISOToUTF8(request.getMiddlename()));
                profile.setUserId(user.getId());

                repositoryUser.createUser(user, profile);

                result = true;
            }
        }

        return result;
    }
}
