public class Main {
    public static void main(String[] args) {

        String[] ogrenciler = new String[3];

        ogrenciler[0] = "Mizgin";
        ogrenciler[1] = "Ömer";
        ogrenciler[2] = "Mühbet";

        for (int i = 0; i < ogrenciler.length; i++) {
            System.out.println(ogrenciler[i]);
        }

        System.out.println("--------------------");

        // different type of for using
        for (String ogrenci : ogrenciler) {
            System.out.println(ogrenci);
        }
    }
}