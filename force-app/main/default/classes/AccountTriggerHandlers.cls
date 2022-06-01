public class AccountTriggerHandlers {
    public static void updateAccountDescription(List<account> accTriggerNew,
                                                List<account> accTriggerOld,
                                                Map<id, account> accTriggerNewMap,
                                                Map<id, account> accTriggerOldMap){
        system.debug('inside handler method');
         for(account eachAcc: accTriggerNew){
            boolean updateDesc = false;
            if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            }
            if(accTriggerOldMap != null){
                Account oldAccount = accTriggerOldMap.get(eachAcc.ID);
                
                string oldAccountActive = oldAccount.Active__c;
                //check if active is updated
                //active is changed to 'Yes'
                if(eachAcc.Active__c == 'Yes' &&
                    oldAccountActive != 'Yes'
                ) {
                    updateDesc = true;
                }
            }
            if(updateDesc){
                eachAcc.Description = 'Account is now active. Enjoy!';
            }
        }
    }
    public static void updateVipForAllAcontacts(list<account> accTriggerNew, list<account> accTriggerOld, 
                                    Map<id, account> accTriggerNewMap, map<id, account> accTriggerOldMap){
            system.debug('update all contact\'s VIP field');
            set<id> setAccIds = new Set<id>();
            for(account eachAcc: accTriggerNew){
                if(eachAcc.Vip__c != accTriggerOldMap.get(eachAcc.Id).Vip__c){
                    setAccIds.add(eachAcc.Id);
                }
            }

            List<contact> listContacts = [select id, name, account.id, vip__c from contact where account.id in :setAccIds];

            for(contact eachContact : listContacts){
                Account newAccount = accTriggerNewMap.get(eachContact.account.id);
                boolean newAccVip = newAccount.vip__c;

                eachContact.vip__c = newAccVip;
            }
            if(!listContacts.isEmpty()){
                update listContacts;
            }


    }
}

// public class AccountTriggerHandlers {
    
//     public static void updateAccountDescription(List<account> accTriggerNew,
//                                                 List<account> accTriggerOld,
//                                                 Map<id, account> accTriggerNewMap,
//                                                 Map<id, account> accTriggerOldMap){
//   system.debug('update all contact\'s VIP field');                                     
// //get set of account ids where onlyy VIP field is updated
// set<id> setAccIDs = new set<id>();
// for(account eachAcc : accTriggerNew){
//     //check is VIP field is updated.
//     if(eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.id).VIP__c){
//         setAccIDs.add(eachAcc.id);
//     }
// }
// //Get list of contacts for ACCOUNT where VIP is updated.
// List<Contact> listContacts = [select id, name, account.id, VIP__c from contact where account.id in : setAccIDs];
// //Now we want to update CONTACTS records.
// for(contact eachContact : listContacts){
//     //fetch VIP field of account for this contact. 
//     //if account's VIP is false, we get false, if true, we will get true here.
//     Account newAccount = accTriggerNewMap.get(eachContact.Account.Id);
//     Boolean newAccVip = newAccount.VIP__c;
//     //set account s VIP contact
//     eachContact.VIP__c = newAccVIP;
// }
// //update list Contacts.
// if(!listContacts.isEmpty()){
//     update listContacts;

// }






// system.debug('inside handler method');                                           
//          for(account eachAcc: accTriggerNew){
//             boolean updateDesc = false;
//             if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
//                 updateDesc = true;
//             }
//             if(accTriggerOldMap != null){
//                 Account oldAccount = accTriggerOldMap.get(eachAcc.ID);
                
//                 string oldAccountActive = oldAccount.Active__c;
//                 //check if active is updated
//                 //active is changed to 'Yes'
//                 if(eachAcc.Active__c == 'Yes' &&
//                     oldAccountActive != 'Yes'
//                 ) {
//                     updateDesc = true;
//                 }
//             }
//             if(updateDesc){
//                 eachAcc.Description = 'Account is now active. Enjoy!';
//             }
//         }