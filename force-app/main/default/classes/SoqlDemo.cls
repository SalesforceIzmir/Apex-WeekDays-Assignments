public class SoqlDemo {
    public static void accountSoql_1() {
        list<Account> listAcc = [Select id, name from account where name like '%A%'];
        system.debug('account list = ' + listAcc);
        system.debug('# of account = ' + listAcc.size());

        Account latesAcc = [select name, website from account order by createdDate desc limit 1];
        system.debug(latesAcc);

    }
    public static void accountSoql_2() {
        Account latesAcc = [select name, website, phone, AccountNumber from account order by createdDate desc limit 1];
        system.debug('latest account created is ' + latesAcc);

        
        string accName = latesAcc.Name;
        string accPhone = latesAcc.phone;
        system.debug('acc name is ' + accName);
        system.debug('acc phone is  ' + accPhone);
        system.debug('acc account number is ' + latesAcc.AccountNumber);

    

    }
    public static void accountSoql_3(){
        list<account> listAcc = [select id, name, phone, accountnumber FROM account ORDER by CreatedDate DESC];
        system.debug ('all accounts = ' + listAcc);

        for (account eachAccount : listAcc) {
            //1st record for the 1st iteration.
        
        string accName = eachAccount.Name;
        string accPhone = eachAccount.phone;
        system.debug('acc name is = ' + accName);
        system.debug('acc phone is = ' + accPhone);
        system.debug('acc account number is ' + eachAccount.AccountNumber);
        system.debug 
        ('--------------------------------------');

        }
    }
    public static void soqlDemo_Filter(){
        string accNameFilter = 'Soft Innovas';

        list<account> listAcc = [select id, name from account where name = :accNameFilter];
        system.debug(listAcc);
    }
}