package ru.strict.db.entities;

import java.util.UUID;

public class EntityAuthor extends EntityAppBase {

    private String name;
    private String lastname;
    private String middlename;
    private UUID countryId;

    public EntityAuthor() {
        super();
    }

    public EntityAuthor(String name, String lastname, String middlename, UUID countryId) {
        super();
        this.name = name;
        this.lastname = lastname;
        this.middlename = middlename;
        this.countryId = countryId;
    }

    public EntityAuthor(UUID id, String name, String lastname, String middlename, UUID countryId) {
        super(id);
        this.name = name;
        this.lastname = lastname;
        this.middlename = middlename;
        this.countryId = countryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getMiddlename() {
        return middlename;
    }

    public void setMiddlename(String middlename) {
        this.middlename = middlename;
    }

    public UUID getCountryId() {
        return countryId;
    }

    public void setCountryId(UUID countryId) {
        this.countryId = countryId;
    }
}
