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