TurkishLesson3 t3 = new TurkishLesson3();
t3.welcome();
t3.firstName = 'Burak';
t3.lastName = 'Berk';
t3.className = 'batch 6';
System.debug('t3 objesi = > ' + t3);

TurkishLesson3 l3 = new TurkishLesson3();
l3.firstName = 'John';
l3.lastName = 'Sun';
System.debug('l3 objesi => '+ l3);

TurkishLesson3 k3 = new TurkishLesson3();
k3.newCourse('ABC');
System.debug('k3 => ' + k3);

TurkishLesson3 j3 = new TurkishLesson3();
System.debug('j3 = > ' + j3);

TurkishLesson3 h3 = new TurkishLesson3();
string message1 = h3.ehliyet(12);
System.debug(message1);
string message2 = h3.ehliyet(22);
System.debug(message2);
h3.ehliyet2(35);

TurkishLesson3 p3 = new TurkishLesson3();
p3.numberZero(-22);
p3.numberZero(200);
p3.numberZero(0);