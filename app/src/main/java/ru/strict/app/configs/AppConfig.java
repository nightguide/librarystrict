package ru.strict.app.configs;

import ru.strict.file.data.AppEnvironment;

public class AppConfig extends ru.strict.file.AppConfig {

    private static AppConfig instance;

    private AppConfig(AppEnvironment environment) {
        super(environment);
    }

    public static AppConfig instance(){
        return instance;
    }

    public static AppConfig initialize(AppEnvironment environment){
        instance = new AppConfig(environment);
        return instance();
    }
}
