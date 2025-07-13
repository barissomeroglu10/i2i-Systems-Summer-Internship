// Condition structures:
// if
// else if
// else
// switch - case

public class Main {
    public static void main(String[] args) {

        int sayi = 20;

        if (sayi < 20) {
            System.out.println("Sayı, 20'den küçüktür");
        }

        // attention to ==
        else if (sayi == 20) {
            System.out.println("Sayı, 20'dir.");
        }

        else {
            System.out.println("Sayı, 20'den büyüktür");
        }


    }
    }