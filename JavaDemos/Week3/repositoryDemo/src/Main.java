// in this example we use a kind of pattern design
// we use repository pattern for database processes in general
public class Main {
    public static void main(String[] args) {

        Validator validator = new Validator();
        Customer customer = new Customer();
        validator.validate(customer);
    }
}