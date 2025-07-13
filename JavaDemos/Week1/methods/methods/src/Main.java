import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        // Call the function
        sayiBulmaca();

    }

    // sayiBulmaca function
    public static void sayiBulmaca() {

        int[] sayilar = new int[6];

        Scanner input = new Scanner(System.in);

        for (int i = 0; i < sayilar.length; i++) {
            System.out.print("Please Enter " + (i+1) + ". Number: ");
            sayilar[i] = input.nextInt();
        }

        int aranacakSayi;
        System.out.print("Please Enter Searching Number: ");
        aranacakSayi = input.nextInt();

        mesajVer(aranacakSayi, sayilar);

        input.close();
    }

    public static void mesajVer(int aranacakSayi, int[] sayilar) {
        boolean buldunduMu = false;

        for (int i = 0; i < sayilar.length ; i++) {
            if (sayilar[i] == aranacakSayi) {
                System.out.println("The Number is at " + i + ". index");
                buldunduMu = true;
            }
        }

        if (!buldunduMu) {
            System.out.println("The Number is not in the array");
        }
    }
}