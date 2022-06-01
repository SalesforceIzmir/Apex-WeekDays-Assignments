public class DatetimeMethodsDemo {
    public void calculateAgeInMonths(){
system.debug('calculate age in months');
date birthDate = date.newInstance(1976,02 , 27);
date todaydate = date.today();

integer ageInMonths = birthDate.monthsBetween(todaydate);
system.debug('My age in months is ' + ageInMonths);
    }
    public void calculateAgeInDays(){
        date birthdate = date.newInstance(1976, 02, 27);
        date todayDate = date.today();
        integer ageInDays = birthDate.daysBetween(todayDate);
        system.debug('age in days; ' + ageInDays);

    }
    public void printSubscriptionEndDate() {
        date subscriptionStartDate = date.today();

        date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('subscription en date = ' +subscriptionEndDate);
        
        integer endDateYear = subscriptionEndDate.year();
        integer endDateMonth = subscriptionEndDate.month();

        system.debug('subs end date year is = ' + endDateYear);
        system.debug('subs end date month is = ' + endDateMonth);


    }
    public void printOffeEndDateTime(){
        datetime dtNow = datetime.now();

        datetime dtOfferEnd = dtNow.addHours(51);
        system.debug('offer will end on: ' + dtOfferEnd);
    
        date offerEndDate = dtOfferEnd.date();
        system.debug('Offer end date is ' + offerEndDate);

        
    }
    
}
