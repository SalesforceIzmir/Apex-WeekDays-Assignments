car bm = new car();
bm.carColor = 'black';
bm.carName = 'bmw';
bm.switchOn();
system.debug('car obj 1 = ' + bm);

car lm = new car();
lm.carColor = 'red';
lm.carName = 'lambo';
lm.switchOn();
system.debug('car obj 2 = ' + lm);

car vw = new car();
vw.carColor = 'white';
vw.carName = 'polo';
vw.drive();
vw.driveAtMaxSpeed();
system.debug('vw = ' + vw);

