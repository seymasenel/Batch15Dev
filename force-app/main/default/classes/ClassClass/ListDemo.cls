public with sharing class ListDemo {
    public static void candidatesList() {
        List<string> listC = new list<string>();
        system.debug(listC);

        listC.add('Marc');
        listC.add('Bill');
        listC.add('Seyma');
        listC.add('Marc');
        listC.add('Mete');
        system.debug('List od candidates ==> ' + listC);
    }
    public static void randomintegerList(){
        List<integer> intList = new list<integer>();
        intList.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(15);
        intList.add(15);
        system.debug('Int list ==> ' + intList);
        integer size = intList.size();
        system.debug('Size of list is ' + size);

        integer int3 = intList.get(3);
        //OR
        integer int31 = intList[3];
        system.debug('Int3 is ' + int3);
        system.debug('Int3 is ' + int31);
    }
    public static string candidatesList(integer i){
      
        List<string> listC = new list<string>();
        system.debug(listC);

        listC.add('Marc');
        listC.add('Bill');
        listC.add('Seyma');
        listC.add('Marc');
        listC.add('Mete');
        system.debug('List od candidates ==> ' + listC);

        string returnValue='';

        integer size = listC.size();

        if(i<size && i>=0){
            returnValue= listC.get(i);
        }else{
            returnValue='No such value exists';
        }
        return returnValue;
    }
    public static void friendList(string checkFriend){
        list<string>friends = new list<string>();
        friends.add('Hakan');
        friends.add('Ayse');
        friends.add('Meryem');
        friends.add('Mete');
        friends.add('Pinar');
        system.debug('before ' + friends);

        friends.sort();
        system.debug('after ' + friends);

        //how to check if list contains 'checkFriend' string?
        //A. use contains method

        boolean check = friends.contains(checkFriend);

        system.deug(checkFriend + ' exists in list? ' + check);
        //friends.sort();//alphabetically order list elements
        
    }
 }
