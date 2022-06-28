//craeting a class
public class PrimitiveDataTypeDemo {
    //creating a method
     public void printBasicDataType(){
     //method body

     //datatype  variablename  value
     string batchName = 'Falcons';
     Integer totalCandidates = 131;
     boolean isAdminComleted = true;
//print all of them using system.debug
//using variable
system.debug('batch name is ' + batchName);
system.debug('total # of candidates: ' + totalCandidates);
system.debug('admin completed?' + isAdminComleted);
//creating a decimal value
decimal decValue = 27.01;
system.debug('decimal: ' + decValue);

//creating Long value  It has L at the end of the number
Long longValue = 74393439230293L;
system.debug('long: ' + longValue);
//creating variables with object data type

Object obj = 'This is a string';
Object obj2 = 10;
system.debug('object 1: ' + obj);
system.debug('object 2: ' + obj2);

//ID perresents salesforce ID.
ID id1 = '00D5f000009krSr'; 
system.debug('id ' + id1);




     }

    
}