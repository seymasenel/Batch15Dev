public class RestCallOutsPreC {
    static final string HTTP_GET ='GET';
    static final string HTTP_POST ='POST';
    public static HttpResponse getAnimals() {
        //1.Requestin hazirlanmasi     
        HttpRequest request = new HttpRequest();
        request.setEndpoint(IntegrationInfo__mdt.getInstance('GET_ANIMALS').Endpoint__c); //Remote site setting ten access verilmeli
        request.setMethod(HTTP_GET);
        //2. Http protokolu Requestin gonderilmesi
        Http http = new Http();
        //2.1 requestin gonderilmesi ve responseun alinmasi
        HttpResponse response = http.send(request);
        //3.Response sonrasi gerekli islemin yurutulmesi
        System.debug('Status: ' + response.getStatus());
        System.debug('Status Code:' + response.getStatusCode());
        if (response.getStatusCode()==200) {
            //requestin basarili olmasi durumunda yurutulecek islem
            string jsontring = response.getBody();
            System.debug(jsontring);
            Map <String, Object> results = (Map <String, Object>) json.deserializeUntyped(jsontring);
            System.debug(results);
            List<Object> animals =(List<Object>)results.get('animals');
            System.debug(animals);
            for(object animal : animals){
                System.debug(animal);
            }
        }else {
            //requestin basarisiz olmasi durumunda yurutulecek islem
            System.debug('Hata mesaji: ' + response.getStatus());
            System.debug('Hata Codu: ' + response.getStatusCode());
        }
        return response;
    }
    public static HttpResponse getUsers(){
           //1.Requestin hazirlanmasi
           HttpRequest request = new HttpRequest();
           request.setEndpoint(IntegrationInfo__mdt.getInstance('GET_USERS').Endpoint__c); //Remote site setting ten access verilmeli
           request.setMethod(HTTP_GET);
           //2. Http protokolu Requestin gonderilmesi
           Http http = new Http();
           //2.1 requestin gonderilmesi ve responseun alinmasi
           HttpResponse response = http.send(request);
           //3.Response sonrasi gerekli oslemin yurutulmesi
           System.debug('Status: ' + response.getStatus());
           System.debug('Status Code:' + response.getStatusCode());
           if (response.getStatusCode()==200) {
               //requestin basarili olmasi durumunda yurutulecek islem
               string jsontring = response.getBody();
               System.debug(jsontring);
               List<ContactResponse> contactResponses =(List<ContactResponse>)JSON.deserialize(jsontring, List<ContactResponse>.class);
               System.debug(contactResponses);
               processContacts(contactResponses);
    
           }else {
               //requestin basarisiz olmasi durumunda yurutulecek islem
               System.debug('Hata mesaji: ' + response.getStatus());
               System.debug('Hata Codu: ' + response.getStatusCode());
           }
           return response;
    }
    private static void processContacts(list<ContactResponse> contactResponses){
        List<Contact> conList = new List<Contact>();
        for(ContactResponse cr: contactResponses ){
            contact con = new contact();
            string[]names =cr.name.split(' ');
            con.FirstName=names[0];
            con.LastName=names[1];
            con.email=cr.email;
            con.gender__c=cr.gender;
            con.status__c=cr.status;
            conList.add(con);
        }
        if(!conList.isEmpty()){
            insert conList;
        }
    }
    public static HttpResponse postAnimals(){
        //1.Requestin hazirlanmasi
        HttpRequest request = new HttpRequest();
        request.setEndpoint(IntegrationInfo__mdt.getInstance('POST_ANIMALS').Endpoint__c);//remote site settings ten access verimeli
        request.setMethod(HTTP_POST);
        request.setHeader('Content-Type', 'appication/json;charse=UTF-8');
        request.setBody('{"name" : "Yujin"}');
        //2.Http protokolu ile Requestin gonderilmesi
        Http http = new Http();
        //2.1 requestin gonderilmesi ve responsun alinmasi
        HttpResponse response = http.send(request);
        //3.Response sonrasi gerekli islemin yurutulmesi
        if (response.getStatusCode()==201) {
            //requestin basarili olmasi durumunda yurutulecek islem
            string jsontring = response.getBody();
            System.debug(jsontring);
        }else {
            //requestin basarisiz olmasi durumunda yurutulecek islem
            System.debug('Hata mesaji: ' + response.getStatus());
            System.debug('Hata Codu: ' + response.getStatusCode());
        }
        return response;
    }
    public static HttpResponse postUsers(){
        //end point : https:reqres.in/api/users
        //body : {"name": "morpheus","job": "leader"}
         //1.Requestin hazirlanmasi
        HttpRequest request = new HttpRequest();
        request.setEndpoint(IntegrationInfo__mdt.getInstance('POST_USERS').Endpoint__c);//remote site settings ten access verimeli
        request.setMethod(HTTP_POST);
        request.setHeader('Content-Type', 'application/json;charse=UTF-8');
        request.setBody('{"name": "Seyma","job": "Developer"}');
        //2.Http protokolu ile Requestin gonderilmesi
        Http http = new Http();
        //2.1 requestin gonderilmesi ve responsun alinmasi
        HttpResponse response = http.send(request);
        //3.Response sonrasi gerekli islemin yurutulmesi
        if (response.getStatusCode()==201) {
            //requestin basarili olmasi durumunda yurutulecek islem
            string jsonString = response.getBody();
            System.debug(jsonString);
            Map <String, Object> results =(Map <String, Object>)JSON.deserializeUntyped(jsonString);
            System.Debug(results);
            integer userId = integer.valueOf(results.get('id'));
            System.Debug('User basariyla olusturuldu. User Id: ' + userId);
        }else {
            //requestin basarisiz olmasi durumunda yurutulecek islem
            System.debug('Hata mesaji: ' + response.getStatus());
            System.debug('Hata Codu: ' + response.getStatusCode());
        }
        return response;
    }
    public static HttpResponse basicAuth(){
        //https://postman-echo.com/basic-auth
        //Username: postman
        //Password: password

        //1.Reuestin hazirlanmasi
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://postman-echo.com/basic-auth'); //remote site setting teh access verilmeli
        request.setMethod(HTTP_GET);

        String userName = IntegrationInfo__mdt.getInstance('BAIC_POSTMAN').username__c;
        string password = IntegrationInfo__mdt.getInstance('BASIC_POSTMAN').password__c;
        String auth = EncodingUtil.base64Encode(Blob.valueOf(userName + ':' + password));
        System.debug(auth);

        request.setHeader('Authorization', 'Basic' + auth);
        //2.Http protokolu ile Requestin gonderilmesi
        Http http = new Http();
        //2.1 requestin gonderilmesi ve responsun alinmasi
        HttpResponse response = http.send(request);
        //3.Response sonrasi gerekli islemin yurutulmesi
        if (response.getStatusCode()==200) {
            //requestin basarili olmasi durumunda yurutulecek islem
            string jsonString = response.getBody();
            System.debug(jsonString);
        }else {
            //requestin basarisiz olmasi durumunda yurutulecek islem
            System.debug('Hata mesaji: ' + response.getStatus());
            System.debug('Hata Codu: ' + response.getStatusCode());
        }
        return response;       
    }
    public static HttpResponse bearerAuth(){
        //https://gorest.co.in/public/v2/users
        //892e821395260d514b6b9d869f2e1f93b6b45f10c1bf1ca34868bb3620f36c9d
        //curl -i -H "Accept:application/json" -H "Content-Type:application/json" -H "Authorization: Bearer ACCESS-TOKEN" -XPOST "https://gorest.co.in/public/v2/graphql" -d '{"query":"mutation{createUser(input: {name: \"Tenali Ramakrishna\" gender: \"male\" email: \"tenali.ramakrishna@15ce.com\" status: \"active\"}) {user{id name gender email status}}}"}'

        //1.Reuestin hazirlanmasi
        HttpRequest request = new HttpRequest();
        request.setEndpoint(IntegrationInfo__mdt.getInstance('GET_USERS').Endpoint__c); //remote site setting teh access verilmeli
        request.setMethod(HTTP_POST);
        request.setHeader('Accept', 'application/json');
        request.setHeader('Content-Type', 'application/json');
        request.setHeader('Authorization', 'Bearer', IntegrationInfo__mdt.getInstance('BASIC_POSTMAN').AccessToken__c);

        Contact con =[SELECT FirstName, LastName, Email, Gender__c, Status__c FROM Contact ORDER BY CreatedDate DESC LIMIT 1];

        ContactReponse cr = new ContactReponse();
        cr.name=con.FirstName+ ' ' +con.LastName;
        cr.email=con.email;
        cr.gender=con.gender__c;
        cr.status=con.status__c;
       
        string jsonString = JSON.serialize(con);
        System.debug(jsonString);

        request.setBody(jsonString);
        //2.Http protokolu ile Requestin gonderilmesi
        Http http = new Http();
        //2.1 requestin gonderilmesi ve responsun alinmasi
        HttpResponse response = http.send(request);
        //3.Response sonrasi gerekli islemin yurutulmesi
        if (response.getStatusCode()==201) {
            //requestin basarili olmasi durumunda yurutulecek islem
            jsonString = response.getBody();
            ContactResponse conRes =(ContactResponse)JSON.deserialize(jsonString, ContactResponse.class);
            System.debug('User basari ile olusturuldu User Id: ' + conRes.id);
        }else {
            //requestin basarisiz olmasi durumunda yurutulecek islem
            System.debug('Hata mesaji: ' + response.getStatus());
            System.debug('Hata Codu: ' + response.getStatusCode());
        }
        return response;       
    }
    
}
