public class Humans {
    public integer age(date birthdate){
        integer a =1;
        date todayDate = date.today();
        integer daysAge = birthdate.daysBetween(todaydate);
        a = integer.valueOf(daysAge/365);
        return a;

    }
}