public with sharing class LeadTriggerHandler {
    public static void updateDefaultLeadDetails(List<Lead> newList){
        for(Lead ld : newList){
            if(ld.LeadSource == 'Web'){
                ld.Rating = 'Cold';
            } else {
                ld.Rating = 'Hot';
            }
        }
    }
}