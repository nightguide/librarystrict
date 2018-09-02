package ru.strict.db.repositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.strict.components.TokenInfo;
import ru.strict.db.core.common.GenerateIdType;
import ru.strict.db.core.common.MapperDtoType;
import ru.strict.db.core.connections.CreateConnectionByDataSource;
import ru.strict.db.core.dto.*;
import ru.strict.db.core.mappers.dto.MapperDtoFactory;
import ru.strict.db.core.repositories.IRepositoryExtension;
import ru.strict.db.core.repositories.IRepositoryNamed;
import ru.strict.db.core.repositories.interfaces.IRepositoryJWTToken;
import ru.strict.db.repositories.interfaces.IRepositoryUser;
import ru.strict.utils.UtilDate;
import ru.strict.utils.UtilJWTToken;

import java.util.Date;
import java.util.UUID;

@Repository
public class RepositoryUser
        extends ru.strict.db.spring.repositories.RepositoryUser<UUID, DtoUser>
        implements IRepositoryUser {

    @Autowired
    private ru.strict.db.core.repositories.interfaces.IRepositoryUser<UUID, DtoUser> repositoryUser;

    @Autowired
    private IRepositoryExtension<UUID, DtoProfile> repositoryProfile;

    @Autowired
    private IRepositoryNamed<UUID, DtoRoleuser> repositoryRoleuser;

    @Autowired
    private IRepositoryExtension<UUID, DtoUserOnRole> repositoryUserOnRole;

    public RepositoryUser(CreateConnectionByDataSource connectionSource) {
        super(connectionSource, new MapperDtoFactory().instance(MapperDtoType.USER), GenerateIdType.NONE);
    }

    @Transactional
    @Override
    public DtoUserOnRole<UUID> createUser(DtoUser user, DtoProfile profile) {
        DtoUserOnRole<UUID> result = null;

        try {
            DtoUser<UUID> createdUser = repositoryUser.create(user);
            repositoryProfile.create(profile);
            UUID roleUserId = (UUID) repositoryRoleuser.readByName("USER").getId();
            DtoUserOnRole<UUID> userOnRole = new DtoUserOnRole(UUID.randomUUID(), user.getId(), roleUserId);
            repositoryUserOnRole.create(userOnRole);

            result = userOnRole;
        }catch(Exception ex){
            result = null;
        }

        return result;
    }
}
