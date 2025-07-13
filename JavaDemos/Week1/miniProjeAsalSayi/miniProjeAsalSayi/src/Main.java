import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in); // Scanner object
        System.out.print("Please enter a number: ");
        int number = input.nextInt(); // Tp get a number

        boolean isPrime = true;

        // Prime numbers bigger than 1
        if (number == 1) {
            isPrime = false;
        }

        // The only oven prime number is 2
        else if (number == 2) {
            isPrime = true;
        }

        else {
            for (int i = 2; i <= Math.sqrt(number); i++) {
                if (number % i == 0) {
                    isPrime = false;
                    break;
                }
            }
        }

        if (isPrime) {
            System.out.println("Prime number");
        } else {
            System.out.println("Not Prime number");
        }

        input.close(); // Closing scanner object
    }
}