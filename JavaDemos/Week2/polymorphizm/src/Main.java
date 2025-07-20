public class Main {
    public static void main(String[] args) {

        // EmailLogger Logger = new EmailLogger();
        // Logger.Log("Log Message");

        BaseLogger[] loggers = new BaseLogger[]{
                new EmailLogger(),
                new FileLogger(),
                new DatabaseLogger()
        };

        for (BaseLogger logger : loggers) {
            logger.Log("Log Message");
        }

        CustomerManager customerManager = new CustomerManager(new DatabaseLogger());
        customerManager.Add();

    }
}