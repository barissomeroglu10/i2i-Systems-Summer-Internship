import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        /* ArrayList cities = new ArrayList(); // this one get object type as parameter
        cities.add("London");
        cities.add("Paris");
        cities.add(1); // we can add this but this brings some problems */

        // generic class
        // we use generic structure to work with type safety
        /* ArrayList<String> cities = new ArrayList<String>(); // we solved the problem with this structure
        cities.add("London");
        cities.add("Paris"); */

        // using my own generic list
        MyList<String> cities = new MyList<String>();
        cities.add("Van");
        // can not add this --> cities.add(1);

        MyList<Customer> cities2 = new MyList<Customer>();
        cities2.add(new Customer());
    }
}