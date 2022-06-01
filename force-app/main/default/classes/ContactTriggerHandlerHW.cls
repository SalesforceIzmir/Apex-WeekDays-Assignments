public with sharing class ContactTriggerHandlerHW {
    public static void insertUpdateContactStatus(list<contact> triggerNew, 
                                           list<contact> triggerOld,
                                           map<id, contact>triggerNewMap,
                                           map<id, contact> triggerOldMap){
         Set<Id> setIdcnt = new Set<id>(); //update durumu                                    
        for(contact con : triggerNew){
            if(con.status__c != triggerOldMap.get(con.id).status__c){
                if(con.AccountId != null){
                    setIdcnt.add(con.AccountId);
                }
                
            }
         list<contact> updatedCnt = [SELECT id, AccountId FROM contact WHERE AccountId in : setIdcnt];
            
            
        }    
                                      

    }
}
