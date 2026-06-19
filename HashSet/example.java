import java.util.Queue;
import java.util.LinkedList;
public class example {
    public static void main(String[] args)
    {
        Queue<Integer> queue= new LinkedList<>();
        int[] registrations ={101,102,103,101,104,102};
        for(int id: registrations)
        {
            if(!queue.contains(id))
            {
                queue.add(id);
                System.out.println("ID" + id + "Registered");
            }
            else{
                System.out.println("Dupicate ID" + id + "rejected"); 
            }
        }
         System.out.println("\nFinal Registration  Queue");
         System.out.println(queue);
    }
     
}
