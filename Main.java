class Sportsman {

    // States (Attributes)
    String name;
    int age;
    String sport;
    String country;
    int medalsWon;

    // Behaviors (Methods)
    void train() {
        System.out.println(name + " is training.");
    }

    void compete() {
        System.out.println(name + " is competing in " + sport + ".");
    }

    void displayDetails() {
        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
        System.out.println("Sport: " + sport);
        System.out.println("Country: " + country);
        System.out.println("Medals Won: " + medalsWon);
    }
}

public class Main {
    public static void main(String[] args) {

        Sportsman athlete = new Sportsman();

        athlete.name = "Virat Kohli";
        athlete.age = 37;
        athlete.sport = "Cricket";
        athlete.country = "India";
        athlete.medalsWon = 15;

        athlete.displayDetails();
        athlete.train();
        athlete.compete();
    }
}