public class StringConcateDemo {
    public static string concateAndUpperCase(string a , string b) {
        string result = a + ', ' + b;
        result = result.toUpperCase();
        return result;
    }

    public static string concateAndLowerCase(string a , string b) {
        string result = a + ', ' + b;
        result = result.toLowerCase();
        return result;
    }

    public static void printConcate(string a , string b) {
        string result = a + ', ' + b;
        System.debug(result);
    }
}