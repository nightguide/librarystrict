package ru.strict.db.spring.security;

import ru.strict.db.core.common.GenerateIdType;
import ru.strict.db.core.connections.CreateConnectionByDataSource;
import ru.strict.db.core.dto.DtoProfileInfo;
import ru.strict.db.core.dto.DtoRoleuser;
import ru.strict.db.core.dto.DtoUserOnRole;
import ru.strict.db.core.entities.EntityProfileInfo;
import ru.strict.db.core.entities.EntityUserOnRole;
import ru.strict.db.core.mappers.dto.MapperDtoProfile;
import ru.strict.db.core.mappers.dto.MapperDtoRoleuser;
import ru.strict.db.core.repositories.IRepository;
import ru.strict.db.core.requests.DbRequests;
import ru.strict.db.core.requests.DbWhere;
import ru.strict.db.spring.repositories.*;

import java.util.*;

public class RepositoryUserSecurity<ID>
        extends RepositoryNamedBase<ID, EntityUserSecurity<ID>, DtoUserSecurity<ID>> {

    private static final String[] COLUMNS_NAME = new String[] {"username", "passwordencode", "email",
            "isBlocked", "isDeleted", "isConfirmEmail"};

    public RepositoryUserSecurity(CreateConnectionByDataSource connectionSource, GenerateIdType generateIdType) {
        super("userx", COLUMNS_NAME, connectionSource,
                new MapperDtoUserSecurity<ID>(new MapperDtoRoleuser(), new MapperDtoProfile()),
                new MapperSqlUserSecurity<ID>(COLUMNS_NAME),
                generateIdType);
    }

    @Override
    protected Map<Integer, Object> getValueByColumn(EntityUserSecurity<ID> entity){
        Map<Integer, Object> valuesByColumn = new LinkedHashMap();
        valuesByColumn.put(0, entity.getUsername());
        valuesByColumn.put(1, entity.getPasswordEncode());
        valuesByColumn.put(2, entity.getEmail());
        valuesByColumn.put(3, entity.isBlocked());
        valuesByColumn.put(4, entity.isDeleted());
        valuesByColumn.put(5, entity.isConfirmEmail());
        return valuesByColumn;
    }

    @Override
    protected DtoUserSecurity<ID> fill(DtoUserSecurity<ID> dto){
        // Добавление ролей пользователей
        RepositorySpringBase<ID, EntityUserOnRole<ID>, DtoUserOnRole<ID>> repositoryUserOnRole =
                new RepositoryUserOnRole(getConnectionSource(), GenerateIdType.NONE);
        DbRequests requests = new DbRequests(repositoryUserOnRole.getTableName(), true);
        requests.add(new DbWhere(repositoryUserOnRole.getTableName(), "userx_id", dto.getId(), "="));
        List<DtoUserOnRole<ID>> userOnRoles = repositoryUserOnRole.readAll(requests);

        IRepository<ID, DtoRoleuser<ID>> repositoryRoleuser = new RepositoryRoleuser<>(getConnectionSource(), GenerateIdType.NONE);
        Collection<DtoRoleuser<ID>> roleusers = new LinkedList<>();
        for(DtoUserOnRole<ID> userOnRole : userOnRoles) {
            roleusers.add(repositoryRoleuser.read(userOnRole.getRoleId()));
        }
        dto.setRoles(roleusers);

        // Добавления профиля
        RepositorySpringBase<ID, EntityProfileInfo<ID>, DtoProfileInfo<ID>> repositoryProfile =
                new RepositoryProfileInfo<>(getConnectionSource(), GenerateIdType.NONE);
        requests = new DbRequests(repositoryProfile.getTableName(), true);
        requests.add(new DbWhere(repositoryProfile.getTableName(), "userx_id", dto.getId(), "="));
        dto.setProfile(repositoryProfile.readAll(requests).stream().findFirst().orElse(null));
        return dto;
    }

    @Override
    protected String getColumnWithName() {
        return COLUMNS_NAME[0];
    }

    @Override
    protected Class getThisClass() {
        return this.getClass();
    }
}
