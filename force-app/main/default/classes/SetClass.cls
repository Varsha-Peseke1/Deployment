public class SetClass {
    public Static Void example(){
        Set<Integer> intset = new Set<Integer>();
        List<Integer> intList = new List<Integer>();
        intset.add(10);
        intset.add(20);
        intset.add(20);
        intset.add(30);
        intset.add(40);
        
        intList.add(60);
        intList.add(70);
        
        intset.addAll(intList);
        System.debug('Set =' + intset);
    }
}