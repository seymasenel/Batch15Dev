public class MethodsDemo2 {
    //Create method, which accepts string, and checks if that string contains a or A.
    //Return true if contains, else false.
    public Boolean nameContainsA(string name){
        boolean containsA = name.containsIgnoreCase('a');
        return containsA;
    }  
}