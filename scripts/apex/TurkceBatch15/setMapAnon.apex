list<string> sehirler = new list<string>{'istanbul', 'New York', 'Toronto',
'London', 'Amsterdam', 'New York'};
system.debug('sehirler => ' + sehirler);

set <string> ulkeler = new set <string>{'Turkey', 'USA', 'Canada', 'Turkey', 'Neterland', 'Germany'};
system.debug('Ulkeler => ' + ulkeler);

set<string> sehirlerSet = new set<string>();
sehirlerSet.addAll(sehirler);
system.debug('Set ile sehirler => ' + sehirlerSet);

map<integer, string > ogrenciMap = new Map<integer, string>();
ogrenciMap.put(11, 'Seyma');
ogrenciMap.put(14, 'Mete');
ogrenciMap.put(22, 'Hakan');
ogrenciMap.put(33, 'Ali');
ogrenciMap.put(45, 'Ayse');
ogrenciMap.put(14, 'Amanda');
system.debug('Ogrenci map listesi=> '+ ogrenciMap);

set<integer> ogrenciNo = new set<integer>();
ogrenciNo=ogrenciMap.keySet();
system.debug(ogrenciNo);

list<string> isimlist = new list<string>();
isimlist=ogrenciMap.values();
system.debug('Ogrenci isimleri==> ' +isimlist);