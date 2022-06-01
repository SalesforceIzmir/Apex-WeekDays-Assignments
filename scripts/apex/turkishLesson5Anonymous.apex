
TurkishLesson5.listMethod();

//math methods
integer a = 15;
integer b = 21;

//Iki sayidan buyuk olanini getiren method
integer buyukSayi = math.max(a, b);
system.debug('buyuk sayi = ' + buyukSayi);

//2 sayidan kucuk olanini getiren method
Integer kucukSayi  = math.min(a, b);
system.debug('kucuk sayi = ' + kucukSayi);

decimal c = 23.63456;
//floor ondalik kismi siler 
decimal d = math.floor(c);
system.debug('floor d = ' + d);

//roundToLong ondalik kismi yuvarlar
decimal e = math.roundToLong(c);
system.debug('round e = ' + e);

//Bilgisayar random(rastgele) 1'den 10'a kadar 1 sayi getirir.
decimal randomNum = math.floor(math.random()*10 + 1 );
system.debug(randomNum);
