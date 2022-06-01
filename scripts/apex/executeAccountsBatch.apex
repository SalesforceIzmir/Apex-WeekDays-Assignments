List<Account> accs = [SELECT id, name FROM Account];
AccountQueueableExample qa = new AccountQueueableExample(accs);
id jobid = system.enqueueJob(qa);
system.debug('job id is ' + jobid);



// //create an instance
// AccountsBatch ab = new AccountsBatch();
// //execute batch with default 200
//  database.executeBatch(ab, 10);