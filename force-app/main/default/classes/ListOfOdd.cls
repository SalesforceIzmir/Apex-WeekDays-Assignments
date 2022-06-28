public class ListOfOdd {
    public ListOfOdd() {
        system.debug('Welcome');
        
    }
    public void oddNumber(integer o){
        List<integer> numbers = new List<Integer>();
        for (integer i=0; i<=o; i++){
            if(math.mod(i, 2) !=0){
                numbers.add(i);
            }
        }
        system.debug('Here is the odd numbers' + numbers);
    }
}