package ru.strict.db.entities;

import ru.strict.db.entities.types.StarValue;

import java.util.UUID;

public class EntityStar extends EntityAppBase {

    private UUID bookId;
    private UUID userId;
    private StarValue value;

    public EntityStar() {
        super();
    }

    public EntityStar(UUID bookId, UUID userId, StarValue value) {
        super();
        this.bookId = bookId;
        this.userId = userId;
        this.value = value;
    }

    public EntityStar(UUID id, UUID bookId, UUID userId, StarValue value) {
        super(id);
        this.bookId = bookId;
        this.userId = userId;
        this.value = value;
    }

    public UUID getBookId() {
        return bookId;
    }

    public void setBookId(UUID bookId) {
        this.bookId = bookId;
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
