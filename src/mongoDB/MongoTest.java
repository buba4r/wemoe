package mongoDB;

public class MongoTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		MongoFonc mg = new MongoFonc();
		mg.create("1");
		//mg.visitePage("1");
		//mg.timerPage("1",10);
		mg.visiteurUnique("192.168.0.1");

	}

}
