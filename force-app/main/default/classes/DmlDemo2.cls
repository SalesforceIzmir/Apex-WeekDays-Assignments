public  class DmlDemo2 {
    public static void dmlMultipleRecordUpdate_right(){
        list<Account> listAcc = [select id, name, description from account order by CreatedDate limit 150];

        list<account> updateAccounts = new list<account>();

        for (account acc : listAcc) {
            acc.Name += 'vB';
            acc.Description = 'Update via bulk DMl';
            updateAccounts.add(acc);
        }
        if(!updateAccounts.isEmpty()){
            update updateAccounts;
        }
    }
}