public class Main {
    public static void main(String[] args) {

        String[][] sehirler = new String[3][3];

        sehirler[0][0] = "İstanbul";
        sehirler[0][1] = "Van";
        sehirler[0][2] = "Denizli";
        sehirler[1][0] = "Isparta";
        sehirler[1][1] = "Ordu";
        sehirler[1][2] = "Muğla";
        sehirler[2][0] = "Diyarbakır";
        sehirler[2][1] = "Mardin";
        sehirler[2][2] = "Gaziantep";

        // Nested loop
        for (int i = 0; i < sehirler.length; i++) {
            for (int j = 0; j < sehirler[i].length; j++) {
                System.out.print(sehirler[i][j] + " ");
            }

            System.out.println();
        }
    }
}