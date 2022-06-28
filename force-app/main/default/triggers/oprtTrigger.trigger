trigger oprtTrigger on Opportunity (before delete) {
    for(Opportunity opp : Trigger.old){
        if(opp.StageName == 'Closed Won'){
            opp.addError('Closed Won Opportunities can not be deleted!');
        }
    }

}