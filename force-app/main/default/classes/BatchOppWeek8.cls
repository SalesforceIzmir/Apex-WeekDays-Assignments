/* WEEK 8-SUNDAY Project 3. Write a logic to Create tasks for all the opportunities other than the closed won or closed lost
and on which there was no activity since last 7 days. Populate the task field values as follows:
  Field
Subject Due Date
Comments Related To Assigned To Status
Value
Other
Today if Opportunity close date is already passed otherwise Opportunity Close Date – 2 days.
Reminder – Please act on the Opportunity
Opportunity Id
Opportunity Owner Id
In Progress*/

public class BatchOppWeek8 implements database.Batchable <sObject>, Database.Stateful {
    public integer count = 0;
    public Database.QueryLocator start (Database.BatchableContext opt){
        Database.QueryLocator optrtn = Database.getQueryLocator([SELECT id, OwnerId, CloseDate FROM Opportunity WHERE stageName != 'Closed Won' AND LastModifiedDate<LAST_N_DAYS:7]);
        return optrtn;
    }
    public void execute (Database.BatchableContext opt, List<Opportunity> scope){
        list<Task> updateOpp = new List<Task>();
        for (Opportunity oppt : scope){
            Task obj = new Task();

            obj.Subject = System.label.Subject;
            obj.Description = System.label.Comments;
            obj.WhatId = oppt.Id;
            obj.OwnerId = oppt.OwnerId;
            obj.Status = 'In Progress';

            if (oppt.CloseDate<date.today()){
                obj.ActivityDate = Date.today();
            }else{ obj.ActivityDate = oppt.CloseDate.addDays(-2);
                
            }
            count++;
            updateOpp.add(obj);
                
        }
            if(!updateOpp.isEmpty()){
                insert updateOpp;
            }

    }
    public void finish (Database.BatchableContext opt){
        system.debug('Task inserted =' + count);
        
    }
        
    
}
