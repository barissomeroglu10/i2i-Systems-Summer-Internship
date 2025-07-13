public class Main {
    public static void main(String[] args) {

        int a = 5;
        int b = 10;

        topla(a, b);
        topla(1,2,3,4,5,6,7,8,9);

        System.out.println(topla(a,b));
        System.out.println(topla(1,2,3,4,5,6,7,8,9));
    }

    public static void ekle() {
        System.out.println("Eklendi");
    }

    public static void sil() {
        System.out.println("Silindi");
    }

    public static void guncelle() {
        System.out.println("Güncellendi");
    }

    // a return function
    public static int topla(int a, int b) {
        return a + b;
    }

    // variable arguments
    public static int topla(int... sayilar) {
        int toplam = 0;
        for (int sayi : sayilar) {
            toplam += sayi;
        }
        return toplam;
    }
}