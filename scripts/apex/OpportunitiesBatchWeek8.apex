//WEEK 8-SUNDAY Practice
//1. Write a Batch class to delete all the opportunities which were updated as closed Lost.
OpportunitiesBatchWeek8 opp = new OpportunitiesBatchWeek8();
Database.executeBatch(opp, 20);

BatchOppWeek8 batchOP = new BatchOppWeek8 ();
Database.executeBatch(batchOP, 20);