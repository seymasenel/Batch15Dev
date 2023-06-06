IfElseConditinal seyma = new IfElseConditinal();
string seyma1 = seyma.positiveOrNegative(-111);
system.debug('Sayimiz = ' + seyma1);
string seyma2 = seyma.positiveOrNegative(11);
system.debug('Sayimiz = ' + seyma2);
string seyma3 = seyma.positiveOrNegative(0);
system.debug('Sayimiz = ' + seyma3);

IfElseConditinal o = new IfElseConditinal();
string o1 = o.ortalama(75, 95, 100);
system.debug(o1);

IfElseConditional ifc3 = new IfElseConditional();
string result1 = ifc3.tasKagitMakas('kagit', 'tas');
System.debug('kazanan => ' + result1);
string result2 = ifc3.tasKagitMakas('makas', 'tas');
System.debug('kazanan => ' + result2);
string result22 = ifc3.tasKagitMakas('makas', 'makas');
System.debug('kazanan => ' + result22);
string result3 = ifc3.tasKagitMakas('tornavida', 'tas');
System.debug('kazanan => ' + result3);

IfElseConditional ifc4 = new IfElseConditional();
string fiyat1 = ifc4.switchMethod('Mango');
System.debug(fiyat1);
string fiyat2 = ifc4.switchMethod('Banana');
System.debug(fiyat2);
string fiyat3 = ifc4.switchMethod('Cucember');
System.debug(fiyat3);