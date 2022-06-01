trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('before insert/update trigger called');
        if(Trigger.isBefore){
            AccountTriggerHandlers.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
        system.debug('before insert/update trigger end.');
        if(trigger.isAfter && trigger.isUpdate){
            AccountTriggerHandlers.updateVipForAllAcontacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
            
        }
        
    }
    

    // if(trigger.isBefore){
    //     system.debug('before insert/update trigger called');
    //     AccountTriggerHandlers.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    //     system.debug('before insert/update trigger end.');

        
    // }
    // if(trigger.isAfter && trigger.isUpdate){
    //     AccountTriggerHandlers.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);

    // }
    
    // if (Trigger.isInsert && Trigger.isBefore) {
    //     system.debug('---------isInsert && isBefore START------------');
    //     system.debug('trigger new = ' + trigger.new);
    //     system.debug('trigger old = ' + trigger.old);
    //     system.debug('trigger new Map = ' + trigger.newMap);
    //     system.debug('trigger old Map = ' + trigger.oldMap);
    //     system.debug('---------isInsert && isBefore END------------');
    //     System.debug('                                    ');
    // }
    // if (Trigger.isInsert && Trigger.isAfter) {
    //     System.debug('                                    ');
    //     system.debug('---------isInsert && isAfter START------------');
    //     system.debug('trigger new = ' + trigger.new);
    //     system.debug('trigger old = ' + trigger.old);
    //     system.debug('trigger new Map = ' + trigger.newMap);
    //     system.debug('trigger old Map = ' + trigger.oldMap);
    //     system.debug('---------isInsert && isAfter END------------');
    //     System.debug('                                    ');
    // }
    // if (Trigger.isUpdate && Trigger.isBefore) {
    //     System.debug('                                    ');
    //     system.debug('---------isUpdate && isBefore START------------');
    //     system.debug('trigger new = ' + trigger.new);
    //     system.debug('trigger old = ' + trigger.old);
    //     system.debug('trigger new Map = ' + trigger.newMap);
    //     system.debug('trigger old Map = ' + trigger.oldMap);
    //     system.debug('---------isUpdate && isBefore END------------');
    //     System.debug('                                    ');
    // }
    // if (Trigger.isUpdate && Trigger.isAfter) {
    //     System.debug('                                    ');
    //     system.debug('---------isUpdate && isAfter START------------');
    //     system.debug('trigger new = ' + trigger.new);
    //     system.debug('trigger old = ' + trigger.old);
    //     system.debug('trigger new Map = ' + trigger.newMap);
    //     system.debug('trigger old Map = ' + trigger.oldMap);
    //     system.debug('---------isUpdate && isAfter END------------');
    //     System.debug('                                    ');
    // }

    // if(trigger.isBefore){
    //     system.debug('before insert/update trigger called ');
    //     map<id, account> newAccountMap = trigger.newMap;
    //     map<id, account> oldAccountMap = trigger.oldMap;

    //     for(account eachAcc: trigger.new){
        //    boolean updateDesc = false;
    //         if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
           //updateDesc = true;
    //             
    //         }
    //         if(trigger.isUpdate){
    //             Account oldAccount = oldAccountMap.get(eachAcc.ID);

    //             string oldAccountActive = oldAccount.Active__c;
    //             //check if active is updated
    //             //update is changed to 'Yes'
    //             if(eachAcc.active__c == 'Yes' &&
    //             oldAccountActive != 'Yes'
    //             ) {
                  // updateDesc = true;
    //                 
    //             }
    //         }
        //if(updateDesc)
       // eachAcc.Description = 'Account is now active. Enjoy!';
    //     }
    // }

    // if(trigger.isAfter && trigger.isUpdate){
    //      map<id, account> newAccMap = trigger.newMap;
    //      map<id, account> oldAccMap = trigger.oldMap;

    //      set<id> setOfAccIds = newAccMap.keySet();
    //      integer countWebsiteUpdated = 0;
    //      for(ID eachId : setOfAccIds){
    //          //get old account
    //          account oldAcc = oldAccMap.get(eachId);
    //          string oldWebsite = oldAcc.Website;
    //          //get new account
    //          account newAcc = newAccMap.get(eachId);
    //          string newWebsite = newAcc.Website;

    //          if(oldWebsite != newWebsite){
    //              //website is Changed
    //              system.debug('For account ' + newAcc.Name + ', new WEBSITE is ' + newWebsite);
    //              countWebsiteUpdated++;
    //          }

    //      }
    //      system.debug('# of account website updated =  ' + countWebsiteUpdated);

    // }

    // if(trigger.isAfter && trigger.isUpdate){
    //     //after update trigger of Account Object.
    //     map<id, account> newAccMap = trigger.newMap;
    //     map<id, account> oldAccMap = trigger.oldMap;

    //     set<id> setOfAccIds = newAccMap.keySet();
        
    //     for(ID eachId: setOfAccIds){ //give me all keys
    //         system.debug('=============');
    //         System.debug('Each id = ' + eachId);//write keys here

    //         Account newAccount = newAccMap.get(eachId);//new values
    //         System.debug('New account name = ' + newAccount.Name);

    //         Account oldAccount = newAccMap.get(eachId);//old values
    //         System.debug('Old account name = ' + oldAccount.Name);
    //     }
    // }

    // map<id, account> trgNewMap = trigger.newMap;
    // map<id, account> trgOldMap = trigger.oldMap;

    // if(trigger.isBefore &&  trigger.isInsert){
    //     system.debug('=======BEFORE INSERT=========');
    //     system.debug('Before insert OLD MAP = ' + trgOldMap);//null
    //     system.debug('Before insert NEW MAP = ' + trgNEWMap);//null
    // }
    // if(trigger.isAfter &&  trigger.isInsert){
    //     system.debug('=======AFTER INSERT=========');
    //     system.debug('AFter insert OLD MAP = ' + trgOldMap);//null
    //     system.debug('AFter insert NEW MAP = ' + trgNEWMap);//value
    // }

    // if(trigger.isBefore &&  trigger.isUpdate){
    //     system.debug('=======BEFORE UPDATE=========');
    //     system.debug('Before update OLD MAP = ' + trgOldMap);
    //     system.debug('Before update NEW MAP = ' + trgNEWMap);
    // }
    // if(trigger.isAfter &&  trigger.isUpdate){
    //     system.debug('=======AFTER UPDATE=========');
    //     system.debug('After update OLD MAP = ' + trgOldMap);
    //     system.debug('AFter update NEW MAP = ' + trgNEWMap);
    // }
    

   /* if(trigger.isAfter){
        if(trigger.isUpdate){
            List<account> oldAccounts = trigger.old;
            List<account> newAccounts = trigger.new;

            for(account oldAcc: oldaccounts){
                system.debug('old acc.id = ' + oldAcc.id + ', old acc name = ' + oldAcc.Name);
            }
            for(account newAcc: newaccounts){
                system.debug('new acc.id = ' + newAcc.id + ', new acc name = ' + newAcc.Name);
            }
        }
    }

    if(trigger.isBefore && trigger.isUpdate){
        system.debug('trigger.new before update = ' + trigger.new);
        list<account> newAccounts = trigger.new;
        for (account acc :  newAccounts) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
        }
    }
    if (trigger.isAfter && trigger.isUpdate) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after update = ' + trigger.new);
        for (account acc :  trigger.new) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
        }
    }

    if(trigger.isBefore && trigger.isInsert){
        system.debug('trigger.new before insert = ' + trigger.new);
    }
    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);
    }

    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);

        list<account> newAccounts = trigger.new;

        system.debug('total account inserted = ' + newaccounts.size());
        for (account acc : newAccounts) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name);
        }
    }
*/
//         if(trigger.isBefore && trigger.isInsert){
//             System.debug('before insert durumunda trigger new => ' + trigger.new);
//         }
//         if (trigger.isAfter && trigger.isInsert){
//             system.debug('after insert durumunda trigger new => ' +trigger.new);
// }
//         if (trigger.isBefore && trigger.isUpdate){
//             system.debug('before update durumunda trigger new => ' + trigger.new);

