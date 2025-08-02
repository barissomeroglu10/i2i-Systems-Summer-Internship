public class Main {
    public static void main(String[] args) {

        /* int[] numbers = new int[] {1,2,3};
        System.out.println(numbers[0]); // no error for this
        System.out.println(numbers[3]); // also no error for this but we'll see a run time exception */

        // we use try-catch structure for this kind of erros
        try {
            int[] numbers = new int[]{1, 2, 3};
            System.out.println(numbers[3]);
        } // after try we must write catch or finally structure

        // we can write many catch block
        catch (StringIndexOutOfBoundsException e) {
            System.out.println(e);
        }

        catch (ArrayIndexOutOfBoundsException e) {
            System.out.println(e);
        }

        // for any kind of exception except for the above
        catch (Exception e) {
            System.out.println("Loged: " + e);
        }

        // we can use exception structure for any kind of exception but using detailed exception structure
        // gives us making some direction for users

        /* catch (Exception e) {
            // throw new RuntimeException(e);
            System.out.println("An Error Occured");
            System.out.println(e); // we'll see detail about error
        } */

        // finally will always work
        finally {
            System.out.println("This is a test");
        }
    }
}