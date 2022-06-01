//WEEK 8 SUNDAY practice 2. Write a schedulable class to schedule the batch class written in question 1 and schedule the
//class to run at 3pm daily.
public class OpportunitySchedulable implements Schedulable {
    public void execute (SchedulableContext oc){
        OpportunitiesBatchWeek8 optbatch = new OpportunitiesBatchWeek8();
        database.executeBatch(optbatch, 20);
    }
   
}
