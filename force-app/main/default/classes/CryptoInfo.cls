/*2. Create one class called CryptoInfo, which contains the method called showPrice. This method should accept one string which will be called as coinName and will show the price based on the given input. This class will hold the values of crypto in one map called CryptoMap. 

From anonymous, first we will set the price of each crypto and than we will pass the name of crypto coin while calling the showPrice method.

== Example ==
-----------------------
Input: BTC
Output: $35,000

Input: ETH
Output: $2,500*/


public class CryptoInfo {

    public static Map<String,double> CryptoMap = new Map<String, double>();
    public static string coinName= '';
    public static double showPrice(string coinName){
        double price = 0;

        if (CryptoMap.containsKey(coinName)){
            price=CryptoMap.get(coinName);
            
        } else {
            price=0;
           coinName= 'The value does not exist '; 
           
        }
        //system.debug(price);
        return price;
    }
}