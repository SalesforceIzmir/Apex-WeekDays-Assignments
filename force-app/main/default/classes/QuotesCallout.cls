public with sharing class QuotesCallout {
    //Getting end point data from Custom Meta data Type
    public static string QUOTES_ENDPOINT = CalloutInfo__mdt.getall().get('Quote').Endpoint__c;
    //Responsible for doing the callout for getting the fresh quote
    public static string makeGetCallout() {
        String quote;
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(QUOTES_ENDPOINT);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        //If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            // Deserializes the JSON string into collections of primitive data types.
            Map<String, String> results = (Map<String, String>) JSON.deserialize(response.getBody(), Map<String, String>.class);
            quote = String.valueOf(results.get('quote'));
            System.debug(quote);
        } else {
            System.debug('Something Went Wrong!!!');
            quote = null;
        }
        return quote;
    }
}
