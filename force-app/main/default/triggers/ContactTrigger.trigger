trigger ContactTrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {
    if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    Set<Id> accountIds = new Set<Id>();
    if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for (contact c : trigger.new) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }
        if(trigger.isUpdate || trigger.isdelete){
            for (contact c : trigger.old) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }

        if(!accountIds.isEmpty()){
            List<account> accList = [select id, Number_of_Contatct__c, (select id from contacts)from account where id in :accountIds];

            if(!accList.isEmpty()){
                list<account> updateAccList = new list<account>();
                for (account eachAcc : accList) {
                    List<contact> listContacts = eachAcc.contacts;
                    
                    Account acc = new account();
                    acc.id = eachAcc.id;
                    acc.Number_of_Contatct__c = listContacts.size();
                    updateAccList.add(acc);
                }
                if(!updateAccList.isEmpty()){
                    update updateAccList;
                }
            }
        }
    }
    // if(trigger.isBefore && trigger.isUpdate){
    //     ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    //     ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }
    // Set<Id> accountIds = new Set<Id>();
    // if(trigger.isAfter){
    //     if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
    //         for (contact c : trigger.new) {
    //             if(c.accountid != null){
    //                 accountIds.add(c.AccountId);
    //             }
    //         }
    //     }
    //     if(trigger.isUpdate || trigger.isDelete){
    //         for (contact c : trigger.old) {
    //             if(c.accountid != null){
    //                 accountIds.add(c.AccountId);
    //             }
    //         }
    //     }

    //     if(!accountIds.isEmpty()){
    //         List<account> accList = [select id, number_of_contacts__c, (select id from contacts)
    //         from account  account where id in :accountIds];

    //         if(!accList.isEmpty()){
    //             list<account> updateAccList = new list<account>();
    //             for (account eachAcc : accList) {
    //                 List<contact> listContacts = eachAcc.contacts;
                    
    //                 Account acc = new account();
    //                 acc.id = eachAcc.id;
    //                 acc.number_of_contacts__c = listContacts.size();
    //                 updateAccList.add(acc);
    //             }
    //             if(!updateAccList.isEmpty()){
    //                 update updateAccList;
    //             }
    //         }
    //     }
    // }

}



// trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {
//      //1.dont'allow user to up[date contact if Lead Source is 'Partner Referral.
//      if(trigger.isBefore && trigger.isUpdate){
//         //  ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);

//          ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
//      }








    /*27. Bir Contact insert edildiğinde First Name yazılmamışsa 'Bu record'da First Name yazılmadı.. Name sadece Last Name = [lastName] den oluşuyor.' mesajını system debug ile konsolda yazdıran bir trigger tasarlayınız.*/
    // if(trigger.isBefore && trigger.isInsert){
    //     for(Contact cnt : Trigger.new){
    //         if(cnt.FirstName == null){
    //             system.debug('Bu record\'a first name yazilmadi.Name sadece Last name den olusuyor. = ' +cnt.LastName);
    //         }
    //     }
    // }
     

       //Last name değişirse/güncellenirse(Update) Description da 'Contactın name değişti'
    // version 1
    // if(trigger.isBefore && trigger.isUpdate){
    //     for(contact cn : trigger.new){
    //         if(cn.lastName != trigger.oldMap.get(cn.id).lastName){ //isimler değişmişse
    //             //Description da 'Contactın name değişti' yazacak
    //             cn.Description = 'Contactin name değişti';
    //         } else {
    //             cn.Description = '';
    //         }     
    //     }
    // }

    // // version 2
    // if(trigger.isBefore && trigger.isUpdate){
    //     for(contact cn : trigger.new){
    //         contact oldCn = trigger.oldMap.get(cn.id);
    //         if(cn.lastName != oldCn.lastName){ //isimler değişmişse
    //             //Description da 'Contactın name değişti' yazacak
    //             cn.Description = 'Contactin name değişti';
    //         } else {
    //             cn.Description = '';
    //         }     
    //     }
    // }
    
    
     
    
/*Write a Trigger on Contact object, Print the values of Trigger.New, Trigger.Old, Trigger.NewMap and Trigger.OldMap for the following trigger events:
After Insert
After Update
Before Insert
Before Update*/

    // if(trigger.isBefore && trigger.isInsert){
    //     system.debug('=========BEFORE INSERT=========');
    //     system.debug('Trigger New = '  + trigger.new);
    //     system.debug('Trigger Old = ' + trigger.old);
    //     system.debug('Trigger OldMap = ' + trigger.oldMap);
    //     system.debug('trigger NewMap = ' + trigger.newMap);
    // }
    // if(trigger.isAfter && trigger.isInsert){
    //     system.debug('=========AFTER INSERT=========');
    //     system.debug('Trigger New = '  + trigger.new);
    //     system.debug('Trigger Old = ' + trigger.old);
    //     system.debug('Trigger OldMap = ' + trigger.oldMap);
    //     system.debug('trigger NewMap = ' + trigger.newMap);
    // }
    // if(trigger.isBefore && trigger.isUpdate){
    //     system.debug('=========BEFORE UPDATE=========');
    //     system.debug('Trigger New = '  + trigger.new);
    //     system.debug('Trigger Old = ' + trigger.old);
    //     system.debug('Trigger OldMap = ' + trigger.oldMap);
    //     system.debug('trigger NewMap = ' + trigger.newMap);
            
    //  }
    // if(trigger.isAfter && trigger.isUpdate){
    //     system.debug('=========AFTER UPDATE=========');
    //     system.debug('Trigger New = '  + trigger.new);
    //     system.debug('Trigger Old = ' + trigger.old);
    //     system.debug('Trigger OldMap = ' + trigger.oldMap);
    //     system.debug('trigger NewMap = ' + trigger.newMap);
    
            
    // }
    
//}