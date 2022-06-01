/*WEEK 8 SUNDAY Write a schedulable class to schedule the batch class written in question 3 and schedule the class to run at 1am every Monday*/ 
public  class Week8Question4 implements Schedulable{
    public void execute(SchedulableContext sc){
        BatchOppWeek8 qstn = new BatchOppWeek8();
        Database.executeBatch(qstn, 15);
    }
    
}
