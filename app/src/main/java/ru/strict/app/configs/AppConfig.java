package ru.strict.app.configs;

import ru.strict.file.data.AppEnvironment;

public class AppConfig extends ru.strict.file.AppConfig {

    private static AppConfig instance;

    private String databaseHost;
    private String databasePort;
    private String databaseName;
    private String databaseUsername;
    private String databasePassword;

    private AppConfig(AppEnvironment environment) {
        super(environment);
        databaseHost = readValue("database.host");
        databasePort = readValue("database.port");
        databaseName = readValue("database.name");
        databaseUsername = readValue("database.username");
        databasePassword = readValue("database.password");
    }

    public static AppConfig instance(){
        return instance;
    }

    public static AppConfig initialize(AppEnvironment environment){
        instance = new AppConfig(environment);
        return instance();
    }

    public String getDatabaseHost() {
        return databaseHost;
    }

    public String getDatabasePort() {
        return databasePort;
    }

    public String getDatabaseName() {
        return databaseName;
    }

    public String getDatabaseUsername() {
        return databaseUsername;
    }

    public String getDatabasePassword() {
        return databasePassword;
    }
}
