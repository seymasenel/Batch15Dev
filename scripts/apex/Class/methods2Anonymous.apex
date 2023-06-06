MethodsDemo2 m2 = new MethodsDemo2();
boolean r1 = m2.nameContainsA('Seyma');
system.debug('Seyma contains a? ' + r1);

system.debug('Vicky contains a?' + m2.nameContainsA('Vicky'));

boolean r2 = m2.nameContainsA('Barcelona');
system.debug('Barcelona contains a? ' + m2.nameContainsA('Barcelona'));
system.debug('Barcelona contains a? ' + r2);

