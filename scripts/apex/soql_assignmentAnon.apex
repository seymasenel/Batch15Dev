SOQL_Assignment.soql_WhereClause();
SOQL_Assignment.soql_FromMethod();

SOQL_Assignment.contactAcc();
SOQL_Assignment.accountCont();

list<Employee__c>  empList = SOQL_Assignment.topEmployees();
for(employee__c eachEmp : empList){
    System.debug(eachEmp);
}

SOQL_Assignment.mostPopulatedCountry();

