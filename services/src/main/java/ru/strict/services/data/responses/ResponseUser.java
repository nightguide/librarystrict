package ru.strict.services.data.responses;

public class ResponseUser {
    /**
     * Логин пользователя
     */
    private String username;
    /**
     * Адрес электронной почты
     */
    private String email;
    /**
     * Пользователь заблокирован
     */
    private boolean isBlocked;
    /**
     * Пользователь удален
     */
    private boolean isDeleted;
    /**
     * Адрес электронной почты подтвержден
     */
    private boolean isConfirmEmail;

    public ResponseUser(String username, String email, boolean isBlocked, boolean isDeleted, boolean isConfirmEmail) {
        this.username = username;
        this.email = email;
        this.isBlocked = isBlocked;
        this.isDeleted = isDeleted;
        this.isConfirmEmail = isConfirmEmail;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public boolean isBlocked() {
        return isBlocked;
    }

    public boolean isDeleted() {
        return isDeleted;
    }

    public boolean isConfirmEmail() {
        return isConfirmEmail;
    }
}
