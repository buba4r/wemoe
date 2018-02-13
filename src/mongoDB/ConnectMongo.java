package mongoDB;

import java.util.ArrayList;
import java.util.List;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;

public class ConnectMongo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		MongoClient mog = new MongoClient("localhost", 27017);
		MongoDatabase db = mog.getDatabase("DialloMongoDB");
		System.out.println("DB connected ");
		System.out.println(db.getName());
		MongoCollection<Document> col = db.getCollection("oeuvres");
		MongoCollection<Document> col2 = db.getCollection("coordonnesVilles");


		try (MongoCursor<Document> cur = col.find().iterator()) {
			while (cur.hasNext()) {

				Document doc = cur.next();

				List list = new ArrayList(doc.values());
				System.out.print(list.get(1));
				System.out.print(": ");
				System.out.println(list.get(2));
			}
		}
		mog.close();

	}

}