//         if (trigger.isAfter && trigger.isUpdate){
//             system.debug('after update durumunda trigger new => ' + trigger.new);


    // if (Trigger.isInsert && Trigger.isBefore) {
    //     system.debug('---------isInsert && isBefore START------------');
    //     system.debug('trigger.isBefore = ' + trigger.isBefore);
    //     system.debug('trigger.isAfter = ' + trigger.isAfter);
    //     system.debug('trigger.isInsert = ' + trigger.isInsert);
    //     system.debug('trigger.isUpdate = ' + trigger.isUpdate);
    //     system.debug('---------isInsert && isBefore END------------');
    // }
    // if (Trigger.isInsert && Trigger.isAfter) {
    //     system.debug('---------isInsert && isAfter START------------');
    //     system.debug('trigger.isBefore = ' + trigger.isBefore);
    //     system.debug('trigger.isAfter = ' + trigger.isAfter);
    //     system.debug('trigger.isInsert = ' + trigger.isInsert);
    //     system.debug('trigger.isUpdate = ' + trigger.isUpdate);
    //     system.debug('---------isInsert && isAfter END------------');
    // }
    // if (Trigger.isUpdate && Trigger.isBefore) {
    //     system.debug('---------isUpdate && isBefore START------------');
    //     system.debug('trigger.isBefore = ' + trigger.isBefore);
    //     system.debug('trigger.isAfter = ' + trigger.isAfter);
    //     system.debug('trigger.isInsert = ' + trigger.isInsert);
    //     system.debug('trigger.isUpdate = ' + trigger.isUpdate);
    //     system.debug('---------isUpdate && isBefore END------------');
    // }
    // if (Trigger.isUpdate && Trigger.isAfter) {
    //     system.debug('---------isUpdate && isAfter START------------');
    //     system.debug('trigger.isBefore = ' + trigger.isBefore);
    //     system.debug('trigger.isAfter = ' + trigger.isAfter);
    //     system.debug('trigger.isInsert = ' + trigger.isInsert);
    //     system.debug('trigger.isUpdate = ' + trigger.isUpdate);
    //     system.debug('---------isUpdate && isAfter END------------');
    // }





    //list<account> newAccounts = trigger.new;
    //if(trigger.isAfter){
        //system.debug('all new accounts - ' + newAccounts);
    //}

        // if(trigger.isAfter && trigger.isInsert){
        //     //trigger.new -> record which was responsible for firing the trigger
        //     system.debug('trigger.new after insert = ' + trigger.new);
        //     //trigger.new returns list<sObject>
        //     list<account> newAccounts = trigger.new;

        //     system.debug('total account inserted ' + newAccounts.size());
        //     for(account acc: newAccounts){
        //         system.debug('Account id is = ' + acc.Id + ', account name is ' +acc.Name);
        //     }

        

    //}



    /*system.debug('---------START------------');
    system.debug('trigger.isBefore = ' + trigger.isBefore);
    system.debug('trigger.isAfter = ' + trigger.isAfter);
    system.debug('trigger.isInsert = ' + trigger.isInsert);
    system.debug('trigger.isUpdate = ' + trigger.isUpdate);
    if (Trigger.isInsert && Trigger.isBefore) {
        system.debug('before insert trigger fired');
    }
    if (Trigger.isInsert && Trigger.isAfter) {
        system.debug('after insert trigger fired');
    }
    if (Trigger.isUpdate && Trigger.isBefore) {
        system.debug('before update trigger fired');
    }
    if (Trigger.isUpdate && Trigger.isAfter) {
        system.debug('after update trigger fired');
    }
    system.debug('---------END------------');
}
    /* 
    //when will .isBefore TRUE?
    system.debug('trigger.isBefore = ' + trigger.isBefore);
    system.debug('trigger.isAfter = ' + trigger.isAfter);
    //when will .isAfter TRUE?

    if(trigger.isAfter){
        system.debug('after insert trgigger called');
    }
    if(trigger.isBefore){
        system.debug('before insert account trigger fired');
    }
    
    //if(trigger.isBefore && trigger.isAfter){
        //system.debug('Will this work?');==> NO
    }
    
    */