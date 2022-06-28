@isTest 
public with sharing class IntegrationAssignmentCalloutMock implements HttpCalloutMock{

    public HttpResponse respond(HttpRequest Request){
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"data":[{"ID Nation": "01000US", "Nation": "United States", "ID Year":2019, "Year":"2019","Population":328239523, "Slug Nation":"united-states"}]}');
        response.setStatusCode(200);
        return response;

    }
    

   
}