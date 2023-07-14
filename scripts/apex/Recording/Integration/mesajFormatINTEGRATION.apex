//Apex Format
Account acc =[SELECT Id, Name, Type, Industry, AnnualRevenue 
              FROM Account
              WHERE Industry !=null
              AND AnnualRevenue != null
              LIMIT 1];
System.debug(acc);
Account:{Id=0013x00002SN3TIAA1,
         Name=Account Dml, 
         Industry=Energy,
         AnnualRevenue=100000
        }

//JSON Format
{        "Id"="0013x00002SN3TIAA1",
         "Name"="Account Dml", 
         "Industry"='Energy',
         "AnnualRevenue"=100000
}
//sobject recor/recordlar JSON formata nasil donusturulur?
//JSON Class methodlari arasinda bulunan serialize methodlari ile 
//JSON.serialize(objectToserialize)
//Return type : string

//Bir Record
Account acc =[SELECT Id, Name, Type, Industry, AnnualRevenue 
              FROM Account
              WHERE Industry !=null
              AND AnnualRevenue != null
              LIMIT 1];
string jsonString = JSON.serialize(acc);
System.debug(jsonString);

{"Id":"0013x00002SN3TIAA1","Name":"Account Dml","Industry":"Energy","AnnualRevenue":100000}

//Birden fazla record
List<Account> acc =[SELECT Id, Name, Type, Industry, AnnualRevenue 
              FROM Account
              WHERE Industry !=null
              AND AnnualRevenue != null
              LIMIT 3];
string jsonString = JSON.serialize(acc);
System.debug(jsonString);
[
    {       
        "Id": "0013x00002SN3TIAA1",
        "Name": "Account Dml",
        "Industry": "Energy",
        "AnnualRevenue": 100000
    },
    {        
        "Id": "0013x00002RYUntAAH",
        "Name": "GenePoint --SI--SI",
        "Type": "Customer - Channel",
        "Industry": "Biotechnology",
        "AnnualRevenue": 40000000
    },
    {        
        "Id": "0013x00002RYUnrAAH",
        "Name": "United% Oil & Gas, UK --SI--SI",
        "Type": "Customer - Direct",
        "Industry": "Energy",
        "AnnualRevenue": 10000
    }
]

//JSON format sObject recordlara nasil donusturulur
//JSON Class methodlari arasinda bulunan deserilize methodalri ile
//JSON.deserialize(jsonString,apexType)
//Return type : donusturmek istedigimiz apex type

string jsonString = '{"Name":"Integration\'a Giris","Industry":"Energy","AnnualRevenue":100000}';
Account acc = (Account)JSON.deserialize(jsonString, Account.Class);
System.debug(acc);
insert acc;

//XML format

<Account>
    <Name>Integratina Giris</Name>
    <Type>Energy</Type>
    <Industry></Industry>
    <AnnualRevenue>100000</AnnualRevenue>
</Account>

RestCallOutsPreC.getAnimals();
RestCallOutsPreC.getUsers();
RestCallOutsPreC.postAnimals();
RestCallOutsPreC.postUsers();

RestCallOut.getanimals();