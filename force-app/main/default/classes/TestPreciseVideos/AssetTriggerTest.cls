@isTest
public class AssetTriggerTest {
    @isTest
    private static void testAssetTrig() {
        account acc = new account(name='Test acc');
        insert acc;
        list<asset> listAsset = new list<asset>();
        for(integer i=0; i<1100; i++){
            asset a = new asset();
            a.name='Test asset'+i;
            a.AccountId=acc.id;
            listAsset.add(a);
        }
        insert listAsset;
    }
}