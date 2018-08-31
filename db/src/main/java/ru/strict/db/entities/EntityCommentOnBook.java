package ru.strict.db.entities;

import java.util.UUID;

public class EntityCommentOnBook extends EntityAppBase {

    private UUID bookId;
    private UUID commentId;

    public EntityCommentOnBook() {
        super();
    }

    public EntityCommentOnBook(UUID bookId, UUID commentId) {
        super();
        this.bookId = bookId;
        this.commentId = commentId;
    }

    public EntityCommentOnBook(UUID id, UUID bookId, UUID commentId) {
        super(id);
        this.bookId = bookId;
        this.commentId = commentId;
    }

    public UUID getBookId() {
        return bookId;
    }

    public void setBookId(UUID bookId) {
        this.bookId = bookId;
    }

    public UUID getCommentId() {
        return commentId;
    }

    public void setCommentId(UUID commentId) {
        this.commentId = commentId;
    }
}
