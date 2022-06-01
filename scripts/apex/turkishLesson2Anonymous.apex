//class in adiyla obje urettik.
TurkishLesson2 t = new TurkishLesson2();
t.variableDefine();
t.text = 'Salesforce\'u ogrendim...';
system.debug(' t objesi => ' + t);


TurkishLesson2 l = new TurkishLesson2();
l.variableDefine();
system.debug('l Objesi => ' + l);
l.privateMethod();

TurkishLesson2 t2 = new TurkishLesson2();
t2.welcome('Mary');
t2.welcome('Ali');
t2.welcome('Funda');

TurkishLesson2 t3 = new TurkishLesson2();
t3.welcome('Esma');

TurkishLesson2 t4 = new TurkishLesson2();
t4.stringMethod1('Hello World');

TurkishLesson2 t5 = new TurkishLesson2();
decimal tplm1 = t5.price('Yolun Kaderi' , 35.99,  5);
decimal tplm2 = t5.price('Oruc' , 15.99,  6);
Decimal tplm = tplm1 + tplm2;
system.debug('Toplam odeyeceginzi ucret = ' + tplm);


