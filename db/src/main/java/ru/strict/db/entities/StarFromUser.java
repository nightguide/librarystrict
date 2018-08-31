package ru.strict.db.entities;

import ru.strict.db.entities.types.StarValue;

import java.util.UUID;

public class StarFromUser extends EntityAppBase {

    private UUID bookId;
    private StarValue value;

    public StarFromUser() {
        super();
    }

    public StarFromUser(UUID bookId, UUID userId, StarValue value) {
        super();
        this.bookId = bookId;
        this.value = value;
    }

    public StarFromUser(UUID id, UUID bookId, UUID userId, StarValue value) {
        super(id);
        this.bookId = bookId;
        this.value = value;
    }

    public UUID getBookId() {
        return bookId;
    }

    public void setBookId(UUID bookId) {
        this.bookId = bookId;
    }

    public StarValue getValue() {
        return value;
    }

    public void setValue(StarValue value) {
        this.value = value;
    }

}
