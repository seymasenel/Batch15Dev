public class OpportunityHandler {
    public static void oppDescription(list<opportunity> oppNList, list<opportunity> oppOList, map<id, Opportunity> oppNMap, map<id, Opportunity> oppOMap ) {
        for(Opportunity eachOpp: oppNList){
            if(eachOpp.StageName != oppOMap.get(eachOpp.id).StageName){
                if(eachOpp.StageName =='Closed Lost'){
                    eachOpp.Description='Cok uzgunuz.';
                }
                if(eachOpp.StageName == 'Closed Won'){
                    eachOpp.Description='Yasasin';
                }
                if(eachOpp.StageName == 'Prospecting'){
                    eachOpp.StageName.addError('Sureci basa donduremezsiniz!');
                }
            }
        }
    }
}