TurkishLesson7.createAcc('Account Demo1', 10000);

TurkishLesson7.createAcc('Account Test', 2300000);
//select id, name, account.name, createdDate from contact order by createdDate desc limit 5
//select id, name, createdDate, (select id, name from contacts) from account order by createdDate desc limit 1