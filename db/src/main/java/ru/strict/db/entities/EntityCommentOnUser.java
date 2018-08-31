package ru.strict.db.entities;

import java.util.UUID;

public class EntityCommentOnUser extends EntityAppBase {

    private UUID userId;
    private UUID commentId;

    public EntityCommentOnUser() {
        super();
    }

    public EntityCommentOnUser(UUID userId, UUID commentId) {
        super();
        this.userId = userId;
        this.commentId = commentId;
    }

    public EntityCommentOnUser(UUID id, UUID userId, UUID commentId) {
        super(id);
        this.userId = userId;
        this.commentId = commentId;
    }

    public UUID getUserId() {
        return userId;
    }

    public void setUserId(UUID userId) {
        this.userId = userId;
    }

    public UUID getCommentId() {
        return commentId;
    }

    public void setCommentId(UUID commentId) {
        this.commentId = commentId;
    }
}
