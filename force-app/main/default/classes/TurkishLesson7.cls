public class TurkishLesson7 {
    //name parametre olarak alan ve o name ile bir Account create eden bir metot..
    public static void createAcc(string acName, decimal anRvn){
        Account acc = new Account();
        acc.name = acName;
        acc.AnnualRevenue = anRvn;
       //Account acc = new Account(name = acName);
        System.debug(acc);
        insert acc;

        //Bu accounta bağlı 5 tane contact create edelim. first name accountun name olsun.last name Contact olsun ve 1 2 3 4 5 şeklinde sıralı olsun..

        list<contact> cntList = new list<contact>();

        for(integer i=1 ; i<=5 ; i++){
            contact cnt = new contact();
            cnt.firstName = acc.name;
            cnt.lastName = 'Contact '+ i;
            //alt satırda contactı acc accountına bağlamış oluyorum..
            cnt.accountId = acc.id;
            cntList.add(cnt);
        }
        if(!cntList.isEmpty()){
            insert cntList;
        }
        
    }
}