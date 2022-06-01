/*2. Create an apex class AccountManager that updates the Description field for the newly created records with AccountHandlerInfo class. Let's make sure to use the values passed in name for account while updating the Description field.
New value of the Description should be the combination of the Name of the account and created date of account.
For an example, the name Of the account is <<Jimmy Thakkar>>, and the record has been create on <<2022-0212T10.57.75.000.0000>> then the Description of the record will be ==> Jimmy Thakkar2022-0212T10.57.75.000.0000 */

public class AccountManager {
    public static void updateDescriptionField(List<String> list1){
              
        AccountHandlerInfo.insertNewAccount(list1);
        List<Account> createdDateList =[select id, name, Description, CreatedDate from Account order by CreatedDate desc limit :list1.size()];
         
        for (Account eachAcc : createdDateList) {
            eachAcc.Description = eachAcc.Name+' '+ eachAcc.CreatedDate;
            system.debug(eachAcc.Description);
        }
       update createdDateList;
        
    }
}