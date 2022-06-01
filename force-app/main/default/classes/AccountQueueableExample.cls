public with sharing class AccountQueueableExample implements Queueable{
    public List<Account> ListAccount;
    //parameterized constructor 
    public AccountQueueableExample(list<Account> accList){
        this.ListAccount = accList;
    }
    //mandatory method
    public void execute(QueueableContext qc){
        for(Account a : ListAccount){
            //Update the Account Name
            a.Name = a.Name + '-- SI';
        }
        update ListAccount;
    }

    
}
