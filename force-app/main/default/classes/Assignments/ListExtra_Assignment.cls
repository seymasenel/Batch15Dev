public class ListExtra_Assignment {
    public static list<string> schoolsList(string medium) {
        
        list<string> schoolOfCity = new list<string>{'S1 English', 'S2 English', 'S3 Turkish', 'S4 English', 'S5 Turkish', 'S6 Japanese'};

        list<string> returnS = new list<string>();

        for(string eachSchool : schoolOfCity){
            if(eachSchool.contains(medium)){
                returnS.add(eachSchool);
            }
        }
        system.debug(returnS);
        return returnS;
    }

    public static map<string, list<string>> schoolsMaps(){
       
        map<string, list<string>> medListSchools = new map<string, list<string>>();

        list<string> mediums = new list<string>{'English', 'Turkish', 'Japanese'};

        for(string medium: mediums){
           medListSchools.put(medium, schoolsList(medium));
    
        }
        return medListSchools;

    }
}