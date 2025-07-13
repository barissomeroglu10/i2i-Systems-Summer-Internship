import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        System.out.print("Please Enter a Character = ");
        char character = input.next().charAt(0);

        // I want to keep code simple. So i didn't check other characters like ı,i etc.
        // And also i didn't use try-catch to keep code simple and just learn essentials
        if (character == 'a' || character == 'e' || character == 'o' || character == 'u') {
            System.out.println("Girilen karakter sessli harftir");
        }

        else{
            System.out.println("Girilen karakter sessiz harftir");
        }

        input.close();

    }
}