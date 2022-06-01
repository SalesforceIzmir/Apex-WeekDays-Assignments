public class EmployeeInfo {
    /*1. Create one class called EmployeeInfo, which contains the method called showInfo. This method should accept one integer which will be called empNumber and will show the name of the Employee. This class will hold the values of employee in one map called employeeMap. 

From anonymous, first we will set the info of each employee and than we will pass the number of employee while calling the showInfo method.

== Example ==
-----------------------
Input: 001
Output: Jimmy Thakkar

Input: 002
Output: James Leo*/
public static string showInfo(integer empNumber){
   string employeeName= '';
   map<integer,string> employeeMap = new map<integer,string>();
   employeeMap.put(001, 'Jimmy');
   employeeMap.put(002, 'Tommy');
   employeeMap.put(003, 'Willy');

   boolean empNumberSet =  employeeMap.containsKey(empNumber);
   employeeName = employeeMap.get(empNumber);
   //employeeName= employeeMap[empNumber];

        if (empNumberSet){
            employeeName = employeeMap.get(empNumber);
            
        } else{
            employeeName='Employee does not exist!'; 
            
}
        system.debug(employeeName);    
        return employeeName;

}
}