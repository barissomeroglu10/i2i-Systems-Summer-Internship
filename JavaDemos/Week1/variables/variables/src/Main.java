public class Main {
    public static void main(String[] args) {

        // variables = reusability
        int OgrenciSayisi = 10;

        // just update new value above and use it below
        System.out.println("Öğrenci Sayısı = " + OgrenciSayisi);

        // using variables avoid this things below
        System.out.println("Öğrenci Sayısı = 11" );
        System.out.println("Öğrenci Sayısı = 12" );
        System.out.println("Öğrenci Sayısı = 13" );

        String mesaj = "Öğrenci Sayısı =";

        System.out.println(mesaj + " " + OgrenciSayisi);
    }
}
