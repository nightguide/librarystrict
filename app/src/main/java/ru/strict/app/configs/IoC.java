package ru.strict.app.configs;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import ru.strict.app.interceptors.InterceptorToken;
import ru.strict.db.core.common.ConnectionByDbType;
import ru.strict.db.core.common.GenerateIdType;
import ru.strict.db.core.common.MapperDtoType;
import ru.strict.db.core.connections.CreateConnectionByDataSource;
import ru.strict.db.core.dto.*;
import ru.strict.db.core.mappers.dto.MapperDtoFactory;
import ru.strict.db.core.repositories.IRepositoryExtension;
import ru.strict.db.core.repositories.IRepositoryNamed;
import ru.strict.db.core.repositories.interfaces.IRepositoryJWTToken;
import ru.strict.db.core.repositories.interfaces.IRepositoryUser;
import ru.strict.db.spring.repositories.*;
import ru.strict.services.ServiceToken;
import ru.strict.services.interfaces.IServiceToken;

import javax.sql.DataSource;
import java.util.UUID;

@Configuration
@ComponentScan("ru.strict.*")
public class IoC {

    @Bean
    public DataSource getDataSource(){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(ConnectionByDbType.POSTGRESQL.getDriver());
        dataSource.setUrl(ConnectionByDbType.POSTGRESQL.getUrl() + "librarystrict");
        dataSource.setUsername("postgres");
        dataSource.setPassword("postgres");
        return dataSource;
    }

    @Bean
    public CreateConnectionByDataSource getConnectionByDataSource(){
        return new CreateConnectionByDataSource(getDataSource());
    }

    @Bean
    public DataSourceTransactionManager transactionManager() {
        final DataSourceTransactionManager txManager = new DataSourceTransactionManager();
        txManager.setDataSource(getDataSource());

        return txManager;
    }

    @Bean
    public IRepositoryUser<UUID, DtoUser<UUID>> getRepositoryUser() {
        return new ru.strict.db.spring.repositories.RepositoryUser(
                new CreateConnectionByDataSource(getDataSource()),
                new MapperDtoFactory().instance(MapperDtoType.USER),
                GenerateIdType.NONE
        );
    }

    @Bean
    public IRepositoryExtension<UUID, DtoProfile<UUID>> getRepositoryProfile(){
        return new RepositoryProfile(
                new CreateConnectionByDataSource(getDataSource()),
                GenerateIdType.NONE
        );
    }

    @Bean
    public IRepositoryNamed<UUID, DtoRoleuser<UUID>> getRepositoryRoleuser() {
        return new RepositoryRoleuser(
                new CreateConnectionByDataSource(getDataSource()),
                GenerateIdType.NONE
        );
    }

    @Bean
    public IRepositoryExtension<UUID, DtoUserOnRole<UUID>> getRepositoryUserOnRole(){
        return new RepositoryUserOnRole(
                new CreateConnectionByDataSource(getDataSource()),
                GenerateIdType.NONE
        );
    }

    @Bean
    public IRepositoryJWTToken<UUID> getRepositoryJWTToken() {
        return new RepositoryJWTToken<>(
                new CreateConnectionByDataSource(getDataSource()),
                GenerateIdType.NONE
        );
    }

    @Bean
    public InterceptorToken getTokenInterceptor(){
        return new InterceptorToken(getServiceToken());
    }

    @Bean
    public IServiceToken getServiceToken(){
        return new ServiceToken(getRepositoryJWTToken());
    }
}
