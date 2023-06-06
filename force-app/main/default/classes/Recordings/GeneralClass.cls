public  class GeneralClass {
    public void createStudents() {
        Student s1 = new Student();
        s1.name = 'SRK';
        s1.birthDate = date.newInstance(1991, 9, 27);
        s1.schoolName = 'Ataturk Ilkokulu';
        system.debug(s1);

        Student s2 = new Student();
        s2.name = 'MSD';
        s2.birthDate = date.newInstance(1994, 6, 11);
        s2.schoolName = 'Geyve Lisesi';
        system.debug(s2);
    }
    public void jusPrintAnything(){
        integer i = 5+5+5+5+9;
        system.debug(i);
    }
}