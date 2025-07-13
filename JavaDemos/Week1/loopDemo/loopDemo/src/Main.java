public class Main {
    public static void main(String[] args) {

        // for loop
        for (int i = 1; i <= 10; i++) {

            System.out.println(i);
        }

        System.out.println("For Loop ended");

        // while loop
        int a = 1;
        while (a < 10) {
            System.out.println(a);
            a++;
        }

        System.out.println("While Loop ended");

        // do-while loop
        int b = 1;
        do {
            System.out.println(b);
            b = b + 2;
        } while (b < 10);

        System.out.println("Do-While Loop ended");
    }
}