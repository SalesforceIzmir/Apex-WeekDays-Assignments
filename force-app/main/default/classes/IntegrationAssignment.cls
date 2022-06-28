public with sharing class IntegrationAssignment {
    public static HttpResponse Population(){
        //1. prepare request
        HttpRequest Request = new HttpRequest();
        Request.setEndpoint('https://datausa.io/api/data?drilldowns=Nation&measures =Population');
        Request.setMethod('GET');

        //2. prepare http
        Http http1 = new Http();

        //3. send request, receive response.
        HttpResponse response = http1.send(Request);
        System.debug('status ' + response.getStatus());
        System.debug('status population ' + response.getStatusCode());

        //4. process the response
        if(response.getStatusCode() == 200){
            string usPopulation = response.getBody();
            System.debug(usPopulation);

            Object ob = JSON.deserializeUntyped(usPopulation);
            Map<String, Object> results = (Map<String, Object>)ob;
            System.debug('results = ' + results);

            List<Object> usPopulation1 = (List<Object>)results.get('data');
            System.debug('==========List START=======');
            For(object usp: usPopulation1){
                System.debug(usp);
            }

        }else{
            System.debug('something went wrong');
        }
        return response;
    }
}