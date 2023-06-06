ListExtra_Assignment.schoolsList('English');
ListExtra_Assignment.schoolsList('Turkish');
ListExtra_Assignment.schoolsList('Japanese');

map<string, list<string>> sMap = ListExtra_Assignment.schoolsMaps();
system.debug('List of English medium schools-->' + sMap.get('English'));
system.debug('List of Turkish medium schools-->' + sMap.get('Turkish'));
system.debug('List of Japanese medium schools-->' + sMap.get('Japanese'));
