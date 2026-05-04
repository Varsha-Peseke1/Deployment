public class MapClass {
    public static void MapDemo(){
        Map<Integer, String> colors = new Map<Integer, String>();
        colors.put(1, 'Red');
        colors.put(2, 'White');
        colors.put(3, 'Black');
        colors.put(4, 'Red');
        System.debug('map = ' + colors);
    }
}