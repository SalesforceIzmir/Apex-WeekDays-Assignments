public with sharing class TurkishLesson5 {
   public static void listMethod(){
       list<string> dersList = new list<string>();
       system.debug('Listemiz bos iken ' +  dersList.isEmpty());

       dersList.add ('Turkce');
       dersList.add ('Fen Bilgisi');
       dersList.add ('Tarih');

       system.debug(dersList);
       system.debug(dersList.get(1));
       system.debug(dersList[1]);
       system.debug('index number i donduruyor ' + dersList.indexOf('Fen Bilgisi'));
       system.debug('Listemiz dolu iken ' +  dersList.isEmpty());
       system.debug('Listemiz dolu iken ' +  !dersList.isEmpty());
       system.debug('Listemiz eleman sayisi ' +  dersList.size());

       List<Integer> numList = new List<Integer>{23, 7, 4, 18};
       system.debug(numList);
       numList.sort();
       system.debug('sorth methodu uygulaninca ' + numList);

   }
}
