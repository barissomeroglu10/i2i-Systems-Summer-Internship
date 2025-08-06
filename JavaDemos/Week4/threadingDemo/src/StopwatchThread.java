public class StopwatchThread implements Runnable {

    private Thread thread;
    // Java wants to see threads as separate so we give different names for the threads
    String threadName;

    public StopwatchThread(String threadName) {
        this.threadName = threadName;
        System.out.println("Starting thread " + threadName);
    }

    @Override
    public void run() {
        // codes in here work as thread
        System.out.printf("Thread is running\n", threadName);

        // write a class/code and call it for here, do not use all code is here
        try {
            for (int i = 1; i <= 10; i++) {
                System.out.println(threadName + ": " + i);
                Thread.sleep(1000);
            }// write current i value then wait 1 second
        }
        catch (InterruptedException e) {
            System.out.println("Thread " + threadName + " interrupted");
        }

        System.out.println("Thread " + threadName + " stopped");
    }

    public void start() {
        System.out.println("Starting create thread object " + threadName);

        if (thread == null) {
            thread = new Thread(this,threadName);
            thread.start(); // important one
        }
    }
}
