// ctrl + shift + alt + l --> to put code in an order
public class Main {
    public static void main(String[] args) {

        char grade = 'A';

        switch (grade) {

            case 'A':
                System.out.println("A harf notu ile geçtiniz");
                break;

            case 'B':
                System.out.println("B harf notu ile geçtiniz");
                break;

            case 'C':
                System.out.println("C harf notu ile geçtiniz");
                break;

            case 'D':
                System.out.println("D harf notu ile kaldınız");
                break;

            case 'F':
                System.out.println("f harf notu ile kaldınız ve derse devam zorunluluğunuz var");
                break;

            default:
                System.out.println("Geçersiz not girdiniz");

        }
    }
}