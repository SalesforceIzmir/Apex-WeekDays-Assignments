//3. Create one class called AccountInfo, which contains the method called showAccounts. This method should print all accounts' names and related oppotunities where the opportunity close date is in future.

public class AccountInfo {
    public static void showAccounts(){
        list<Account> accountOppFuture = [SELECT  name, (SELECT closeDate FROM Opportunities WHERE closeDate >today)FROM Account];
        system.debug(accountOppFuture);

    }

    //1. Write an SOQL to get the records of contact object, where the type of account is Prospect.

    
}