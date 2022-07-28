public with sharing class OpportunityCtrl {
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> BigOpportunities(){
        List<Opportunity> opps =[SELECT Name, Amount, StageName, Type
                                    FROM Opportunity
                                    WHERE Amount > 1000000
                                    WITH SECURITY_ENFORCED
                                    LIMIT 3];
        return opps;                            


    
}
}

