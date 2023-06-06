public  class StringMethodlar15 {
    public void cumleDuzenleme(){
        string cumle ='  SalesfORCe OGRNEcegim Ve  DEveLOPerxYZ1 OlACAGim.  ';
        system.debug(cumle);

        string cumle2 = cumle.trim();
        system.debug(cumle2);

        string cumle3 = cumle2.toLowerCase();
        system.debug(cumle3);

        string cumle4 =cumle3.capitalize();
        system.debug(cumle4);

        string sonCumle = cumle4.remove('xyz1');
        system.debug(sonCumle);

        string text = sonCumle.substringAfterLast(' ');
        system.debug(text);

    }
    public void accountIdSelect(){
       string accUrl = 'https://softinnovas394-dev-ed.develop.lightning.force.com/lightning/r/Account/0013x00002RYrs0AAD/view';
       string accUrl2= accUrl.remove('/view');
       system.debug(accUrl2);

       string accId = accUrl2.substringAfterLast('/');
       system.debug(accId);

        /*2.yol ilk 0 sayisinin index numarasini bul o indexten itibaren 18karakteri yaz*/
        integer indexNo = accUrl.indexOf('0');
        string accId = accUrl.substring(indexNo, indexNo+18);
        system.debug(accUrl2);
    
    }
}