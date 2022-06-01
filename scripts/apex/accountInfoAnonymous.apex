AccountInfo.showAccounts();

//1. Write an SOQL to get the records of contact object, where the type of account is Prospect.
List<Contact>contactProspect = [SELECT ID, Account.name FROM contact WHERE account.type = 'Prospect'];

//2. Write an SOQL to get the records of Salesforce Ticket, where the status of Salesforce Project is New.

