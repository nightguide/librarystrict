package ru.strict.app.configs;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import ru.strict.db.core.common.ConnectionByDbType;
import ru.strict.db.core.common.GenerateIdType;
import ru.strict.db.core.common.MapperDtoType;
import ru.strict.db.core.connections.CreateConnectionByDataSource;
import ru.strict.db.core.dto.DtoUser;
import ru.strict.db.core.entities.EntityUser;
import ru.strict.db.core.mappers.dto.MapperDtoFactory;
import ru.strict.db.spring.repositories.RepositorySpringBase;
import ru.strict.db.spring.repositories.RepositoryUser;
import ru.strict.db.spring.repositories.RepositoryUserFillToken;

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
    public RepositorySpringBase<UUID, EntityUser, DtoUser> getRepositoryUser(){
        return new RepositoryUser<UUID, DtoUser>(
                new CreateConnectionByDataSource(getDataSource()),
                new MapperDtoFactory().instance(MapperDtoType.USER),
                GenerateIdType.NONE
        );
    }
}
