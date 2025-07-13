public class Main {
    public static void main(String[] args) {

        /*String mesaj = "Hello World!";
        System.out.println(mesaj);

        System.out.println("Eleman Sayısı = " + mesaj.length());

        System.out.println("5. Eleman = " + mesaj.charAt(4));

        // Make new string
        System.out.println(mesaj.concat(" I am back!"));
        System.out.println(mesaj);

        // A boolean control character for start-end
        System.out.println(mesaj.startsWith("B"));
        System.out.println(mesaj.endsWith("!"));

        // Get a part of the string
        char[] karakterler = new char[6];
        mesaj.getChars(0, 6, karakterler, 0);
        System.out.println(karakterler);

        System.out.println(mesaj.indexOf('!'));
        System.out.println(mesaj.lastIndexOf('!'));*/

        String mesaj = "Hello World!";
        System.out.println(mesaj);

        // Change something in the string
        System.out.println(mesaj.replace("!", "."));
        System.out.println(mesaj);

        System.out.println(mesaj.substring(3, 8));

        // Split the string
        for (String kelime : mesaj.split(" ")) {
            System.out.println(kelime);
        }

        // Lowercase and Uppercase
        System.out.println(mesaj.toLowerCase());
        System.out.println(mesaj.toUpperCase());

        // Trim
        System.out.println(mesaj.trim());

    }
}