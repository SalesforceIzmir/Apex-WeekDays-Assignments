
        //Olusturdugumuz fazla accountlari delete etmek icin kullandigimiz formul bu sekilde.
        //Burda'(ilk kisimda kactane olusturmusuz onu gostericek)

list<Account> deleteList = [select id, name from account where name like 'SoftInnovas%'];
system.debug(deleteList.size());
delete deleteList;

        //burda da sildikten sonra ki son halini gostericek. 
list<Account> deleteList2 = [select id, name from account where name like 'SoftInnovas%'];
system.debug(deleteList2.size());






AgeOfPerson aop = new AgeOfPerson();
//aop.calculateAge();
aop.remainingDays();

