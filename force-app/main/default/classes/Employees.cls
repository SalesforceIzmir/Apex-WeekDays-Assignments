public class Employees {
    public static void EmployeesName() {
        List<String>listofEmployess = 
        new List<String>();
        listofEmployess.add('Jill');
        listofEmployess.add('Elizabeth');
        listofEmployess.add('Niha');
        listofEmployess.add('Megan');

        listofEmployess.sort();

        system.debug('The names of our employees are: ' + listofEmployess);

    }
}