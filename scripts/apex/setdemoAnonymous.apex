setDemo.citySet();
setDemo.randomInteger();


List<integer> l1 = new List<integer>{10,15,21,99,55,44,10,99};
set<Integer> set3 = SetDemo.setFromList(l1);
system.debug('set 3 = ' + set3);

set<string> cities = new set<string>();
cities.add('Tokyo');
cities.add('Lisbon');
cities.add('Berlin');
cities.add('Nairobi');
cities.add('Tokyo');
cities.add('TOkyo');
cities.add('tokyo');
cities.add('Berlin');
system.debug('set of cities ' + cities);
set<string> citiesCaps = SetDemo.capitalizeSet(cities);
system.debug(citiesCaps);



