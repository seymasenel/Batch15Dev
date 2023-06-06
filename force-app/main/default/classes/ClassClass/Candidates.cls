public class Candidates {
    public string name;
    public string gender;
    public static string companyName;
    public static integer count = 0;

    public Candidates(){
        count++;
    }
    
    public void details(){
        system.debug('Candidate name is ' + name );
        system.debug('Gender is ' + gender );
        system.debug('Company name is  ' + companyName);   
        system.debug('------------------------');
    }
}
