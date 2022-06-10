@isTest 
public with sharing class IntegrationAssignmentTestClass {
    @isTest 
    private  static void testPopulation(){
        IntegrationAssignmentCalloutMock Assignment = new IntegrationAssignmentCalloutMock();
        Test.setMock(HttpCalloutMock.class, Assignment);

        Test.startTest();
        HttpResponse response = IntegrationAssignment.Population();
        Test.stopTest();
        System.assertEquals(200, response.getStatusCode());
    }
}
