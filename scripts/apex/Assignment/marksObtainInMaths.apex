map<string, integer> marksObtainInMaths = new map<string, integer>{ '0111CE112' => 40, '0111CE102' => 19, '0111CE100' => 33, '0111CE098' => 40};
marksObtainInMaths.put('0111CE103', 14);
marksObtainInMaths.put('0111CE105', 49);

System.debug(marksObtainInMaths);

set<string> uniqueRollNumberSet = marksObtainInMaths.keySet();
system.debug('All roll number of set ---> ' + uniqueRollNumberSet);

list<integer> marksObtainList = marksObtainInMaths.values();
system.debug('All the Marks obtain ----> ' +marksObtainList) ;


for(string rollNumber : uniqueRollNumberSet){
   
   integer eachMark= marksObtainInMaths.get(rollNumber);
    
    if(eachmark<20){
        system.debug(rollNumber + '-----> is not qualified for next class.. ' + eachMark);
    }else{
        system.debug( rollNumber + '----> Qualified for next class..' + eachMark);
    }
}
    