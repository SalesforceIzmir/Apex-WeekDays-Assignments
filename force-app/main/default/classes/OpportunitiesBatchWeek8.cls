//WEEK 8-SUNDAY Practice
//1. Write a Batch class to delete all the opportunities which were updated as closed Lost.

public class OpportunitiesBatchWeek8 implements database.Batchable <SObject> {
    public integer count = 0;
    public database.QueryLocator start (database.BatchableContext opt){
        Database.QueryLocator optrtn = Database.getQueryLocator([SELECT id, Name FROM Opportunity WHERE stageName = 'Closed Lost']);
        return optrtn;
    }
    public void execute (database.BatchableContext opt, list<Opportunity> scope){
        if(!scope.isEmpty()){
            count = scope.size();
            delete scope;
        }   
    }
    public void finish (Database.BatchableContext opt){
        system.debug('deleted Opportunity ' + count);

    }





    
    
}
