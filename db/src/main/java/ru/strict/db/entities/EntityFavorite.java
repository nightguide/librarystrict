package ru.strict.db.entities;

import java.util.UUID;

public class EntityFavorite extends EntityAppBase {

    private UUID userId;
    private UUID bookId;

    public EntityFavorite() {
        super();
    }

    public EntityFavorite(UUID userId, UUID bookId) {
        super();
        this.userId = userId;
        this.bookId = bookId;
    }

    public EntityFavorite(UUID id, UUID userId, UUID bookId) {
        super(id);
        this.userId = userId;
        this.bookId = bookId;
    }

    public UUID getUserId() {
        return userId;
    }

    public void setUserId(UUID userId) {
        this.userId = userId;
    }

    public UUID getBookId() {
        return bookId;
    }

    public void setBookId(UUID bookId) {
        this.bookId = bookId;
    }
}
