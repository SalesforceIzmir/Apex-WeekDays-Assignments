public class Dml2Video {
    public static Id createAccount(){
        account acc = new Account();
        acc.name = 'Super';
        insert acc;
        return acc.Id;
    }
    public static void createContact(){
        contact c = new Contact();
        c.lastName = 'Daily';
        c.AccountId = createAccount();
        insert c;
    }
    public static void updateOneOrphanContact(){
        account acc = [select id from account where name = 'Super' limit 1];
        contact c = [select id from contact where accountId = null limit 1];
        system.debug('c = ' + c);
        c.AccountId = acc.id;
        update c;

    }

}