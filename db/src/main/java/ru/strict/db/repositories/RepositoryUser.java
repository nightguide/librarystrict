package ru.strict.db.repositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.strict.db.core.common.GenerateIdType;
import ru.strict.db.core.common.MapperDtoType;
import ru.strict.db.core.connections.CreateConnectionByDataSource;
import ru.strict.db.core.dto.DtoProfile;
import ru.strict.db.core.dto.DtoUser;
import ru.strict.db.core.mappers.dto.MapperDtoFactory;
import ru.strict.db.core.repositories.IRepositoryExtension;
import ru.strict.db.repositories.interfaces.IRepositoryUser;

import java.util.UUID;

@Repository
public class RepositoryUser
        extends ru.strict.db.spring.repositories.RepositoryUser<UUID, DtoUser>
        implements IRepositoryUser {

    @Autowired
    private IRepositoryExtension<UUID, DtoUser> repositoryUser;

    @Autowired
    private IRepositoryExtension<UUID, DtoProfile> repositoryProfile;

    public RepositoryUser(CreateConnectionByDataSource connectionSource) {
        super(connectionSource, new MapperDtoFactory().instance(MapperDtoType.USER), GenerateIdType.NONE);
    }

    @Transactional
    @Override
    public boolean createUser(DtoUser user, DtoProfile profile) {
        boolean result = false;

        try {
            repositoryUser.create(user);
            repositoryProfile.create(profile);
            result = true;
        }catch(Exception ex){}

        return result;
    }
}
