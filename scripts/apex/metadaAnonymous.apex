map<string, email_domain__mdt> allDomains = email_domain__mdt.getAll();
//system.debug(allDomains);

for(string eachDomain : allDomains.keySet()){
    system.debug(allDomains.get(eachDomains));
}