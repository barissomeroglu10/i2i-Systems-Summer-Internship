import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        System.out.println("---------Lütfen Yapmak İstediğiniz İşlem Türünü Seçiniz--------");
        System.out.println("1-Toplama , 2-Çıkarma, 3-Çarpma, 4-Bölme");
        int islemTuru = input.nextInt();

        System.out.println("Lütfen 1. Sayıyı Girin: ");
        double sayi1 = input.nextDouble();

        System.out.println("Lütfen 2. Sayıyı Girin: ");
        double sayi2 = input.nextDouble();

        DortIslem dortIslem = new DortIslem();

        switch (islemTuru) {
            case 1:
                System.out.println(dortIslem.Topla(sayi1, sayi2));
                break;
            case 2:
                System.out.println(dortIslem.Cikar(sayi1, sayi2));
                break;
            case 3:
                System.out.println(dortIslem.Carp(sayi1, sayi2));
                break;
            case 4:
                System.out.println(dortIslem.Bol(sayi1, sayi2));
                break;
            default:
                System.out.println("Lütfen Doğru İşlem Numarasını Seçin!");
        }

        input.close();
    }
}