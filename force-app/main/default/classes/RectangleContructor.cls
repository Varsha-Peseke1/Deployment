public class RectangleContructor {
    Decimal length, breadth;

    public RectangleContructor(){
        length = 5.5;
        breadth = 6;
    }
    public void area(){
        Decimal a = length * breadth;
        System.debug('Area = ' + a);      
    }
    
    public void perimeter(){
        Decimal p = 2 * (length + breadth);
        System.debug('Perimeter = ' + p);      
    }
    
}