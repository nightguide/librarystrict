package ru.strict.db.entities;

import ru.strict.db.core.entities.EntityNamed;

import java.util.UUID;

public abstract class EntityAppNamed extends EntityNamed<UUID> {

    public EntityAppNamed() {
        super();
    }

    public EntityAppNamed(String caption) {
        super(caption);
    }

    public EntityAppNamed(UUID id, String caption) {
        super(id, caption);
    }

}
