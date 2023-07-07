map<string, countryCode__c> allCountryCode = CountryCode__c.getAll();
system.debug(allCountryCode);

//if we just to get record for any one country we can use getinstance method

CountryCode__c usaCC = Countrycode__c.getinstance('United States');
System.debug('Code of United States is ==> ' + usaCC.code__c);

//we can create TriggerSwitch
    //name 
    //checkbox -> enabled(Name od custom field)

    //records looks like below
    // Acoount       ->True
    //Contact        ->True
    //Opportunity    ->False