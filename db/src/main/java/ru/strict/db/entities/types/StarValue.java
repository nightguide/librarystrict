package ru.strict.db.entities.types;

public enum StarValue {
    ZERO(0),
    ZERO_FIVE(0.5),
    ONE(1),
    ONE_FIVE(1.5),
    TWO(2),
    TWO_FIVE(2.5),
    THREE(3),
    THREE_FIVE(3.5),
    FOUR(4),
    FOUR_FIVE(4.5),
    FIVE(5);

    private double starValue;

    StarValue(double starValue) {
        this.starValue = starValue;
    }

    public double getStarValue() {
        return starValue;
    }
}
