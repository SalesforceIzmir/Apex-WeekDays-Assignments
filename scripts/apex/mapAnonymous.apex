map<string, string> mapCntCurrency = new Map<String, string>();
mapCntCurrency.put('USA',  'Dollar');
mapCntCurrency.put('Japan',  'Yen');
mapCntCurrency.put('Turkey',  'Lira');
mapCntCurrency.put('USA',  'Dollar');
mapCntCurrency.put('France',  'Euro');
mapCntCurrency.put('India',  'Rupee');

system.debug('Map of country vs currency: ' + mapCntCurrency);

string IndiaCurrency = mapCntCurrency.get('India');
string TurkeyCurrency = mapCntCurrency.get('Turkey');

system.debug('India currency ' + IndiaCurrency);
system.debug('Turkey currency ' + TurkeyCurrency);



list<string> currencyList = mapCntCurrency.values();
system.debug('Country in map : ' + currencyList);

set<string> countrySet = mapCntCurrency.keySet();
system.debug('Country in map : ' + countrySet);

for(string eachKey: countrySet){
    string eachCurrency = mapCntCurrency.get(eachKey);
    string printString = 'country is ' + eachKey + ', its currency is ' + eachCurrency;
    system.debug(printString);
}
    
