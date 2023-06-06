//Class variable . variable defined/declared directly inside class
//Class variable can be used anywhere within the class 
//If Private Variable--> Can be accessed ONLY inside the class
//If Public Variable --> Outside means any other class or anonymous
public  class Dogs {
    public string name;
    public string breed;
    public integer age;

    public void description(){
        System.debug('Age of ' + name + 'is ' + age + ', its breed is ' + breed);
    }
   
}