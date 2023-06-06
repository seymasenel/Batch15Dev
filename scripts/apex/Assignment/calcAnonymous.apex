Calculator calc = new Calculator();
integer sum1 = calc.add(10,15);
system.debug('sum1 is ' + sum1); 

integer x = calc.add(10,15,55);
System.debug('x is ' + x);

date dt = date.newInstance(1991, 9, 27);
boolean bdleapCheck = calc.leapYearCheck(dt);
system.debug('Born on leap year  or not ' +bdleapCheck);

date myBD = date.newInstance(1991, 09, 27);
system.debug('My birthday is, ' + myBD);

integer gun = myBD.day();
integer ay =myBD.month();
integer yil= myBD.year();

integer total= gun + ay + yil;
system.debug(gun+ '+' + ay + '+' + yil + ' =' + total);


date tdy = date.today();
date MCBD = date.newInstance(1867, 10, 7);
system.debug('Bugunun tarihi --> ' + tdy + 'Marie Curie\'nin dogum dogum tarihi ---> ' + MCBD);

integer dayDif =MCBD.daysBetween(tdy);
system.debug('Gun farki -->' + dayDif);

integer monthDif = MCBD.monthsBetween(tdy);
system.debug('Ay farki-->' + monthDif);

integer yil1 = tdy.year();
integer yil2 = MCBD.year();
integer yearDif =yil1 - yil2;
system.debug('Yil farki-->' + yearDif);

boolean IsLeap = date.isLeapYear(yil2);
system.debug('Marie Curie\'nin dogum yili artik yik mi?--> ' + IsLeap);








