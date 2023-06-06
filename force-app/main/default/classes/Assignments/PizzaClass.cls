public  class PizzaClass {
    integer orderId=0;
    integer quantity;
    string toppings;
    string type;
    decimal tax;
    string feedback;
    public void addcart(integer qty, string tops, string typ){
        quantity=qty;
        toppings=tops;
        type=typ;
        orderId ++;
        if(qty==1){
            tax=0.18;
        }else if(qty==2){
            tax=0.12;
        }else if(qty==3){
            tax=0.06;
        }else if(qty>=4){
            tax=0;
        }else{
            system.debug('Invalid number.');
        }
    }
    public void cancelCart(){
        orderId=0;
        System.debug(orderId);
    }
    public void feedBack(string feedback){
       System.debug(feedback);
    }   
    
}
