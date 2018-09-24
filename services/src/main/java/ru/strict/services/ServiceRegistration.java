package ru.strict.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.strict.components.LoggerWrapper;
import ru.strict.db.core.dto.DtoProfile;
import ru.strict.db.core.dto.DtoUser;
import ru.strict.db.core.dto.DtoUserOnRole;
import ru.strict.db.repositories.interfaces.IRepositoryUser;
import ru.strict.services.data.requests.RequestCreateUser;
import ru.strict.services.interfaces.IServiceRegistration;
import ru.strict.utils.UtilData;
import ru.strict.utils.UtilHash;

import java.util.UUID;

@Service
public class ServiceRegistration implements IServiceRegistration {

    private static final LoggerWrapper LOGGER = new LoggerWrapper(ServiceRegistration.class);

    @Autowired
    private IRepositoryUser repositoryUser;

    @Override
    public boolean createUser(RequestCreateUser request) {
        LOGGER.info("start an user create");
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

                DtoUserOnRole<UUID> createdUser = repositoryUser.createUser(user, profile);

                if(createdUser != null) {
                    LOGGER.info("user is created with ID = '%s' and ROLE = '%s'",
                            createdUser.getUserId().toString(), createdUser.getRoleId().toString());
                    result = true;
                }else{
                    LOGGER.error("user not created");
                }
            }
        }

        LOGGER.info("complete an user create");

        return result;
    }
}
