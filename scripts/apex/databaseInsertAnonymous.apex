//Create accounts
Account acc1 = new account();
acc1.Name = 'SI Test';
acc1.Industry = 'Energy';
acc1.Active__c = 'No';

Account acc2 = new account();
acc2.Name = 'UI Test';
acc2.Industry = 'Energy';
acc2.Active__c = 'No';
//required field is missing.

Account acc12x = new account();
Account acc12y = new account();
Account acc12z = new account();

List<account> listAcc = new list<account>{acc1, acc2, acc12x,acc12y, acc12z};

List<Database.SaveResult> results = Database.insert(listAcc, false); 
//List<Database.SaveResult> results = Database.insert(listAcc, true); 

for(Database.SaveResult eachResult : results){
    if(eachResult.isSuccess()){
        system.debug('Account succesfully inserted, Account Id is ' + eachResult.getId());
    }else{
        system.debug('Error : ' + eachResult.getErrors());//getError burda hatayi getiriyor ama hatayi ekle demektir.
    }
}
/*insert ile database.insert arasinda ki fark insert de eger hata varsa recordlarin birinde hic birini insert etmez ama digerinde dogru olanlari insert eder yanlis olanlari insert etmez.*/