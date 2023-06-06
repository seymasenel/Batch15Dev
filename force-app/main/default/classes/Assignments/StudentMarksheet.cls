public class StudentMarksheet {
    string firstName;
    string lastName;
    integer mathematics;
    integer english;
    integer chemistry;
    public static string schoolName;
    
    public StudentMarksheet(){
        schoolName='Salesforce Public School';
    }

    public void setfirtName(string fN){
        this.firstName =fN;
    }
    public string getfirstName(){
        return this.firstName;
    }
    public void setlastName(string lN){
        this.lastName=lN;
    }
    public string getlastName(){
        return this.lastName;
    }
    public void setMarks(integer math, integer eng, integer chmstry){
        this.mathematics= math;
        this.english= eng;
        this.chemistry= chmstry;
    }
    public void showMarksheet(){
        
        system.debug('Student is fullname is ==>' + firstName+ ' ' +lastName + '. School name is => ' + schoolName + ', and student\'s mark\'s => ' + mathematics + ', ' + english+ ', ' + chemistry+ '.');

        integer sumofMark= mathematics + english + chemistry;

        if(sumofMark >= 120){
            system.debug('You are passed!');
        }else{
            system.debug('You need to study more!');
        }

    }
}