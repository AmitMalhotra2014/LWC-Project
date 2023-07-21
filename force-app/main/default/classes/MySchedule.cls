public class MySchedule implements Schedulable {
   public void execute(SchedulableContext SC) {
    MyBatch mb = new MyBatch();
    Database.executeBatch(mb);       
   }
}