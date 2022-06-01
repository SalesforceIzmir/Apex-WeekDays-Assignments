//inserting and updating one record by using DML

//creating/inserting one contact
public with sharing class Dml1Video {
    public static void createContact(){
        Contact c = new Contact();
        c.Salutation = 'Mr.';
        c.LastName = 'Must';

        //DML
        insert c;//insert ettikten sonra neden id cikmadi? update ettikten sonra id yi gosterdi developer console da. 
    }
    //updating one record.
    public static void updateOneContact(){ //DML Video 18. 17.dakika bende update olmuyor isim.// ikinci denemede oldu. sorun yok
        contact c1 = [select id, firstName, lastname from contact where lastname = 'Must' limit 1];
        c1.FirstName = 'Elon';
        c1.Phone = '899339920';
        c1.Email = 'biden@c1.com';
        update c1;
    }
    
}
