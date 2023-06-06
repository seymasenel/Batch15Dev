public class InventoryManager {
    String productName;
    String productCode;
    Integer costPrice;
    Integer sellingPrice;
    public static integer productcount=0;

    public InventoryManager(){
        productCount++;
    }
    public InventoryManager(string productName, string productCode){
        productCount++;
        this.productName= productName;
        this.productCode=productCode;
    }
    public void setCostPrice(integer costPrice){
        this.costPrice= costPrice;   
    }
    public integer getCostPrice(){
        return this.costPrice;
    }
    public void setSellingPrice(integer sellingPrice){
        this.sellingPrice= sellingPrice;
    }
    public integer getSellingPrice(){
        return sellingPrice=sellingPrice;
    }
    public void productDisplay(){
        system.debug('Product name\'s--> ' + this.productName + 'Product code\'s--> ' + this.productCode + 'Selling price of product is-->' + this.sellingPrice + ' And cost of  product ---> ' + this.costPrice);

        decimal profitPercent=(sellingPrice-costPrice)*100/costPrice;

        if(profitPercent>=20){
            system.debug('Star Product');
        }else{
            system.debug('Average Product');
        }
    }
}