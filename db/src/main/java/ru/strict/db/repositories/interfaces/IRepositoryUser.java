package ru.strict.db.repositories.interfaces;

import org.springframework.transaction.annotation.Transactional;
import ru.strict.db.core.dto.DtoProfile;
import ru.strict.db.core.dto.DtoUser;
import ru.strict.db.core.repositories.IRepositoryNamed;

import java.util.UUID;

public interface IRepositoryUser extends IRepositoryNamed<UUID, DtoUser> {

    @Transactional
    void createUser(DtoUser user, DtoProfile profile);
}
