package ru.strict.file;

import ru.strict.file.data.AppEnvironment;

public class AppConfig extends PropertiesFileReader {

    private AppEnvironment environment;

    public AppConfig() {
        super("app", AppEnvironment.DEVELOPMENT.getValue());
        environment = AppEnvironment.DEVELOPMENT;
    }

    public AppConfig(String appConfigFileName) {
        super(appConfigFileName, AppEnvironment.DEVELOPMENT.getValue());
        environment = AppEnvironment.DEVELOPMENT;
    }

    public AppConfig(AppEnvironment environment) {
        super("app", environment.getValue());
        this.environment = environment;
    }

    public AppConfig(String appConfigFileName, AppEnvironment environment) {
        super(appConfigFileName, environment.getValue());
        this.environment = environment;
    }

    public String getEnvironmentFileName(){
        return getSuffixFileName();
    }

    public AppEnvironment getEnvironment() {
        return environment;
    }
}
