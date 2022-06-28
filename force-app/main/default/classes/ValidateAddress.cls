public class ValidateAddress {
    public void ValidateAddress (){

    string houseName = 'Alim';
    string streetName = 'Colombia';
    string cityName = 'Cleveland';
    string stateName = 'Ohio';
    string stateISOCode = '11f111';
    string countryName = 'Turkey';
    string countryISOCode = '222F222';

    system.debug('Number of characters in the street name ' + houseName.length() );
    system.debug('Check if the street name contains house name in it or not ' + streetName.contains(houseName) );
    system.debug('Find if the street name contains the state iso code in it ' + streetName.contains(stateISOCode) );
    system.debug('Convert the state iso code ' + stateISOCode.toUpperCase());
    system.debug('Convert the country iso code ' + countryISOCode.toLowerCase());
    system.debug('country name ' + countryName.toUpperCase());
    system.debug('city name ' + cityName.toLowerCase() );
    system.debug('state name ' + stateName.toLowerCase());

    string concat = houseName +' '+ stateName;
    system.debug('My full address is ' +  concat );





    }
    



}