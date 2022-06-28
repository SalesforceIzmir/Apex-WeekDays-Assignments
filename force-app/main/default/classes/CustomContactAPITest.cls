@isTest
public with sharing class CustomContactAPITest {
    @isTest
    private static void getContactTest() {
        Account a = new account();
        a.Name = 'AccTestName';
        insert a;

        Contact c = new contact();
        c.accountid = a.id;
        c.LastName = 'test contact';
        c.Email = 'cc@test.com';
        insert c;

        RestRequest request = new RestRequest();
        request.requestURI = '/ContactCustom/'+c.Id;
        request.httpMethod = 'GET';

        RestContext.request = request;

        Test.startTest();
        Contact cReturn = CustomContactAPI.getContactId();
        Test.stopTest();

        System.debug(cReturn.Name + c.Name );
        system.assertEquals(cReturn.Name, c.lastName);
    }
}