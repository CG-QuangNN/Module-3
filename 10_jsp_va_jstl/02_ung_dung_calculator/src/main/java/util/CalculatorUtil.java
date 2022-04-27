package util;

public class CalculatorUtil {
    public static Double calculate(Double operant1, Double operant2, String operators) throws Exception {
        if ("add".equals(operators)) {
            return operant1 + operant2;
        } else if ("minus".equals(operators)) {
            return operant1 - operant2;
        } else if ("mul".equals(operators)) {
            return operant1 * operant2;
        } else {
            if(operant2 == 0){
                throw new Exception("You might try to div to 0, try another number");
            }
            return operant1 / operant2;
        }
    }
}
