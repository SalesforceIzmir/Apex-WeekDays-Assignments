public class MyCity {
    public void cityInformation(){
        date UsaKurulus = date.newInstance(1776, 07, 04);
        system.debug('ABD nin kurulus tarihi ' + UsaKurulus);
    
        Time sunRise = time.newInstance(6, 17, 0, 0);
        system.debug('Sun rises in Chicago ' + sunRise);
    
        date todaysDate = date.today();
        Datetime afterthirtsix = todaysDate.addMonths(-36);
        system.debug('Bugunun tarihinden 36 ay oncesi ' + afterthirtsix);

    
    }
        public string favoriteCafe ='';
        public string favoritePark ='';
        public string favoriteMall ='';
        public string favoriteStore ='';

        public string myFavariteLocations (string location){
          system.debug(' The most beatiful cafe in my city is: ' + favoriteCafe + ','  + ' most beatiful park is: ' + favoritePark + ',' + ' most beautiful mall is: ' + favoriteMall  +  ',' + ' and ' + ' the most beatiful store is: ' + favoriteStore +'.');  

          return location;

        }
        public void printString(integer a, string b){
            for(integer i = 1; i <= a; i++){
                system.debug(i + ' ' +b);
            }
        }
    
 

    }

