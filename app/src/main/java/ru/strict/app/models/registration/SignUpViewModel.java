package ru.strict.app.models.registration;

public class SignUpViewModel {

    private String username;
    private String email;
    private String password;
    private String passwordRetry;
    private String name;
    private String surname;
    private String middlename;

    public SignUpViewModel() {}

    public SignUpViewModel(String username, String email, String password, String passwordRetry,
                           String name, String surname, String middlename) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.passwordRetry = passwordRetry;
        this.name = name;
        this.surname = surname;
        this.middlename = middlename;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPasswordRetry() {
        return passwordRetry;
    }

    public void setPasswordRetry(String passwordRetry) {
        this.passwordRetry = passwordRetry;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getMiddlename() {
        return middlename;
    }

    public void setMiddlename(String middlename) {
        this.middlename = middlename;
    }
}
