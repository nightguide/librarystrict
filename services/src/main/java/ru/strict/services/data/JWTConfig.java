package ru.strict.services.data;

import ru.strict.file.PropertiesResourceFileReader;

public class JWTConfig extends PropertiesResourceFileReader {

    private static JWTConfig instance;

    private String issuer;
    private String subject;
    private String type;
    private int expireDaysAccess;
    private int expireDaysRefresh;

    private JWTConfig() {
        super("jwt");
        issuer = readValue("issuer");
        subject = readValue("subject");
        type = readValue("type");
        expireDaysAccess = Integer.parseInt(readValue("expireDaysAccess"));
        expireDaysRefresh = Integer.parseInt(readValue("expireDaysRefresh"));
    }

    public static JWTConfig instance(){
        if(instance == null){
            instance = new JWTConfig();
        }
        return instance;
    }

    public String getIssuer() {
        return issuer;
    }

    public String getSubject() {
        return subject;
    }

    public String getType() {
        return type;
    }

    public int getExpireDaysAccess() {
        return expireDaysAccess;
    }

    public int getExpireDaysRefresh() {
        return expireDaysRefresh;
    }

    @Override
    protected Class getThisClass() {
        return this.getClass();
    }
}
