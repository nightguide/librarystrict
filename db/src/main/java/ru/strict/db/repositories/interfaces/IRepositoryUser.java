package ru.strict.db.repositories.interfaces;

import org.springframework.transaction.annotation.Transactional;
import ru.strict.db.core.dto.DtoProfile;
import ru.strict.db.core.dto.DtoUser;
import ru.strict.db.core.dto.DtoUserOnRole;
import ru.strict.db.core.repositories.IRepositoryNamed;

import java.util.UUID;

public interface IRepositoryUser extends IRepositoryNamed<UUID, DtoUser<UUID>> {

    @Transactional
    DtoUserOnRole<UUID> createUser(DtoUser<UUID> user, DtoProfile<UUID> profile);
}
