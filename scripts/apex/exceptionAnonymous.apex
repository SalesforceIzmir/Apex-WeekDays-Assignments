try{
    account a = new account();
    a.Name = 'something';
    insert a;

}catch (DmlException ex) {
    system.debug('DML went wrong.');

}catch(Exception ex){
    system.debug('something went wrong.');
}



system.debug('Apex is SIMPLE');