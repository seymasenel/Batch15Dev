public class Studentt {
    
    public string fisrtName;
    public string lastName;
    private string schoolName= ' Dream School';
    public string className;
    public string language;
    public boolean art;
    public boolean sport;
    public integer ingGrade;
    public integer mathGrade;
    public integer fenGrade;

    public Studentt(){
        system.debug('Yeni bir ogrenci kaydi yapildi..');
    }    
    public Studentt(string fName, string lName, integer ingNotu){
        this(); // bunu yazdigim zaman parametresiz olan constructor da calissin anlamina geliyor.
        this.fisrtName=fName;
        this.lastName=lName;
        this.ingGrade=ingNotu;
    }
}