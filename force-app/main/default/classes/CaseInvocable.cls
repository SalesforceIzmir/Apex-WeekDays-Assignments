public with sharing class CaseInvocable {


    @InvocableMethod(label='Send email & Save Activity'
    description='Sends an eamil and saves the same as an activity'
    category='Case')
    public static void sendEmail(List<FlowInput> inputs){
        FlowInput input = inputs[0];
        List<Messaging.SingleEmailMessage> msgs = new List<Messaging.SingleEmailMessage>();
        Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
        msg.setTargetObjectId(input.contactId);
        msg.setSaveAsActivity(true);
        msg.setSubject('Case created: ' + input.caseNumber);
        msg.setPlainTextBody('Hello there, \n A case has been created for you to answer your query.'                                          
                               + 'One of our customer representative is going to reachoit to you. Stay tuned!'
                               + '\n Thank you!');
        msgs.add(msg);
         Messaging.SendEmailResult[] results = Messaging.sendEmail(msgs);  
         for(Messaging.SendEmailResult result : results){
            if(result.isSuccess()){
                //create success log
                system.debug('Successfully sent!');
            }else{
                //create a log
                system.debug(result.getErrors());
            }

         }                    

    }

   public class FlowInput{
    @InvocableVariable(label='Case Number' description='To Get Case Number' required=true)
    public String caseNumber;
    @InvocableVariable(label='Contact Id' description='To Get Case Id' required=true)
    public Id contactId;
   }

   //account name, List<contactname> & List<oppname>
   //public class dataClass {
   // public String accName;
   //public List<String> oppNames;
   }

