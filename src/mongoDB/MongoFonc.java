package mongoDB;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.ResourceBundle;

import org.bson.Document;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

public class MongoFonc{	
	DB db;
	MongoClient mongoClient;	
	String config = "config"; 	
	String HOST= null;
	String URL = null;
	int PORT;
	String DATABASE = null;
	
	
	public MongoFonc() {
		try {
			ResourceBundle rs = ResourceBundle.getBundle(config);
			URL = rs.getString("URL");
			PORT = Integer.parseInt(rs.getString("PORT"));
			DATABASE = rs.getString("DATABASE");
		}
		catch (Exception e) {
			System.out.println("Erreur Config "+e.getMessage());
		}	
	}
	
	
	public void connectMongo() {
		try {
	 mongoClient = new MongoClient(URL , PORT);
	 db = mongoClient.getDB(DATABASE);
		}
		catch(Exception e) {e.printStackTrace();}
		
	}
	
	public void create(String idPage) {
		
		

		connectMongo();
		 
		try {
		DBCollection collection = db.getCollection("pages");
	         BasicDBObject d = new BasicDBObject()
	        	.append("_id",idPage)
	        
	            .append("compteurVisite",0);
	            //.append("timerMoyenVisite",0);
	         	collection.insert(d);
	         	mongoClient.close();}
	   catch( com.mongodb.DuplicateKeyException e) {
		   System.out.println("ID Page existant");
	   }
	         	
	      }
	      
/*	public void timerPage(String idPage,int time) {
		
		
		connectMongo();
		
		DBCollection collection =db.getCollection("pages");
		DBObject myPage = collection.findOne(idPage);
		
		int moy = (Integer) myPage.get("timerMoyenVisite");
		int nbVisite = (Integer) myPage.get("compteurVisite");
		int newMoy = (moy*(nbVisite-1) + time)/nbVisite;
		BasicDBObject d = new BasicDBObject();
	      d.append("timerMoyenVisite",newMoy);	
	      
	     
	      
	      
	      collection.update(new BasicDBObject("_id", idPage),
	         new BasicDBObject("$set", d));
	      mongoClient.close();
	      
	}*/
	
	public void visitePage(String idPage) {
		
		
		connectMongo();
		DBCollection collection =db.getCollection("pages");		      		      		
		BasicDBObject document = new BasicDBObject();
		 Document d = new Document().append("compteurVisite",1);
	      
	    //Verifier existence 
	      collection.update(new BasicDBObject("_id", idPage),
	 	         new BasicDBObject("$inc", d));
	      mongoClient.close();
	}
	
	public boolean isVisiteurUnique(String ipVisiteur)
	{	
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		String date1 = sdf.format(new Date());
		String date2 ;
		connectMongo();		
		DBCollection collection = db.getCollection("site");	
		DBObject visiteur = collection.findOne(ipVisiteur);
		if(visiteur == null) { return true;}		
		date2 = (String) visiteur.get("dateVisite");		
		try 
		{
			long d1 = sdf.parse(date1).getTime() - sdf.parse(date2).getTime();
			if(d1 / 60 / 60 >= 240000)// 0 ou autre chose 
			{
				return true;
			}
		}
			catch (ParseException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return false;	
	}
	
	

	
	
	
	public void visiteurUnique(String ipVisiteur) {
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		String date1 = sdf.format(new Date());
		connectMongo();		
		DBCollection collection = db.getCollection("site");
		
	if(isVisiteurUnique(ipVisiteur)) {
			
		DBObject visiteur = collection.findOne(ipVisiteur);
		if(visiteur == null) {
			BasicDBObject d = new BasicDBObject()
		        	.append("_id",ipVisiteur)		        
		            .append("dateVisite",date1);
		         	collection.insert(d); 			     	         	
			
		}
		else {
			
				      		      		
			BasicDBObject document = new BasicDBObject();
			 Document d = new Document().append("dateVisite",date1);
		      collection.update(new BasicDBObject("_id", ipVisiteur),
		 	         new BasicDBObject("$set", d));
		    
			
		}
		mongoClient.close();
		
		
		
	}
	      
			
			
			
		
	}
	

	
	

}
