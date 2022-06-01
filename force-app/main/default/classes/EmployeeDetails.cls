public  class EmployeeDetails {
    public string name;
    public string email;
    public string phone;

    public void showDetails(string n, string e, string p){
        string name = n;
        string email = e;
        string phone = p;
        system.debug('Employee Name = ' + name);
        system.debug('Employee email = ' + email);
        system.debug('Employee Phone = ' + phone);
        

    }


}
