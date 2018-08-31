package ru.strict.db.entities;

import java.util.UUID;

public class EntityPublishing extends EntityAppNamed {

    public EntityPublishing() {
        super();
    }

    public EntityPublishing(String caption) {
        super(caption);
    }

    public EntityPublishing(UUID id, String caption) {
        super(id, caption);
    }

}
