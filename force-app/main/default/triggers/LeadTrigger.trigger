trigger LeadTrigger on Lead (before insert) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            LeadTriggerHandler.updateDefaultLeadDetails(Trigger.New);
        }
    }
}

