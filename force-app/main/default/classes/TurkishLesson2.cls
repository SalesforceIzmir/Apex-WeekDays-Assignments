public  class TurkishLesson2 {
    //1.save 2. deploye 3. apex de objet uretme 4. object metodu cagirma.
    public void variableDefine(){
        string name1 = 'John';
        integer number1 = 11;
        Boolean isCheck = true;
        
        // system.debug('name: ' + name1);
        // system.debug('number ' + number1);
        // system.debug('isCheck: ' + isCheck);
        
        //bu sekilde de yazilir ayni satir icinde
        system.debug('name : ' + name1 + ' number1 : ' + number1 + 'isCheck : ' + isCheck);
        
    }
    public string text = 'Ben Salesforce ogreniyorum...';
    private integer counter = 0;

    public void privateMethod(){
        system.debug('private counter : ' + counter);
        system.debug('text : ' + text);
    }

    public void welcome(string nm){
        counter++;
        //counter = counter + 1;
        system.debug(nm + '' +  counter + ' . ogrenci olarak hosgeldin..');

    }

    public integer stringMethod1(string str){
        system.debug(str);
        return str.length();


    }

    public Decimal price(string kName, Decimal kFiyat, Integer kAdet){
        Decimal total = kFiyat*kAdet;
        system.debug(kName + ' kitabindan ' + kAdet + ' adet aldiniz. Odeyeceginiz ucret = ' + total);
        return total;

    }


}