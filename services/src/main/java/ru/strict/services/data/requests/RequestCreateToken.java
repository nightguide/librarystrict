package ru.strict.services.data.requests;

import java.util.UUID;

public class RequestCreateToken {

    private UUID userId;
    private UUID roleId;

    public RequestCreateToken() {
    }

    public RequestCreateToken(UUID userId, UUID roleId) {
        this.userId = userId;
        this.roleId = roleId;
    }

    public UUID getUserId() {
        return userId;
    }

    public void setUserId(UUID userId) {
        this.userId = userId;
    }

    public UUID getRoleId() {
        return roleId;
    }

    public void setRoleId(UUID roleId) {
        this.roleId = roleId;
    }
}
