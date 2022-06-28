public with sharing class DummyPostCallout {
    private static string GET_DUMMYPOST_ENDPOINT = CalloutInfo__mdt.getInstance('GET_DUMMYPOST').Endpoint__c;
    private static string HTTP_GET = 'GET';
    private static string HTTP_POST = 'POST';

    public static void postCallout() {
        //1. create request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(GET_DUMMYPOST_ENDPOINT);
        request.setMethod(HTTP_GET);

        //2. prepare http
        http http = new http();

        //3. send request, get response
        HttpResponse response = http.send(request);

        system.debug(response);
        if(response.getStatusCode() == 200){
            system.debug(response.getBody());
            DummyPostResponseWrapper dummywrapper = (DummyPostResponseWrapper)JSON.deserialize(response.getBody(), DummyPostResponseWrapper.class);
            system.debug('dummy wrapper = '+dummywrapper);
            //List<post__c> 
            system.debug('dummywrapper.posts = ' + dummywrapper.posts);
            List<post__c> listPosts = new list<post__c>();
            List<DummyPostResponseWrapper.Cls_Post> listClsPost = dummywrapper.posts;
            for (DummyPostResponseWrapper.Cls_Post dpost : listClsPost) {
                post__c p = new post__c();
                p.id__c = dpost.id;
                p.title__c = dpost.title;
                p.body__c = dpost.body;
                listPosts.add(p);
            }
            //Database.insert(listPosts, false);
            insert listPosts;
            
            //for each loop on list<post> from wrapper class
                //Post__c p = new post__c();
                //map all fields of wrapper post to post__c object fields
                //add in list<post__c>
            //database.insert(list of post__c);
        } else {
            system.debug(response.getStatus());
        }
    }
}