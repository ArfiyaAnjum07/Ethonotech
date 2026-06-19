//package HashMap;

import java.util.HashMap;

public class hashmap {
    public static void main(String[] args)
    {
        HashMap<String,String> livingbeing = new HashMap<>();
        livingbeing.put("tree","neem");
        livingbeing.put("Bird","Parrot");
        livingbeing.put("Animal","Dog");
        livingbeing.put("Insects","crocroach");
        System.out.println(livingbeing);
        System.out.println(livingbeing.get("Insects"));
        livingbeing.remove("Animal");
        System.out.println(livingbeing);
        System.out.println(livingbeing.containsKey("Bird"));
        System.out.println(livingbeing.containsValue("neem"));
        System.out.println(livingbeing.size());
        System.out.println(livingbeing.isEmpty());


    }
}
