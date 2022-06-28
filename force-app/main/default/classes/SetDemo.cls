public class SetDemo {
     public static void citySet(){
    //     Set<String> cities = new Set<String>();
    //     cities.add('Tokyo');
    //     cities.add('Lisbon');
    //     cities.add('Berlin');
    //     cities.add('Izmir');
    //     cities.add('Berlin');
    //     cities.add('Tokyo');
    //     system.debug('set of citieis ' + cities);

    }
    public static void randomInteger(){
        Set<integer> setInteger = new Set<Integer>();
        setInteger.add(10);
        setInteger.add(15);
        setInteger.add(21);
        setInteger.add(15);
        setInteger.add(10);
        setInteger.add(15);
        system.debug('Set of random integers ' +setInteger);
    }
    public static set<Integer> setFromList(List<Integer> intList){
        set<integer> intSet = new Set<Integer>();
        intSet.addAll(intList);
        return intSet;
    }
}