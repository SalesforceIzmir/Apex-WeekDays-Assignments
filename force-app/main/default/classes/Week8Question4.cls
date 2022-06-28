public  class Week8Question4 implements Schedulable{
    public void execute(SchedulableContext sc){
        BatchOppWeek8 qstn = new BatchOppWeek8();
        Database.executeBatch(qstn, 15);
    }
    
}