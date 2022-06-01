public class HomeWorkApril8 {
    // public void host(){
    //     string compare = 'Welcome to the Salesforce world, apex is host in this world.';

    //     Boolean sentence = compare.contains('HOST');
    //     Boolean sentence2 = compare.containsIgnoreCase('HOST');

    //     System.debug(sentence);
    //     System.debug(sentence2);
        
    //}
    // public void egualOrNot(){
    //  string str = 'My favourite part is apex';
    //  string str2 = 'MY FAVOURITE PART IS APEX';

    //  Boolean compare2strings = str.equals(str2);
    //  system.debug(compare2strings);

    //  Boolean compare2stringsIgnoreCase = str.equalsIgnoreCase(str2);
    //  system.debug(compare2stringsIgnoreCase);
    // }
    public void dateOfJoin(){
        date stardDate = date.newInstance(2015, 05, 05);
        system.debug('The employee has started working in our conpany on ' + stardDate);

        date today = date.today();
        Integer companyExperinces = stardDate.daysBetween(today);
        system.debug('The employee has been working with us for ' + companyExperinces + ' days. ');


    }

}
