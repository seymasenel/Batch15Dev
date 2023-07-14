string jsonStr ='{"attributes":{"type":"Account","url":"/services/data/v58.0/sobjects/Account/0012t00000Ro35WAAR"},"Id":"0012t00000Ro35WAAR","Name":"Sample Account for Entitlements"}';

Account acc =(Account)(Account)JSON.deserialize(jsonStr, Account.Class);
System.debug(acc.id);
System.debug(acc.name);

RestCallout.getAirlines();
