AccountSchedulable aSche = new AccountSchedulable();
string cron = '0 0 13 * * ?';
system.schedule('Schedule account job via crom', cron, aSche);