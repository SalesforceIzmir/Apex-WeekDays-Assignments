public class ListSetMap {
    public static void practiceOne(){
        list<string> lsm = new list<string> {'Ankara', 'İstanbul', 'London', 'Paris', 'New York', 'Tokyo', 'Antalya', 'London', 'Paris', 'New York', 'Tokyo'};

        Integer size = lsm.size();
        system.debug(lsm);
        system.debug('Size of this list is : ' + size);

        Boolean listCheck = lsm.isEmpty();
        system.debug('Check to see if the created list is empty: ' + listCheck);
        
        string svntElmnt = lsm.get(6); //index 6
        system.debug('The Seventh element of this list is: ' + svntElmnt);

        set<string> newSetList = new set<string>();
        newSetList.addAll(lsm);
        system.debug('The new set list as follow: ' + newSetList);
        /*22. "ListSetMap" Class'ının içerisine "practiceTwo" adında static bir method oluşturun. Method parametre olarak integer bir liste kabul etsin. Parametre olarak gelen listedeki tek sayıları bir Set'e, çift sayıları ise diğer bir Set'e ekleyen bir kod bloğu tasarlayın ve her adımı developer consol üzerinden gözlemleyin. Parametre olarak göndereceğiniz liste  "54, 45, 35, 89, 64, 98, 54, 45, 35, 89, 64, 98" sayılarını içersin.*/
        
            }
            public static void practiceTwo(){
                list<integer> nmbrLst = new list<integer>{54, 45, 35, 89, 64, 98, 54, 45, 35, 89, 64, 98};
                integer odd =0;
                for(integer i=0; i>nmbrLst; i++){
                    if (Math.mod(i, 2)!=0){
                        odd = odd+nmbrLst[i];
                        system.debug('odd numbers ' + nmbrLst);
                        
                    }
                }
                
                
                }
                
                


            }
    
    

