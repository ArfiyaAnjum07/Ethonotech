//package CollectionExample;

class MessageSender extends Thread {

    public MessageSender(String name) {
        super(name); // Set thread name
    }

    @Override
    public void run() {
        try {
            for (int i = 0; i <= 3; i++) {
                System.out.println(getName() + " Sending Message");
                Thread.sleep(1000);
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            System.out.println("Thread Interrupted: " + e);
        }

        System.out.println("Message sent successfully by " + getName());
    }
}

public class MessageApp {

    public static void main(String[] args) {

        MessageSender sender1 = new MessageSender("Sender1");
        MessageSender sender2 = new MessageSender("Sender2");

        sender1.start();
        sender2.start();
    }
}