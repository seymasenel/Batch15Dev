public class RestCallout {

    //Endpoint: https://th-apex-http-callout.herokuapp.com/animals
    //Method: GET
    public static HttpResponse getAnimal(){

        // Steps to make a REST Outbound Callout
        //1. Prepare the HTTPRequest
        HttpRequest request = new HttpRequest();
        //1.a. Set Endpoint
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        //1.b. Set Method
        request.setMethod('GET');
        //1.c Set Header
            //1.c.a Set Content-Type
            //1.c.b Set Authorization
        //1.d Set Body - POST, PUT
        //2. Prepare the Internet Http
        Http http = new Http();
        //3. Send the HTTPRequest over the internet and get the response
        HttpResponse response = http.send(request);
        //4. Process the HTTPResponse
        System.debug('Response Status Code '+ response.getStatusCode());
        System.debug('Response Body '+ response.getBody());
        return response;
    }

    //Endpoint : https://api.instantwebtools.net/v1/airlines/2
    //Method : GET
    public static HttpResponse getAirlines(){

        // Steps to make a REST Outbound Callout
        //1. Prepare the HTTPRequest
        HttpRequest request = new HttpRequest();
        //1.a. Set Endpoint and add remote site setting
        //request.setEndpoint('https://api.instantwebtools.net/v1/airlines/4');
        //1.b. Set Method
        request.setMethod('GET');
        //1.c Set Header
            //1.c.a Set Content-Type - POST, PUT (create/update)
            //1.c.b Set Authorization
/*
        //1. Authorization : Bearer <token>
        //request.setHeader('Authorization', 'Bearer sk-K6SfyoUhcdJ8wmda679yT3BlbkFJfXpR1lieYob3foBuHw');
*/
/*
        //2. Authorization : Username and Password
        String username = 'Subramani@test.com';
        String password = 'Test@123';
        //Subramani@test.com:Test@123
        Blob requestBlob = Blob.valueOf(username + ':' + password);
        String encodedValue = EncodingUtil.base64Encode(requestBlob);
        String usernamePassword= 'BASIC'+ encodedValue;
        // BASIC U3VicmFtYW5pQHRlc3QuY29tOlRlc3RAMTIz
        request.setHeader('Authorization', usernamePassword);
*/
        //3. Authorization : Named Credential  
        request.setEndpoint('callout:Get_Airline/5');

        //1.d Set Body - POST, PUT
        //2. Prepare the Internet Http
        Http http = new Http();
        //3. Send the HTTPRequest over the internet and get the response
        HttpResponse response = http.send(request);
        //4. Process the HTTPResponse
        System.debug('Response Status Code '+ response.getStatusCode());
        System.debug('Response Body '+ response.getBody());
        if(response.getStatusCode() == 200){
            String jsonResponseBody = response.getBody();
            AirlinesWrapper wrapper = (AirlinesWrapper)JSON.deserialize(jsonResponseBody, AirlinesWrapper.class);
            Airline__c airline = new Airline__c();
            airline.Name= String.valueOf(wrapper.id);
            airline.Name__c= wrapper.name;
            airline.country__c= wrapper.country;
            airline.Head_Quarters__c= wrapper.head_quarters;
            airline.website__c= wrapper.website;
            airline.Logo_URL__c = wrapper.logo;
            airline.Estabished__c = wrapper.established;
            airline.slogan__c= wrapper.slogan;

            try{
                insert airline;
            }
            catch(Exception ex){
                System.debug('Exception '+ ex.getMessage());
            }
        }
        else{
            System.debug('Response Status Code '+ response.getStatusCode());
            System.debug('Response Body '+ response.getBody());
        }
        return response;
    }
  public static HttpResponse getEmployees(){
    // Steps to make a REST Outbound Callout
        //1. Prepare the HTTPRequest
        HttpRequest request = new HttpRequest();
        //1.a. Set Endpoint
        request.setEndpoint('callout:Employee');
        //1.b. Set Method
        request.setMethod('GET');
        //1.c Set Header
            //1.c.a Set Content-Type
            //1.c.b Set Authorization
        //1.d Set Body - POST, PUT
        //2. Prepare the Internet Http
        Http http = new Http();
        //3. Send the HTTPRequest over the internet and get the response
        HttpResponse response = http.send(request);
        //4. Process the HTTPResponse
        System.debug('Response Status: ' + response.getStatus());
        System.debug('Response Status Code:' + response.getStatusCode());
        if (response.getStatusCode()==200) {
            string jsontring = response.getBody();
            System.debug(jsontring);
            EmployeeResponse empRes = (EmployeeResponse)JSON.deserialize(jsontring, EmployeeResponse.class);
            System.debug('Employee Response ' + empRes);
            List<EmployeeResponse.EmployeeWrapper> employessdata = empRes.data;
            List<Employees__c> empList = new List<Employees__c>();
            for(EmployeeResponse.EmployeeWrapper wrap : employessdata){
                Employees__c em= new Employees__c();
                em.Address__c=wrap.complete_address;
                em.Designation__c=wrap.designation;
                em.Email__c=wrap.email;
                em.Name=string.valueOf(wrap.id);
                em.Gender__c=wrap.gender;
                em.Name__c=wrap.name;
                em.User_Name__c=wrap.username;
                em.Phone__c=wrap.phone_number;
                empList.add(em);
            }
            insert empList;
        }
        return response;
  }  

    public static void postObject(){
        // Steps to make a REST Outbound Callout
        //1. Prepare the HTTPRequest
        HttpRequest request = new HttpRequest();
        //1.a. Set Endpoint
        request.setEndpoint('callout:Post_Object');
        //1.b. Set Method
        request.setMethod('POST');
        //1.c Set Header
        request.setHeader('Content-Type', 'application/json');
        //1.d Set Body - POST, PUT
        
        ObjectRequest objR=new ObjectRequest();
        objR.name='Macbook Pro 16';

        ObjectRequest.DataDetail dataW= new ObjectRequest.DataDetail();
        dataW.year=2021;
        dataW.price=2000.0;
        dataW.CPU_model='Intel Core i9';
        dataW.Hard_disk_size='1 TB';

        objR.data=dataW;

        string jsonBody= JSON.serialize(objR);
        jsonBody=jsonBody.replaceAll('CPU model', 'CPU_model');
        jsonBody=jsonBody.replaceAll('Hard disk size', 'Hard_disk_size');
        request.setBody(jsonBody);
        System.debug(jsonBody);
        //2. Prepare the Internet Http
        Http http = new Http();
        //3. Send the HTTPRequest over the internet and get the response
        HttpResponse response = http.send(request);
        //4. Process the HTTPResponse
        //System.debug('Response Status: ' + response.getStatus());
       // System.debug('Response Status Code:' + response.getStatusCode());
        if (response.getStatusCode()==200) {
            string jsonString= response.getBody();
            jsonString=jsonString.replaceAll( 'CPU model', 'CPU_model');
            jsonString=jsonString.replaceAll('Hard disk size', 'Hard_disk_size');

            ObjectRequest o = (ObjectRequest)JSON.deserialize(jsonString, ObjectRequest.class);
            System.debug(o);
            System.debug(o.name);
            System.debug(o.data.CPU_model);
            System.debug(o.data.Hard_disk_size);
            System.debug(o.data.price);
            System.debug(o.data.year);
            
        }else {

            System.debug('Errorr: ' + response.getStatus());
            System.debug('Error Code: ' + response.getStatusCode());
        }
    }
    @future(callout=true)
    public static void postAirlines(id airlineId){
        // / Steps to make a REST Outbound Callout
        //1. Prepare the HTTPRequest
        HttpRequest request = new HttpRequest();
        //1.a. Set Endpoint
        request.setEndpoint('callout:Get_Airline');
        //1.b. Set Method
        request.setMethod('POST');
         //1.c Set Header
            //1.c.a Set Content-Type - POST, PUT (create/update)
        request.setHeader('Content-Type', 'application/json');
            //1.c.b Set Authorization
        // 1.d.a Prepare the JSON Body
        Airline__c airline = [SELECT Name, Name__c, country__c, Head_Quarters__c, website__c, Logo_URL__c, Estabished__c, Slogan__c FROM Airline__c WHERE Id!= NULL AND Callout_Status__c ='Callout Send' and id =:airlineId];

        AirlinesWrapper wrapper = new AirlinesWrapper();
        wrapper.id= Integer.valueOf(airline.Name);
        wrapper.name= airline.Name__c;
        wrapper.country= airline.country__c;
        wrapper.head_quarters= airline.Head_Quarters__c;
        wrapper.website= airline.website__c;
        wrapper.logo= airline.Logo_URL__c;
        wrapper.established= airline.Estabished__c;
        wrapper.slogan= airline.Slogan__c;
        //Serialize the Wrapper
        String jsonBody = JSON.serialize(wrapper);
        //1.d Set Body - POST, PUT
        request.setBody(jsonBody);
        //2. Prepare the Internet Http
        Http http = new Http();
        //3. Send the HTTPRequest over the internet and get the response
        HttpResponse response = http.send(request);
        //4. Process the HTTPResponse
        if(response.getStatusCode()== 200){
            System.debug('Response Body '+ response.getBody());
            airline.Callout_Status__c = 'Callout Pass';
        }else{
            System.debug('Response Body '+ response.getBody());
            airline.Callout_Status__c = 'Callout Failed';
        }
        update airline;

        //Home Work 2:
        // If it is successful, update the callout status as 'Callout Pass'
        // If it is not successful, update the callout status as 'Callout Fail'
    }

    public static void deleteEmployee(string employeId){
        HttpRequest request = new HttpRequest();
        //1.a. Set Endpoint
        request.setEndpoint('callout:Employee/'+employeId);
        //1.b. Set Method
        request.setMethod('DELETE');
        //2. Prepare the Internet Http
        Http http = new Http();
        //3. Send the HTTPRequest over the internet and get the response
        HttpResponse response = http.send(request);
        if (response.getStatusCode()==200) {
            string jsonString= response.getBody();
            System.debug(response.getBody());
            string jsonBody = response.getBody();
            EmployeeResponse emp = (EmployeeResponse)JSON.deserialize(jsonBody, EmployeeResponse.class);
            System.debug(emp.msg);
        }else {

            System.debug('Errorr: ' + response.getStatus());
            System.debug('Error Code: ' + response.getStatusCode());
        }
    }
}