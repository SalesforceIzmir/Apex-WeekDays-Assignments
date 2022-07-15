public with sharing class AccountInvocable {

    @InvocableMethod(label='Delete Closed Opportunities'
    description='Delete all the closed opportunities when an account goes inactive or hold'
    category='Account') 
    public static void deleteOpportunities(List<Id> accountIds){
        List<Opportunity> opps = [SELECT Id FROM Opportunity 
                                  WHERE AccountId IN: accountIds 
                                  AND StageName IN ('Closed Won', 'Closed Lost')];
        if(!opps.isEmpty()) {
            delete opps;
        }
        
    }
}
