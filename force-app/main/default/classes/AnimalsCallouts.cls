// public with sharing class AnimalsCallouts {
//     public static void fetchAnimals(){
//         //1. prepare request
//         HttpRequest request = new HttpRequest();
//         request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
//         request.setMethod('GET'); //USE UPPERCASE-->'GET'

//         //2.prepare http
//         Http http = new http(); //new instance create ettik burda.

//         //3.send request, receive response
//         httpResponse response = http.send(request);
//         system.debug('status ' + response.getStatus());
//         system.debug('status code ' + response.getStatusCode());

//         //4.process the response 
//         //bu dort steps are fixed. 
//         if(response.getStatusCode() == 200){ //burda basarili olup olmadigimizi olcmek icin 200 u kullaniyoruz.
//             string animalsJSON = response.getBody();
//             system.debug(animalsJSON);

//             //Object ob = JSON.deserializeUntyped(animalsJSON);
//             Map<string, object> results = (Map<string, object>)JSON.deserializeUntyped(animalsJSON);
//             system.debug('results = ' + results);

//             Object ob1 = results.get('animals');
//             List<object> animals = (List<object>) ob1;
//             system.debug('=======object animal list START======');
//             for(Object a : animals){
//                 system.debug(a);
//             }
//             system.debug('========object animals list END=======');

//         }else{
//             //NOT SUCCESS.
//             system.debug('something went wrong people');
//         }
          
//     }
//     public static HttpResponse fetchAnimals2() {
//         //1. prepare request
//         HttpRequest request = new HttpRequest();
//         request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
//         request.setMethod('GET');

//         //2. prepare http
//         Http http = new http();

//         //3. send request, receive response
//         HttpResponse response = http.send(request);
//         system.debug('status ' + response.getStatus());
//         system.debug('status code ' + response.getStatusCode());
//         //4. process the response
//         if (response.getStatusCode() == 200) {
//             AnimalsCalloutResponse animalResponse = 
//                 (AnimalsCalloutResponse)JSON.deserialize(response.getBody(), AnimalsCalloutResponse.class);
//             system.debug('====STRING animals list START ======');
//             list<string> allAnimals = animalResponse.animals;
//             for (string a : allAnimals) {
//                 system.debug(a);
//             }
//             system.debug('====STRING animals list END ======');

//         } else {
//             system.debug('something went wrong people');
//         }

//         return response;
//     }
// }

public with sharing class AnimalsCallouts {

    private static string GET_ANIMALS_ENDPOINT = CalloutInfo__mdt.getInstance('GET_ANIMALS').Endpoint__c;
    private static string POST_ANIMALS_ENDPOINT = CalloutInfo__mdt.getInstance('POST_ANIMALS').Endpoint__c;
    private static string HTTP_GET = 'GET';
    private static string HTTP_POST = 'POST';


    public static void fetchAnimals() {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(GET_ANIMALS_ENDPOINTS);
        request.setMethod(HTTP_GET);

        //2. prepare http
        Http http = new http();

        //3. send request, receive response. It will return us a response.
        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());
        //4. process the response
        if (response.getStatusCode() == 200) {
            string animalsJSON = response.getBody();
            system.debug(animalsJSON);

            //Object ob = JSON.deserializeUntyped(animalsJSON);
            //Map<string, object> results = (Map<string, object>)ob;

            Map<string, object> results = (Map<string, object>)JSON.deserializeUntyped(animalsJSON);
            system.debug('results = ' + results);

            Object ob1 = results.get('animals');
            List<object> animals = (List<object>) ob1;
            system.debug('======object animals list START=====');
            for (object a : animals) {
                system.debug(a);
            }
            system.debug('======object animals list END=====');
        } else {
            system.debug('something went wrong people');
        }
    }

    public static HttpResponse fetchAnimals2() {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(POST_ANIMALS_ENDPOINT);
        request.setMethod(HTTP_POST);


        //2. prepare http
        Http http = new http();

        //3. send request, receive response
        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());
        //4. process the response
        if (response.getStatusCode() == 200) {
            AnimalsCalloutResponse animalResponse = 
                (AnimalsCalloutResponse)JSON.deserialize(response.getBody(), AnimalsCalloutResponse.class);
            system.debug('====STRING animals list START ======');
            list<string> allAnimals = animalResponse.animals;
            for (string a : allAnimals) {
                system.debug(a);
            }
            system.debug('====STRING animals list END ======');

        } else {
            string result = 'failed';
            system.debug('something went wrong people');
        }

        return response;
    }
    public static HttpResponse postAnimal() {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        string jsonReq = '{"name":"fluffykins"}';
        request.setBody(jsonReq);
        request.setHeader('Content-Type', 'application/json');

        //2. prepare http
        Http http = new http();

        //3. send request, receive response
        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());
        //4. process the response
        if (response.getStatusCode() == 201) {
            system.debug('response ' + response.getBody());
            AnimalsCalloutResponse animalResponse = 
                (AnimalsCalloutResponse)JSON.deserialize(response.getBody(), AnimalsCalloutResponse.class);
            system.debug('====STRING animals list START ======');
            list<string> allAnimals = animalResponse.animals;
            for (string a : allAnimals) {
                system.debug(a);
            }
            system.debug('====STRING animals list END ======');

        } else {
            string result = 'failed';
            system.debug('something went wrong people');
        }

        return response;
    }

}
