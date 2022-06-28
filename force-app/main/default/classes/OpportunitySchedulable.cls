public class OpportunitySchedulable implements Schedulable {
    public void execute (SchedulableContext oc){
        OpportunitiesBatchWeek8 optbatch = new OpportunitiesBatchWeek8();
        database.executeBatch(optbatch, 20);



    }
   
}