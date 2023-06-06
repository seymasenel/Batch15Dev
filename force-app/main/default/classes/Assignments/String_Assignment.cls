public  class String_Assignment {
    public void stringAssignment() {
        
        String localString = 'Thanks for the session on the string';
        
        integer sLength =localString.length();
        system.debug(sLength);

        String upLoc = localString.toUpperCase();
        System.debug(upLoc);

        Boolean checkSession = localString.contains('session');
        system.debug(checkSession);

        Boolean checkSessions = localString.contains('sessions');
        System.debug(checkSessions);

        Boolean checkSession2 = localString.containsIgnoreCase('SESSION');
        System.debug(checkSession2);


    }
}