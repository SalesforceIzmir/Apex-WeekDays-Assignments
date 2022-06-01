@isTest
public class CalculatorTest {
    @isTest
    private static void testMessage(){
        //Just call the methods, like we do it from anonymous file
        Calculator.welcomeMessage();
        Calculator.printNewMessage('Message m test class');
        Calculator.printNewMessage2('msg', date.today());
    }
    @isTest 
    private static void addTest(){
        integer i = 10;
        integer j = 15;
        integer callAdd = Calculator.add(i,j);
        System.assertEquals(25, callAdd);
    }
    @isTest
    private static void addTest2(){
        integer calcAdd = Calculator.add(10, 15, 20);
        system.assertEquals(45, calcAdd);
    }
    @isTest
    public static void addTest3(){
        list<integer> listInt = new list<integer>{15,15,15};
        integer calcAdd = Calculator.add(listInt);
        system.assertEquals(45, calcAdd);

    }
}
