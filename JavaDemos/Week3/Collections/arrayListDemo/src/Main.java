import java.util.ArrayList;
import java.util.Objects;

public class Main {
    public static void main(String[] args) {

        /* int[] sayilar = new int[]{1,2,3};
        sayilar = new int[4]; // after this line we'll have clear new array so there is no value for {1,2,3}
        System.out.println(sayilar[0]); */

        // there is no obligation to give a size to array list
        ArrayList sayilar = new ArrayList();
        // System.out.println(sayilar.size());

        sayilar.add(1); // this gets object so we can add different type
        sayilar.add(2);
        sayilar.add("Van");
        // System.out.println(sayilar.size());

        // System.out.println(sayilar.get(2)); // return 2. index's value

        // sayilar.set(0, "İstanbul"); // to change a member
        // System.out.println(sayilar.get(0));

        // sayilar.remove(0); // after this 1. index will be 0. index and 2. will be 1.
        // System.out.println(sayilar.get(0));

        // sayilar.clear(); // to clear all members
        // System.out.println(sayilar.size());

        for (Object o : sayilar) { // for ArrayList we must use object type
            System.out.println(o);
        }
    }
}