/*WEEK 11-2. Create a rest resource class and name it as 'CustomLeadApi'. Create the methods for following requirements:
a. Fetch lead Information - Based on the Id passed in the Url, this method will return the lead record info.*/

@RestResource (UrlMApping = '/LeadCustom/*' )
global with sharing class CustomLeadApi {
    @httpGet 
    global static Lead getleadId(){
        RestRequest req = RestContext.request;
        string Uri = req.requestURI;
       integer Idstsrtindex = Uri.lastIndexOf('/')+1;
       string leadid = Uri.substring(Idstsrtindex);
       Lead leadweek11 =[Select name, id from Lead where Id =: leadid];

       return leadweek11;
        
    }
    
 /* WEEK 11- b. Create lead record- based on the information provided in the json create a new lead. Note: first name, last name, company, and lead status are mandatory to provide.*/
 @HttpPost 
 global static String creatLead(string firstName, string lastName, string company, string status){
    Lead l = new Lead();
    l.FirstName = firstName;
    l.lastName = lastName;
    l.Company = company;
    l.Status = status;
    insert l;

    return 'Succesfully created!' ;
 }
 /*WEEK 11-c.Delete lead record - Based on the Id passed in the Url, this method will delete the lead record*/
 @HttpDelete 
 global static String deleteLead(){
    RestRequest req = RestContext.request;
    String uri = req.requestURI;
    integer idStartIndex = Uri.lastIndexOf('/')+1;
    string leadid = Uri.substring(idStartIndex);
    Lead leadweek11 =[Select name, id from Lead where Id =: leadid];

    delete leadweek11;
    return 'Succesfully Deleted! ID: ' + leadweek11.Id;
    

 }
 /*d. Update lead record - Based on the Id passed in the Url and information in the json, this method will update the existing lead record.*/
  @HttpPatch 
  global static String updateLead(String Email, String PhoneNumber){
    RestRequest req = RestContext.request;
    String Uri = req.requestURI;
    integer idStartIndex = Uri.lastIndexOf('/')+1;
    string leadid = Uri.substring(idStartIndex);
    Lead bb = new Lead();
    bb = [Select name, id from Lead where Id =: leadid];
    bb.Email = Email;
    bb.Phone = PhoneNumber;
    update bb;

    return 'Successfully Updated! ' + bb.Id;

  }
  /*e. Upsert multiple lead records - Based on the json passed. it should have provision to add or multiple lead records in single api call.*/

  @HttpPut 
  global static String upsertLead(List<Lead> ldList){
    upsert ldList;
    return 'Succesfully upsert';
  }

  



    
}
