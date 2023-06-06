PizzaClass p = new PizzaClass();
p.addcart(2, 'paneer', 'pan pizza');
System.debug(p);
p.cancelCart();
p.feedBack('it was good');
system.debug('--------------------');
PizzaClass p1 = new PizzaClass();
p1.addcart(-12, 'Mushrooms','New-York Style');
p.feedBack('Couldnt recieve.');
System.debug(p1);
system.debug('----------------------');
PizzaClass p2 = new PizzaClass();
p2.addcart(5, 'Feta cheese', 'Margherita');
p2.feedBack('Excellent');
System.debug(p2);



