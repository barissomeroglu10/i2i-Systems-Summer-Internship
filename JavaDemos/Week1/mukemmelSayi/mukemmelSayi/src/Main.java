import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        // In number theory, a perfect number is a positive integer that is equal to the sum of its positive proper divisors,
        // that is, divisors excluding the number itself. For instance, 6 has proper divisors 1, 2 and 3, and 1 + 2 + 3 = 6, so 6 is a perfect number.

        Scanner input = new Scanner(System.in);
        System.out.print("Please enter a number = ");
        int number = input.nextInt();

        int sum = 0;

        for (int i = 1; i <= (number / 2); i++) {
            if (number % i == 0) {
                sum += i;
            }
        }

        if (sum == number) {
            System.out.println("The number is a perfect number ");
        }

        else {
            System.out.println("The number is not a perfect number ");
        }
    }
}