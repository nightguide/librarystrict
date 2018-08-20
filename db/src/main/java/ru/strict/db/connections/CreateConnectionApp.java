package ru.strict.db.connections;

import org.springframework.jdbc.datasource.DriverManagerDataSource;
import ru.strict.db.core.common.ConnectionByDbType;
import ru.strict.db.core.connections.CreateConnectionByDataSource;

import javax.sql.DataSource;

public class CreateConnectionApp extends CreateConnectionByDataSource {

    public CreateConnectionApp() {
        super(createConnectionApp());
    }

    private static DataSource createConnectionApp(){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(ConnectionByDbType.POSTGRESQL.getDriver());
        dataSource.setUrl(ConnectionByDbType.POSTGRESQL.getUrl() + "librarystrict");
        dataSource.setUsername("postgres");
        dataSource.setPassword("postgres");
        return dataSource;
    }
}
