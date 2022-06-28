public class LoopDemo {
    // public void print_int_while(){
    //     integer count = 1;
    //     while (count <=25){
    //         system.debug(count);
    //         count++;


    //     }
    // } 
    public void print_N_numbers(integer m){
        for (integer i=0; i < m; i++){
            system.debug(i);
        }

    }

    public integer print_sum_N_numbers(integer n){
        integer sum = 0;
        for (Integer i = 0; i <= n; i++) {
          sum += i;
          
        }
        system.debug('summation is ' + sum);
        return sum;
    }
}