public class AgeOfPerson {
    // public void calculateAge(){
    //     date birthday = date.newInstance(1976, 02, 27);
    //     date today = date.today();

    //     Integer ageInDays = birthday.daysBetween(today);
    //     system.debug('My age is in days: ' + ageInDays);

    //     integer ageInMonths = birthday.monthsBetween(today);
    //     system.debug('My age is in months: '  + ageInMonths);

    //     integer ageInYears = ageInMonths/12;
    //     system.debug('My age is in years: ' + ageInYears);


    //}

    public void remainingDays(){
        date endDate = date.newInstance(2010, 10, 18);
        date today = date.today();

        integer remainingDays = today.daysBetween(endDate);
        system.debug('It will be expire in ' + remainingDays + 'days.');
        

    }
}