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
    private IRepositoryExtension<UUID, DtoUser> repositoryUser;

    @Autowired
    private IRepositoryExtension<UUID, DtoProfile> repositoryProfile;

    @Autowired
    private IRepositoryNamed<UUID, DtoRoleuser> repositoryRoleuser;

    @Autowired
    private IRepositoryExtension<UUID, DtoUserOnRole> repositoryUserOnRole;

    @Autowired
    private IRepositoryJWTToken<UUID> repositoryToken;

    public RepositoryUser(CreateConnectionByDataSource connectionSource) {
        super(connectionSource, new MapperDtoFactory().instance(MapperDtoType.USER), GenerateIdType.NONE);
    }

    @Transactional
    @Override
    public DtoToken<UUID> createUser(DtoUser user, DtoProfile profile) {
        DtoToken<UUID> result = null;

        try {
            repositoryUser.create(user);
            repositoryProfile.create(profile);
            UUID roleUserId = (UUID) repositoryRoleuser.readByName("USER").getId();
            DtoUserOnRole userOnRole = new DtoUserOnRole(UUID.randomUUID(), user.getId(), roleUserId);
            repositoryUserOnRole.create(userOnRole);

            Date currentDate = new Date();

            DtoJWTUserToken<UUID> token = new DtoJWTUserToken();
            token.setId(UUID.randomUUID());
            token.setRefreshToken(UUID.randomUUID().toString());
            token.setIssuedAt(currentDate);
            token.setExpireTimeRefresh(UtilDate.addMonthsToDate(currentDate, 3));
            token.setExpireTimeAccess(UtilDate.addDaysToDate(currentDate, 3));
            token.setRoleUserId(roleUserId);
            token.setUserId((UUID)user.getId());
            token.setIssuer("LibraryStrict");
            token.setSubject("USER");
            token.setType("JWT");
            TokenInfo accessTokenInfo = UtilJWTToken.createToken(token.getId(), token.getExpireTimeAccess(),
                    token.getIssuedAt(), token.getIssuer(), token.getSubject(),
                    token.getNotBefore(), token.getAudience());

            token.setAccessToken(accessTokenInfo.getToken());
            token.setSecret(accessTokenInfo.getSecret());
            token.setAlgorithm(accessTokenInfo.getAlgorithm());

            repositoryToken.create(token);
            result = token;
        }catch(Exception ex){}

        return result;
    }
}
