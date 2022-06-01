TurkishLesson4 t4 = new TurkishLesson4();
Boolean a = false;
string glbl = 'Global degisken';

if (a) {
    glbl = 'lokal degisken';
} else {
    glbl = ' else degisken';
}
System.debug(glbl);

System.debug('=====1. deger======');
TurkishLesson4.metot1(5, 40);
System.debug('=====2. deger======');
TurkishLesson4.metot1(23,44);
System.debug('=====3. deger======');
TurkishLesson4.metot1(55,67);

TurkishLesson4.listMetot();

TurkishLesson4.sumList();