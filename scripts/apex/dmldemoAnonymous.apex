list<case> listCase = new List<Case>();
for(integer i= 0; i<205; i++){
    case c = new case();
    c.Subject = 'There is a bug ';
    c.Description = 'resolve it';
    c.Status = 'New';
    c.Origin = 'Web';
    listCase.add(c);

}
insert listCase;

list<case> updatCases = [select id, status from case];
for(case eachCase : updatCases){
    eachCase.Status = 'Working';
}
update updatCases;






//updating 5 website if not updating names
List<Account> listAcc = [select id, name, website from account order by CreatedDate limit 10];
      list<account> updateAccounts = new list<account>();

        integer counter = 0;
       for (account acc : listAcc) {
           //updating 5 website
           if(counter < 5){
                acc.Website = 'newwebsite.com';
           } else { //if there is more than 5 update the names
               acc.name = acc.name + ' v2';
           }
           
           updateAccounts.add(acc);
           counter++;
       }
       if(!updateAccounts.isEmpty()){
           update updateAccounts;
       }






//Creating multiple accounts(4)
list<account> listAcc = new list<account>();
for (Integer i = 0; i < 4; i++){
    account acc2 = new account();
    acc2.Name = 'SoftInnovas 10-May v'+i;
    acc2.AccountNumber = 'asci-1'+i;
    acc2.Active__c = 'Yes';
    listAcc.add(acc2);
}
system.debug('size of list ' + listAcc.size());

if(!listAcc.isEmpty()){
    insert listAcc;

}
    if(trigger.isBefore && trigger.isInsert){
        system.debug('trigger.new before insert = ' + trigger.new);
    }
    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);
    }



    /*
    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);

        list<account> newAccounts = trigger.new;

        system.debug('total account inserted = ' + newaccounts.size());
        for (account acc : newAccounts) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name);
        }
    }*/


    /*
    system.debug('---------START------------');
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
    */
}



 DmlDemo.dmlInsertDemo_stndObj();
 DmlDemo.dmlInsertDemo_cstmObj();
 DmlDemo.dmlUpdateDemo_1();
 DmlDemo.dmlUpdateDemo_3();
 DmlDemo.dmlUpdateDemo_2();
 DmlDemo.dmlmultipleRecordInsert_right();

 system.debug('doing DML now.');
 DmlDemo.dmlmultipleRecordInsert2_right();
 system.debug('DML is done.');


 DmlDemo2.dmlMultipleRecordUpdate_right();

 list<account> listacc = [select id from account order by createddate desc limit 20];