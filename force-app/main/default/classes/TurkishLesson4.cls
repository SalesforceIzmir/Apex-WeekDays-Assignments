public class TurkishLesson4 {

    public TurkishLesson4() {
        System.debug('yeni bir obje olustu..');
    }

    public static void metot1(integer num1, integer num2){
        integer sum = 0; // 1 den 10 a kadar sayıların toplamı
        integer counter = 0; // for kaç defa dönüyor..
        List<Integer> intList = new List<Integer>();
        for (Integer i = num1; i <= num2; i++) {
            counter++;
            // counter = counter + 1;
            sum += i;
            intList.add(i);
            //sum = sum + i;
            //System.debug(i);
            //System.debug('counter => ' + counter);
            //System.debug('sum => ' + sum);
        }
        System.debug('toplam sayı adedi => ' + counter);
        System.debug('sayıların toplamı sum => ' + sum);
        System.debug(intList);
        integer ort = sum/counter;
        System.debug(intList + ' sayılarının Aritmetik ortalaması = '+ ort);
    }

    public static void listMetot() {
        //List<String> stringList = new List<String>{'Ali', 'Fatma', 'Beyza','Fatma' };
        List<String> stringList = new List<String>();
        stringList.add('Ali');
        stringList.add('Fatma');
        stringList.add('Beyza');
        stringList.add('Fatma');
        // System.debug('Listenin elemanları => ' + stringList);
        // System.debug('Listenin ilk elemanı => ' + stringList[0]);
        // System.debug('Listenin ilk elemanı get ile => ' + stringList.get(0));
        for (string isim : stringList) {
            System.debug(isim);
        }
    }

    // bir integer liste oluşturun. bu listeye 5 sayı ekleyin. bu 5 sayının toplamını bulun..
    public static void sumList() {
        List<Integer> list1 = new List<Integer>{11, 7, 22, 5, 3};
        // List<Integer> list1 = new List<Integer>();
        // list1.add(11);
        // list1.add(7);
        // list1.add(22);
        // list1.add(5);
        // list1.add(3);
        integer toplam = 0;
        for (integer eleman : list1) {
            System.debug('====== for dönüsü======');
            System.debug('eleman = ' + eleman);
            toplam += eleman;
            System.debug('toplam = ' + toplam);
        }

    }
}