integer leadSayisi=[select count() from lead];
system.debug('Lead sayisi->' + leadSayisi);

aggregateresult toplam =[select sum(amount), avg(amount) from opportunity];
system.debug('Amountlarin toplami-- ' + toplam);
system.debug('Toplam --> ' + toplam.get('expr0'));
decimal result = (decimal)toplam.get('expr0');
system.debug('Toplam --> ' + result);

system.debug('Ortalama --> ' + toplam.get('expr1'));
decimal ort= (decimal)toplam.get('expr1');
system.debug('Ortalama --> ' + ort.setScale(1));