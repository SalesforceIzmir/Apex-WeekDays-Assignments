public with sharing class CalculatorCallout {
    //create methods for each operations to access inner class methods. 

    public static Double addition(Double num1, Double num2) {
        //calling ian inner class method
        calculatorServices.CalculatorImplPort calc = new calculatorServices.CalculatorImplPort();
        return calc.doAdd(num1, num2);
    }

    public static Double multiplication(Double num1, Double num2) {
        //calling ian inner class method
        calculatorServices.CalculatorImplPort calc = new calculatorServices.CalculatorImplPort();
        return calc.doMultiply(num1, num2);

    }

        //cubtract two double number
        public static Double subtraction(Double num1, Double num2) {
            calculatorServices.CalculatorImplPort calc = new calculatorServices.CalculatorImplPort();
            return calc.doSubtract(num1, num2);    
        }

        public static Double division(Double num1, Double num2) {
            calculatorServices.CalculatorImplPort calc = new calculatorServices.CalculatorImplPort();
            return calc.doDivide(num1, num2);    
        }


    }