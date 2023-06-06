DatetimeMethodsDemo seyma = new DatetimeMethodsDemo();
seyma.calculateAgeInMonths();
seyma.calculateAgeInDays();
seyma.subscriptionEndDate();
seyma.offerEndDateTime();

datetime seymaBirthdate = datetime.newInstance(1991, 9, 27);//is this valid?
long seymaLongBirthdate = seymaBirthdate.getTime();//this returns LONG data which is milliseconds from 1 Jan1970
system.debug('My birthdate in milliseconds: ' +seymaLongBirthdate);

//external system will ASK for DATETIME in milliseconds.