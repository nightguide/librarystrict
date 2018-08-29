package ru.strict.db.repositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.strict.db.core.common.GenerateIdType;
import ru.strict.db.core.common.MapperDtoType;
import ru.strict.db.core.connections.CreateConnectionByDataSource;
import ru.strict.db.core.dto.DtoProfile;
import ru.strict.db.core.dto.DtoUser;
import ru.strict.db.core.entities.EntityProfile;
import ru.strict.db.core.entities.EntityUser;
import ru.strict.db.core.mappers.dto.MapperDtoFactory;
import ru.strict.db.repositories.interfaces.IRepositoryUser;
import ru.strict.db.spring.repositories.RepositorySpringBase;

import java.util.UUID;

public class RepositoryUser
        extends ru.strict.db.spring.repositories.RepositoryUser<UUID, DtoUser>
        implements IRepositoryUser {

    @Autowired
    private RepositorySpringBase<UUID, EntityUser, DtoUser> repositoryUser;

    @Autowired
    private RepositorySpringBase<UUID, EntityProfile, DtoProfile> repositoryProfile;

    public RepositoryUser(CreateConnectionByDataSource connectionSource) {
        super(connectionSource, new MapperDtoFactory().instance(MapperDtoType.USER), GenerateIdType.NONE);
    }

    @Transactional
    @Override
    public void createUser(DtoUser user, DtoProfile profile) {
        repositoryUser.create(user);
        repositoryProfile.create(profile);
    }
}
