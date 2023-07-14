public class CallOuts {
    public static HttpResponse getUsers() {
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://dummyjson.com/users');
        Request.setMethod('GET');
        Http http = new Http();
        HttpResponse response = http.send(request);
        if(response.getStatusCode()==200){
            string jsonString=response.getBody();
            system.debug(jsonString);
            users usr =(Users)JSON.deserialize(jsonString, Users.class);
            List<Dummy_User__c> lstUser= new List<Dummy_User__c>();
            for(UserWrapper us: usr.users){
                Dummy_User__c user = new Dummy_User__c();
                user.name = us.id;
                user.FisrtName__c=us.firstname;
                User.LastName__c=us.lastname;
                user.Email__c=us.email;
                user.Age__c=us.age;
                user.Gender__c=us.gender;
                user.Image__c=us.image;
                user.UserName__c=us.username;
                user.Phone__c=us.phone;
                user.Birthdate__c=date.valueOf(us.birthdate);
                user.Password__c=us.password;  
                lstUser.add(user);
            }
            insert lstUser;
        }
        return response;
    }
public class Users{
    public list<UserWrapper> users;
}
public class UserWrapper{
    public string id;
    public string name;
    public string firstname;
    public string lastname;
    public integer age;
    public string phone;
    public string gender;
    public string email;
    public string username;
    public string password;
    public string birthdate;
    public string image;
}
}