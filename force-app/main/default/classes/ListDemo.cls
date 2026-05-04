public class ListDemo {
    public static void listMethod(){
        List<String> colors = new List<String>();
        colors.add('red');
        colors.add('blue');
        colors.add('Green');
        colors.add('Yellow');
        colors.add('Pink');
        
        System.debug('Colors list = ' + colors);
        colors.add(2,'black');
        System.debug('Colors list = ' + colors);
        
        List<String> colors2 = new List<String>();
        colors2.add('white');
        colors2.add('purple');
        colors.addAll(colors2);
        System.debug('Colors list = ' + colors);      
        colors2.clear();
        System.debug('Colors list = ' + colors2);      
        
    }
}