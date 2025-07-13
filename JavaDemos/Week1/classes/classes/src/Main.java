public class Main {
    public static void main(String[] args) {

        // reference type
        CustomerManager customerManager = new CustomerManager();
        customerManager.Add();
        customerManager.Remove();
        customerManager.Update();

        CustomerManager customerManager2 = new CustomerManager();
        customerManager = customerManager2; // both object show same thing

        // value type
        int say1 = 10;
        int say2 = 20;
        say2 = say1;
        System.out.println(say2);

        // reference type
        int[] sayilar1 = new int[] {1,2,3};
        int[] sayilar2 = new int[] {3,4,5};
        sayilar2 = sayilar1;
        sayilar1[0] = 10;
        System.out.println(sayilar2[0]);

    }
}