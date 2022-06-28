/*1. Create an Apex class that inserts new accounts named after an incoming parameter as list of string. If the accounts are successfully inserted. the method should return the List of account records. If a parameter is blank than we should show the error message from class and the method should return null.
The Apex class must be called AccountHandlerInfo and be in public scope
The Apex class must have a public static method called insertNewAccount
The method must accept an incoming List of string as a parameter, which mill be used to create the Account names 
The list of accounts will be created based on the list of string, that means If we are passing the list of 5 strings clan 5 account records will be created 
The method must insert the accounts into the system and then return the records*/

public class AccountHandlerInfo {
    public static list<Account> insertNewAccount(List<String> listaccountName){
        List<Account> newAccList = new List<Account>();

        if (!listaccountName.isEmpty()) {
            //for (Integer i = 0; i < listaccountName.size(); i++) {
               // account acc = new Account();
               // acc.Name = listaccountName[i];
                
            //}
            for(string eachAccNm : listaccountName){
                Account acc = new Account();
                acc.Name = eachAccNm;
                newAccList.add(acc);
            }
            
        } else {
            newAccList = null;
            system.debug('Error, please provide a string list');
            
        }
        insert newAccList;
        system.debug(newAccList);
        return newAccList;

    }
    

}