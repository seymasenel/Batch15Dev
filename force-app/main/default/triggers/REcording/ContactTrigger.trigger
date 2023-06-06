trigger ContactTrigger on contact(before insert, before update, after insert, after update) {
    /*if(trigger.isBefore && trigger.isInsert){
        System.debug('Before insert');
        System.debug('Trigger new = ' +trigger.new);
        list<contact> contactTrigger =trigger.new;
        for(contact cn: trigger.new){
            System.debug('First name = ' + cn.LastName);
            System.debug('LAst name = ' + cn.LastName);
            System.debug('Id = ' + cn.id);
            System.debug('Created date = '+ cn.CreatedDate );
        }
        System.debug('==================END===================');
    }
    if (trigger.isAfter && trigger.isInsert) {
        System.debug('After insert');
        for(contact cn: trigger.new){
            System.debug('First name = ' + cn.LastName);
            System.debug('LAst name = ' + cn.LastName);
            System.debug('Id = ' + cn.id);
            System.debug('Created date = '+ cn.CreatedDate );
        }
        System.debug('==================END===================');
    }
    if (trigger.isBefore && trigger.isUpdate) {
        System.debug('Before Update');
        for(contact cn: trigger.new){
            System.debug('First name = ' + cn.LastName);
            System.debug('LAst name = ' + cn.LastName);
            System.debug('Id = ' + cn.id);
            System.debug('Created date = '+ cn.CreatedDate );
        }
        for(contact cn: trigger.old){
            System.debug('First name = ' + cn.LastName);
            System.debug('LAst name = ' + cn.LastName);
            System.debug('Id = ' + cn.id);
            System.debug('Created date = '+ cn.CreatedDate );
        }
        System.debug('==================END===================');
    }*/
    // if (trigger.isAfter && trigger.isUpdate) {
    //     System.debug('After Update');
    //    //version 1
    //    system.debug('Version 1');
    //     for(contact con: trigger.new){
    //         string oldFirstName=trigger.oldMap.get(con.id).FirstName;
    //         string newFirstName=trigger.newMap.get(con.id).FirstName;
    //         system.debug('Eski isim: ' + oldFirstName + ', yeni isim: ' + newFirstName);
    //         string oldLastName=trigger.oldMap.get(con.id).LastName;
    //         string newLastName=trigger.newMap.get(con.id).LastName;
    //         system.debug('Eski soyad: ' + oldLastName + ', yeni soyad: ' + newLastName);
    //     }

    //     //version 2
    //     system.debug('Version 2');
    //     for(contact con : trigger.new){
    //         system.debug('eski isim: ' + trigger.oldMap.get(con.id).FirstName + ', yeni isim : ' + con.FirstName);
    //         system.debug('eski soyad: ' + trigger.oldMap.get(con.id).LastName+ ', yeni soyad : '+ con.LastName);
    //     }

    //     //version 3
    //     system.debug('Version 3');
    //     for(contact con : trigger.old){
    //         system.debug('eski isim: ' + con.FirstName + ', yeni isim : ' +trigger.newMap.get(con.id).FirstName );
    //         system.debug('eski soyad: ' + + ', yeni soyad : '+trigger.newMap.get(con.id).LastName );
    //     }
    //     System.debug('==================END===================');
    //     // for(contact cn: trigger.new){
    //     //     System.debug('First name = ' + cn.LastName);
    //     //     System.debug('LAst name = ' + cn.LastName);
    //     //     System.debug('Id = ' + cn.id);
    //     //     System.debug('Created date = '+ cn.CreatedDate );
    //     // }  for(contact cn: trigger.old){
    //     //     System.debug('First name = ' + cn.LastName);
    //     //     System.debug('LAst name = ' + cn.LastName);
    //     //     System.debug('Id = ' + cn.id);
    //     //     System.debug('Created date = '+ cn.CreatedDate );
    //     // }
     
    // }
}