@isTest
public class DmlDemoTest {
    @isTest
    private static void dmlDemoTest1(){
        //call the method diractly because it is static
        DmlDemo.dmlInsertDemo_stndObj();

        list<Account> listAcc = [select id, name from account];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);
    }
    @isTest
    private static void dmlDemoUpdate2Test(){
        Account acc = new account();
        acc.Name = 'Salesforce Inc.';
        insert acc;

        DmlDemo.dmlUpdateDemo_2();
        //we want to check if 
        list<contact> listCnt = [select id, name from contact];
        system.assertEquals(1, listCnt.size());
        system.assertEquals('Biden', listCnt[0].Name);

    }
    
}
