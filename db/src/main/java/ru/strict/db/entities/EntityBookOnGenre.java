package ru.strict.db.entities;

import java.util.UUID;

public class EntityBookOnGenre extends EntityAppBase {

    private UUID bookId;
    private UUID genreId;

    public EntityBookOnGenre() {
        super();
    }

    public EntityBookOnGenre(UUID bookId, UUID genreId) {
        super();
        this.bookId = bookId;
        this.genreId = genreId;
    }

    public EntityBookOnGenre(UUID id, UUID bookId, UUID genreId) {
        super(id);
        this.bookId = bookId;
        this.genreId = genreId;
    }

    public UUID getBookId() {
        return bookId;
    }

    public void setBookId(UUID bookId) {
        this.bookId = bookId;
    }

    public UUID getGenreId() {
        return genreId;
    }

    public void setGenreId(UUID genreId) {
        this.genreId = genreId;
    }
}
