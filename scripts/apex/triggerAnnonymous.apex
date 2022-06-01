list<Account> acList = new list<Account>();
account ac = new account();
ac.name = 'ac trigger name';
acList.add(ac);
account ac2 = new account();
ac2.name = 'ac trigger name 2';
acList.add(ac2);

insert acList;

ac.name = 'ac trigger name update';
update ac;