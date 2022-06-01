public class TurkishLesson3 {
    public void welcome(){
        System.debug('Hosgeldiniz..');
    }
    public string firstName;
    public string lastName;
    public string className = 'new batch';
    private string courseName = 'softinnovas';
    public void newCourse(string cName){
        courseName = cName;
        System.debug(courseName);
    }
    //integer bir parametre yaşı alsın. 18 yaş ve daha büyükse ehliyet alabilir. 18 yaşından küçükse ehliyet alamaz..
    public string ehliyet(integer age){
        string msg = '';
        if (age < 18) {
            msg = 'Ehliyet alamaz..';
        } else {
            msg ='Ehliyet alabilir..';
        }
        return msg;
    }
    public void ehliyet2(integer age){
         if (age < 18) {
         System.debug('Ehliyet alamaz..');
         } else {
             System.debug('Ehliyet alabilir..');
         }
    }
    //integer bir parametre alan bir metot. gelen sayının 0'a eşit, 0'dan büyük veya 02dan küçük olduğunu bulsun mesaj versin.
    public void numberZero(integer x){
         if (x > 0) {
             System.debug(x + '  Sayiniz pozitif');
         } else if (x < 0) {
             System.debug(x + '  Sayiniz negatif');
         } else {
             System.debug(x + '  Sayiniz 0');
         }
    }
 }
