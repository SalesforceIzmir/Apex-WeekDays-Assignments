
public class TurkishLesson6 {
    public static void mapMetot() {
        //Farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık değerleri decimal bir liste olan bir map yazalım..
        Map<string, List<Decimal>> cityOfHot = new Map<string, List<Decimal>>();
        List<Decimal> istanbulOfHot = new List<Decimal>{10.5, 21.3, 12.6, 25.3, 13.6, 8.7, 22.2};
        cityOfHot.put('istanbul', istanbulOfHot);
        List<Decimal> denverOfHot = new List<Decimal>{-3.5, 1.3, 2.6, 5.3, 3.6, 8.7, 2.2};
        cityOfHot.put('denver', denverOfHot);

        List<Decimal> austinOfHot = new List<Decimal>{7.8, 12.3, 4.5, 23.3, 8.7, 11.3, 12.3};
        cityOfHot.put('austin', austinOfHot);

        List<Decimal> torontoOfHot = new List<Decimal>{-32,-30,-23,-20,-15,-38,-36};
        cityOfHot.put('toronto', torontoOfHot);

        List<Decimal> newyorkOfHot = new List<Decimal>{12,10.5,23.4,20,15,18,16};
        cityOfHot.put('newyork', newyorkOfHot);
        System.debug(cityOfHot);

        // her şehri 1 haftalık sıcaklık değerleri ile beraber yazdırma..
        for(string key : cityOfHot.keySet()){ 
        System.debug(key + ' şehrine ait 1 haftalık sıcaklık değerleri => ' + cityOfHot.get(key));   
        }

        // her şehrin 1 haftalık sıcaklık ortalaması..
        Map<string, decimal> ortMap = new Map<string, decimal>();
        for(string key : cityOfHot.keySet()){ 
            decimal sum = 0;
            for (decimal eachHot : cityOfHot.get(key)) {
                sum += eachHot;
            }
            decimal ort = (sum/(cityOfHot.get(key).size())).setScale(1);
            ortMap.put(key, ort);
        }
        System.debug('iller ve sıcaklık ort => '+ ortMap);

        // 1 haftalık sıcaklık ortalamalarına göre 10 derece üstünde olan şehirleri bir liste 10 derece ve altındaki şehirleri ayrı bir liste olarak yazdırın..
        Set<String> less10 = new Set<String>();
        Set<String> more10 = new Set<String>();
        for(string city : ortMap.keySet()){
            if (ortMap.get(city)>10) {
                more10.add(city);
            } else {
                less10.add(city);
            }
        }

        System.debug('sıcaklık ortalaması 10 dan büyük olan şehirler => '+ more10);
        System.debug('sıcaklık ortalaması 10 veya 10 dan küçük olan şehirler => '+ less10);
    }

    public static void mapMetot2(Map<string, List<Decimal>> cityOfHot) {
        // her şehri 1 haftalık sıcaklık değerleri ile beraber yazdırma..
        for(string key : cityOfHot.keySet()){ 
        System.debug(key + ' şehrine ait 1 haftalık sıcaklık değerleri => ' + cityOfHot.get(key));   
        }

        // her şehrin 1 haftalık sıcaklık ortalaması..
        Map<string, decimal> ortMap = new Map<string, decimal>();
        for(string key : cityOfHot.keySet()){ 
            decimal sum = 0;
            for (decimal eachHot : cityOfHot.get(key)) {
                sum += eachHot;
            }
            decimal ort = (sum/(cityOfHot.get(key).size())).setScale(1);
            ortMap.put(key, ort);
        }
        System.debug('iller ve sıcaklık ort => '+ ortMap);

        // 1 haftalık sıcaklık ortalamalarına göre 10 derece üstünde olan şehirleri bir liste 10 derece ve altındaki şehirleri ayrı bir liste olarak yazdırın..
        Set<String> less10 = new Set<String>();
        Set<String> more10 = new Set<String>();
        for(string city : ortMap.keySet()){
            if (ortMap.get(city)>10) {
                more10.add(city);
            } else {
                less10.add(city);
            }
        }

        System.debug('sıcaklık ortalaması 10 dan büyük olan şehirler => '+ more10);
        System.debug('sıcaklık ortalaması 10 veya 10 dan küçük olan şehirler => '+ less10);
    }
}
