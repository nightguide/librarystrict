package ru.strict.db.entities;

import ru.strict.db.core.entities.EntityBase;

import java.util.UUID;

public abstract class EntityAppBase extends EntityBase<UUID> {

    public EntityAppBase() {
        super();
    }

    public EntityAppBase(UUID id) {
        super(id);
    }
}
