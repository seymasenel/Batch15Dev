public class DML3_Assgn {
    public static void createBulkContacts() {
        list<contact> listOfContact = new list<contact>();
        for (integer i=0; i<4; i++) {
            contact c1 = new contact();
            c1.FirstName='Mark';
            c1.LastName='Rufallo';
            listOfContact.add(c1);
        }
        for (integer i=0; i<3; i++) {
            contact c2 = new contact();
            c2.FirstName='Chris';
            c2.LastName='Hemsworth';
            listOfContact.add(c2);
        } 
        for (integer i=0; i<3; i++) {
            contact c3 = new contact();
            c3.FirstName='Scarlett';
            c3.LastName='Johansson';
            listOfContact.add(c3);
        }
        if(!listOfContact.isEmpty()){
            insert listOfContact;
        }
    }
    public static integer updateBulkContacts(string lastname, string phoneNumber) {
        list<contact> updateContactsPhone= [select id, lastname, phone from contact where lastname=:lastname];
        list<contact> updatedContacts = new list<contact>(); 
        for(contact eachCon: updateContactsPhone){
            eachCon.Phone=phoneNumber;
            updatedContacts.add(eachCon);
        }
        if(!updatedContacts.isEmpty()){
            update updatedContacts;
        }
        return updateContactsPhone.size();
    }
}