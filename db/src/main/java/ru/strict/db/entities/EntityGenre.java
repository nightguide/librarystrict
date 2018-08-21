package ru.strict.db.entities;

import java.util.UUID;

public class EntityGenre extends EntityAppNamed {

    private UUID parentId;

    public EntityGenre() {
        super();
    }

    public EntityGenre(String caption, UUID parentId) {
        super(caption);
        this.parentId = parentId;
    }

    public EntityGenre(UUID id, String caption, UUID parentId) {
        super(id, caption);
        this.parentId = parentId;
    }

    public UUID getParentId() {
        return parentId;
    }

    public void setParentId(UUID parentId) {
        this.parentId = parentId;
    }
}
