//Example of converting Salesforce data into a JSON ormat

//1. Get Account data from Salesforce and convert to JSON

Account acc=[SELECT Id, Name, Phone, Website FROM Account WHERE ID != Null LIMIT 1];

String jsonAcc =JSON.serialize(acc);
System.debug(jsonAcc);

String jsonAccPretty =JSON.serializePretty(acc);
System.debug('JSON Account Pretty: ' + jsonAccPretty);

//2.Get Contact data from salesforce and convert to JSON
List<Contact> conlist =[SELECT Id, FirstName, LastName, Email, Phone FROM Contact WHERE ID != Null LIMit 5];
String jsonCons =JSON.serializePretty(conlist);
System.debug(jsonCons);

