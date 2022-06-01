public class StringDemoClass {
    public void stringMethod1() {
string sessionDescription = 'learning string methods in apex language.'; 
//1/length
integer lengthOfStr = sessionDescription.length();
system.debug('length of string is = ' + lengthOfStr);

//upper Case
string sessionDescriptionInCaps = sessionDescription.toUpperCase();  
system.debug('in caps = ' + sessionDescriptionInCaps);
system.debug('original string = ' + sessionDescription);
    }
}
