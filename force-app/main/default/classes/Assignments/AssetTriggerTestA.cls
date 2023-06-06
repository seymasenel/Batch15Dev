@isTest
public class AssetTriggerTestA {
    @isTest
    private static void assetHandlerUpdateTest() {
        account acc = new account();
        acc.name='Acc for Asset';
        insert acc;

        contact con = new contact();
        con.lastname='Con for Asset';
        con.accountid =acc.id;
        insert con;

        list<asset> listAs = new list<asset>();
        for(integer i=0; i<200; i++){
            asset a = new asset(name =('Test Trigger ' + i), accountid =acc.id , contactid = con.id);
            if(i<100){
                a.status='Shipped';
            }else{
                a.status='Installed';
            }
            listAs.add(a);
        }
        insert listAs;
        
        list<asset> updateAs = new list<asset>();
        for(asset eachAs: listAs){
            if(eachAs.Status=='Shipped'){
                eachAs.Status='Installed';
            }else{
                eachAs.status='Shipped';
            }
            updateAs.add(eachAs);
        }
        update updateAs;

        asset as1=[select name, status , description from asset where status ='Installed' limit 1];
        asset as2=[select name, status , description from asset where status ='Shipped' limit 1];
        assert.isTrue(as1.description.contains('Installed'));
        assert.isTrue(as2.description.contains('Shipped'));

    }
}