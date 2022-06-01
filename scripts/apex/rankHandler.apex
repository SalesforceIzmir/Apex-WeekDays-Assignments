RankHandler rk = new RankHandler();
string prize1 = rk.rankPrize(1);
system.debug('prize1 is ' + prize1);

string prize2 = rk.rankPrize(3);
system.debug('prize2 is ' + prize2);

string prize3 = rk.rankPrize(8);
system.debug('prize3 is ' + prize3);

string prize4 = rk.rankPrize(12);
system.debug('prize4 is ' + prize4);

RankHandler r = new RankHandler();
system.debug(r.rankPrizeSwitch(1));
system.debug(r.rankPrizeSwitch(10));
system.debug(r.rankPrizeSwitch(100));




