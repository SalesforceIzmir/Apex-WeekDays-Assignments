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
}