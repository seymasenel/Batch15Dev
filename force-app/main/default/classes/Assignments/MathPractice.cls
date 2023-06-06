public class MathPractice {
    public decimal practiceOne(decimal x, decimal y) {
        decimal rectangle = (x+y) * 2;
        return rectangle;
    }
    public decimal practiceTwo(decimal height, decimal weight){
        
        decimal bodyMassIndex =weight/(height*height);
        return bodyMassIndex;
    }
    public decimal practiceThree(integer a, integer b){
        decimal average = (a+b)/2;
        return average;
    }
    public string practiceFour(decimal amount){
        string message;
        if(amount <= 0){
            message ='Hatali bir deger girdiniz';
        }else if( amount < 50){
            message ='Bonus kazanamadiniz';
        }else if(amount < 200){
            message = amount + '$' +' tutarindaki alirverisiniz karsilinda 10$ bonus kazandiniz.';
        }else if(amount <500){
            message = amount + '$' +' tutarindaki alirverisiniz karsilinda 30$ bonus kazandiniz.';
        }else if(amount>=500){
            message = amount + '$' +' tutarindaki alirverisiniz karsilinda 50$ bonus kazandiniz.';
        }
        return message;
    }
    public decimal practiceFive(integer count, string pastry){
        decimal totalAmount;
        // if(pastry=='EKMEK'){
        //     totalAmount= count;
        // }else if(pastry=='SIMIT'){
        //     totalAmount= 2*count;
        // }else if(pastry=='KEK'){
        //     totalAmount=3*count;
        // }else{
        //     system.debug('Girilen veri ismi sistemde bulunamadi.');
        // }
        switch on pastry{
            when 'EKMEK' {
                totalAmount= count;
                system.debug('Almis oldugunuz ' + count + ' adet ' + pastry + ' tutari ' + totalAmount + '$ dir.');
            }
            when 'KEK'{
                totalAmount= 3*count;
                system.debug('Almis oldugunuz ' + count + ' adet ' + pastry + ' tutari ' + totalAmount + '$ dir.');
            }
            when 'SIMIT'{
                totalAmount= 2*count;
                system.debug('Almis oldugunuz ' + count + ' adet ' + pastry + ' tutari ' + totalAmount + '$ dir.');
            }
            when else {
                system.debug('Girilen veri ismi sistemde bulunamadi.');
            }
        }
    return totalAmount;
    }
    public decimal practiceSix(decimal length, decimal width, string parameter){
        decimal area = length * width;
        integer areaR = Math.round(area);
        decimal perimeter =2*(length+width);
        integer perimeterR = math.round(perimeter);
        decimal result;
        switch on parameter {
            when 'area' {
                result= areaR;
                system.debug('Area of rectangle is==>' + result);
            }
            when 'perimeter'{
                result = perimeterR;
                system.debug('Perimeter of rectangle is==>' + result);
            }
            when else {
                system.debug('Please entar a valid data.');
            }
        }
        return result;
    }
    public string practiceSeven(decimal height, decimal weight){
       
        decimal bodyMassIndex =weight/height.pow( 2);
        decimal bMI = bodyMassIndex.setScale(1);
    
        string message;
       
        if(bMI<=0 && bMI<=18.5){
            message='Underweight';
        }else if(bMI>=18.5 && bMI<=24.9){
            message='Normal weight';
        }else if(bMI>=25 && bMI<=29.9){
            message='Overweight';
        }else{
             message= 'Obese';
        }    
        system.debug('BMI range is==> ' + message);
        return message;
    }
    public Integer practiceEight(integer x, integer y){
        integer sum=0;
        if(x==y){
            sum=x+y;
            system.debug('When x==y, x+y ==>' + sum);
        }else if(x!=y){
            integer smaller= math.min(x, y);
            integer larger = math.max(x, y);
            for(integer i=smaller; i<=larger; i++){
                sum= sum + i;
        }  
           system.debug('When x!= y Sum of all the values x-y(incluging x and y)==>' + sum);
        }
        return sum;
    }
}