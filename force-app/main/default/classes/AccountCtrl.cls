//method to be called from LWC
public with sharing class AccountCtrl {
   @AuraEnabled(cacheable=true)
   public static List<Account> getBiotechAccounts(){
       List<Account> accounts = [SELECT Name, Type, Industry, AnnualRevenue
                                FROM Account
                                WHERE Industry = 'Biotechnology'
                                WITH SECURITY_ENFORCED];
        return accounts;                        
   }
   @AuraEnabled(cacheable=true)
   public static List<Account> getAccountByType(String type){
      List<Account> accounts = [SELECT Name, Type, Industry, AnnualRevenue
                                 FROM Account
                                 WHERE Type = :type
                                 WITH SECURITY_ENFORCED
                                 LIMIT 4];
return accounts;            

   }

   @AuraEnabled(cacheable=true)
   public static List<Account> getAccountsByIndustry(String industry){
       List<Account> accounts = [SELECT Name, Type, Industry, AnnualRevenue
                               FROM Account
                               WHERE Industry = :industry
                               WITH SECURITY_ENFORCED];
       return accounts;
   
}
}
