import java.util.Scanner;
public class Main {
    public static void main(String[] args) {

        // Two numbers whose positive integer divisors, excluding themselves, are equal are called amicable numbers.

        Scanner input = new Scanner(System.in);
        System.out.print("Please Enter First Number = ");
        int firstNumber = input.nextInt();
        System.out.print("Please Enter Second Number = ");
        int secondNumber = input.nextInt();

        int sum1 = 0;
        int sum2 = 0;

        for (int i = 1; i <= (firstNumber/2); i++) {
            if (firstNumber % i == 0) {
                sum1 += i;
            }
        }

        for (int i = 1; i <= (secondNumber/2); i++) {
            if (secondNumber % i == 0) {
                sum2 += i;
            }
        }

        if (sum1 == secondNumber && sum2 == firstNumber) {
            System.out.println(firstNumber + " and " + secondNumber + " are friend number.");
        }

        else {
            System.out.println(firstNumber + " and " + secondNumber + " are not friend number.");
        }

        input.close();

    }
}