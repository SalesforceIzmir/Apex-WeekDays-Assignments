Calculator c = new Calculator();
integer sum11 = c.add(10,15);
system.debug('sum 11 = ' + sum11);

integer sum22 = c.add(15, 15, 15);
system.debug('sum 22 = ' + sum22);



//c.welcomeMessage();
//c.printNewMessage('this is new age calc.'); //we are passing string. 


integer sum2 = c.add(100,155);
system.debug('sum 2 = ' + sum2);
integer finalSum = c.add(sum, sum2);
system.debug('final sum = ' + finalSum);

string message = 'this is a new msg for calc class';
c.printNewMessage(message);//we are still passing a string.

c.printNewMessage2('this is a meesage', date.today());

