public class Main {
    public static void main(String[] args) {

        /* int[] numbers = new int[] {1,2,3};
        System.out.println(numbers[0]); // no error for this
        System.out.println(numbers[3]); // also no error for this but we'll see a run time exception */

        // we use try-catch structure for this kind of erros
        try {
            int[] numbers = new int[] {1,2,3};
            System.out.println(numbers[3]);
        } // after try we must write catch or finally structure
        catch (Exception e) {
            // throw new RuntimeException(e);
            System.out.println("An Error Occured");
            System.out.println(e); // we'll see detail about error
        }
        // finally will always work
        finally {
            System.out.println("This is a test");
        }
    }
}