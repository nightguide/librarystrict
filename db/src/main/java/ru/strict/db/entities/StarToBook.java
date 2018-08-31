package ru.strict.db.entities;

import ru.strict.db.entities.types.StarValue;

import java.util.UUID;

public class StarToBook extends EntityAppBase {

    private UUID userId;
    private StarValue value;

    public StarToBook() {
        super();
    }

    public StarToBook(UUID userId, StarValue value) {
        super();
        this.userId = userId;
        this.value = value;
    }

    public StarToBook(UUID id, UUID userId, StarValue value) {
        super(id);
        this.userId = userId;
        this.value = value;
    }

    public UUID getUserId() {
        return userId;
    }

    public void setUserId(UUID userId) {
        this.userId = userId;
    }

    public StarValue getValue() {
        return value;
    }

    public void setValue(StarValue value) {
        this.value = value;
    }

}
