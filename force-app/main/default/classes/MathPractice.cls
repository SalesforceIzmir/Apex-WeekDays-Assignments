public class MathPractice {
    // public decimal practiceOne(decimal a, decimal b){
    //     decimal dikdortgenCevre = 2*(a+b);
    //     return dikdortgenCevre; 
    // }
    // public decimal practiceTwo(decimal k, decimal b){
    //     decimal VKI = k/(b*b);
    //     return VKI;

    // }
    // public decimal practiceThree(integer a, integer b){
    //     decimal ortalamaDeger = (a+b)/2;
    //     return ortalamaDeger;
        
    // }
    // public decimal practiceFour(decimal cost){
    //     decimal bonus;
    //     if (cost <=0) {
    //         system.debug('Hatali bir giris yaptiniz. ');

    //     } else if (cost>0 && cost<50){
    //        system.debug('Bonus kazanamadiniz.'); 

    //     } else if (cost>=50 && cost<200){
    //         //bonus = 10;
    //         system.debug('$100 degerinde ki alisveris karsiligi  $' + bonus + ' degerinde bonus kazandiniz.');

    //     }else if (cost>=200 && cost<500){
    //         //bonus = 30;
    //         system.debug('$300 degerinde ki alisveris karsiligi  $' + bonus + ' degerinde bonus kazandiniz. ' );

    //     }else if (cost>=500){
    //         //bonus = 50;
    //         system.debug('$750 degerinde ki alosverisinizin karsiligi  $'  + bonus +  ' degerinde bonus kazandiniz. ');

    //     }
    //     return bonus;
//}
    
    // public decimal practiceFive(integer adetx, string order1){
    //     integer price;
    //     switch on order1 {
    //         when 'Ekmek' {
    //             price = 1;  
    //         }
    //         when 'Simit'{
    //             price = 2;
    //         }
    //         when 'Kek'{
    //             price = 3;
    //         }
            
    //     }
    //     decimal totalPrice = adetx * price;
    //     system.debug('Aldiginiz urun ' + adetx + ' adet ' + order1  + ' tutari ' + totalPrice + ' $ dir. ');
    //     return price;
    //}
        // public decimal practiceFive1(integer adetx, string order1){
        // integer price;
        // if (order1 == 'ekmek') {
        //     price = 1;
            
        // } else if (order1 == 'simit'){
        //     price = 2;
        // } else if (order1 == 'kek'){
        //     price = 3;
        // }  
        // decimal totalPrice = adetx * price;
        // system.debug('Aldiginiz urun ' + adetx + ' adet ' + order1  + ' tutari ' + totalPrice + ' $ dir. ');
        // return price; 
        // }
        public  Decimal practiceSix(decimal kenarx, decimal kenary, string islem){
            decimal result;

            if (islem == 'alan') {
                result =math.round(kenarx*kenary); 
                system.debug('Dikdortgenin alani: ' + result);
            
            }else if (islem == 'cevre'){
                result = math.round(2*(kenarx + kenary));
                system.debug('Dikdortgenin cevre uzunlugu: ' + result);

            }else{
                system.debug('Hatali giris yaptiniz. ' + 'Lutfen tekrar deneyiniz. ');  
            }
            return result;  
            }
         
            public static string practiceSeven(decimal kilo, decimal boy){
                string result = '';
                decimal BMI = kilo/(boy*boy);
                decimal w = BMI.setScale(1);

                if (BMI>0 && BMI<18.4){
                    result = 'zayif';
                    system.debug('BMI : ' + result + '=' + w); 
                }else if(BMI>=18.5 && BMI<=24.9){
                    result = 'normal';
                    system.debug('BMI : ' + result + '=' + w);    
                }else if(BMI>=25 && BMI<29.9){
                    result = 'kilolu';
                    system.debug('BMI : ' + result + '=' + w);
                }else{
                    system.debug('Lutfen girmis oldugunuz boy ve kilo degerlerini kontrol ediniz!');
                }
                return result;
        }
            public static integer practiceEight(integer num1, integer num2){
               integer sum = 0;

               if (num1 < num2){
                   for(integer i = num1; i<=num2; i++){
                       sum = sum +i;
                   }
                   
               } else if(num1 > num2){
                   for(integer i = num2; i<=num1; i++){
                       sum = sum +i;
                   }
               }else{
                   sum = num1+num2;
              }
            system.debug('Bu sayilarin arasinda ki toplam sayi  : '  + sum);
            return sum;   
               }
            }
        
    

