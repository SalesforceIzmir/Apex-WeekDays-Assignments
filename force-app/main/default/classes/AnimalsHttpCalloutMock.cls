@isTest 
public  class AnimalsHttpCalloutMock implements HttpCalloutMock{
    public HttpResponse respond(HttpRequest request){
        
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'Application/JSON');
        response.setBody('{"animals":["monkey", "donkey", "cat", "dog"]}');
        response.setStatusCode(200);
        return response;

    }
    
   
}
