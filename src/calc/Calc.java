package calc;

/**
 * Внешний класс для вычислений
 */
public class Calc {
    /**
     * Количество значений
     */
    int count = 0;
    /**
     * Сумма значений
     */
    double sum = 0;

    public static int doSomeCalculations() {
        return 234 * 100;
    }

    public void addValue(double value) {
        count++;
        sum += value;
    }


    public double calcAverage() {
        return sum / count;
    }
}
