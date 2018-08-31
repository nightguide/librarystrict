package ru.strict.db.entities.types;

/**
 * Возрастные ограничения
 */
public enum AgeLimit {
    ZERO(0),
    SIX(6),
    TWELVE(12),
    SIXTEEN(16),
    EIGHTEEN(18);

    private int agelimit;

    AgeLimit(int agelimit) {
        this.agelimit = agelimit;
    }

    public String getStringAgelimit(){
        return String.format("%s+", agelimit);
    }

    public int getAgelimit() {
        return agelimit;
    }
}
