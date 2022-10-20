package validation;

import exceptions.InvalidParameterException;

public class Validation {
    double xVal, yVal, rVal;


    public Double[] checkParameter(String x, String y, String r){
        try {
            xVal = Double.parseDouble(x);
            if (xVal < -5 || xVal > 5) {
                throw new InvalidParameterException("X должен быть от -5 до 5!");
            }
            yVal = Double.parseDouble(y);
            if (yVal < -4 || yVal > 4) {
                throw new InvalidParameterException("Y должен быть от -4 до 4!");
            }
            rVal = Double.parseDouble(r);
            if (rVal < 1 || rVal > 3) {
                throw new InvalidParameterException("R должен быть от 1 до 3");
            }
        } catch (NumberFormatException exception) {
            throw new InvalidParameterException("Некорректный формат параметров!");
        }
        return new Double[]{xVal,yVal,rVal};
    }

    public boolean checkNull(String x, String y, String r) {
        return (x != null && y != null && r != null) && (!x.trim().equals("") && !y.trim().equals("") && !r.trim().equals(""));
    }
    public String checkArea(double x, double y, double r) {
        if (x >= 0 && y >= 0 && y <= r && x <= r/2) {
            return "true";
        }
        if (y <= 0 && x >= 0 && y >= 2*x + (r / 2)) {
            return "true";
        }
        if (x <= 0 && y <= 0 && Math.pow(x, 2) + Math.pow(y, 2) <= Math.pow( r, 2)) {
            return "true";
        }
        return "false";
    }
}
