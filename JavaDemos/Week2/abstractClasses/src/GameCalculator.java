public abstract class GameCalculator {

    // the class which get inheritance from GameCalculator, must use
    // this function and must override this abstract method
    public abstract void hesapla();

    // final --> i don't want override
    // so all class must use this if get inheritance from GameCalculator
    public final void gameOver() {
        System.out.println("Game Over!");
    }
}
