public class Main {
    public static void main(String[] args) {

        byte sayi1 = 10;
        byte sayi2 = 11;
        byte sayi3 = 12;

        byte temp; // Yer değiştirmek için geçici değişken

        // sayi1 ve sayi2'yi karşılaştır ve gerekirse kendi aralarında yer değiştir
        // bu adımdan sonra eğer if sağlanırsa sayi1, sayi2'ye göre en küçük olacak
        if (sayi1 > sayi2) {
            temp = sayi1;
            sayi1 = sayi2;
            sayi2 = temp;
        }

        // sayi1 ve sayi2'yi karşılaştır ve gerekirse kendi aralarında yer değiştir
        // bu adımdan sonra eğer if sağlanırsa sayi1 kesin olarak en küçük sayı olacaktır
        if (sayi1 > sayi3) {
            temp = sayi1;
            sayi1 = sayi3;
            sayi3 = temp;
        }

        // sayi1'e en küçük değer ataması yapıldıktan sonra artık sayi2 ve sayi3'ün kendi aralarında
        // koşul sağlandığı takdirde yer değiştirmeleri kalmakta
        if (sayi2 > sayi3) {
            temp = sayi2;
            sayi2 = sayi3;
            sayi3 = temp;
        }

        System.out.println("Sıralı Hali: " + sayi1 + " < " + sayi2 + " < " + sayi3);
    }
}