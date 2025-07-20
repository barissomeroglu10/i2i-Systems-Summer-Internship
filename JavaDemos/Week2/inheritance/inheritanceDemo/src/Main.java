public class Main {
    public static void main(String[] args) {

        KrediUI krediUI = new KrediUI();
        
        // a kind of polymorphism
        krediUI.KrediHesapla(new OgretmenKrediManager());
        krediUI.KrediHesapla((new AskerKrediManager()));

    }
}