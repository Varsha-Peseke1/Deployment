public class OperationOnTwoNumbers {
    public static void addition(){
        Decimal x = 20.4, y = 16.9;
        Decimal z = x + y;
        System.debug('Addition = ' + z);
    }
    public static void substraction(){
        Decimal x = 20.4, y = 16.9;
        Decimal z = x - y;
        System.debug('Substraction = ' + z);
    }
    public static void multiplication(Decimal x, Decimal y){
        Decimal z;
        z = x*y;
        System.debug('Multiplication = ' + z);
    }
    public static void Division(Decimal x, Decimal y){
        Decimal z;
        z = x / y;
        System.debug('Division = ' + z);
    }
}