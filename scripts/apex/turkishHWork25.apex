Account acc = new Account();
Account accArizona = [select id, name from account where name = 'University of Arizona'];

acc.name = 'Summer Fest LLC';
acc.Type = 'Technology';
acc.Rating = 'Hot';
acc.AnnualRevenue = 200000000;
acc.parentId = '0018c00002EuLfkAAF';

insert acc;
system.debug(acc);

list<contact> conList = new List<Contact>();
for(integer i=1; i<4; i++){
    contact con = new contact(); //constructor
    con.lastName = 'Event Planner ' + i;
    con.phone = '12345789';
    con.LeadSource = 'Web';
    con.AccountId = acc.id;
    conList.add(con);
    system.debug('inside ' + conList);


insert conList;
system.debug('Outside ' + conList);
}
