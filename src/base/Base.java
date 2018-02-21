package base;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.ResourceBundle;

import bean.Personne;


public class Base {

	String config = "config"; // fichier config.properties
	// modification
	String url = null;
	String user = null;
	String password = null;
	
	Connection co = null;
	
	public boolean ouvrir() {
		boolean res = false;
		try {
			ResourceBundle rs = ResourceBundle.getBundle(config);
			url = rs.getString("url");
			user = rs.getString("user");
			password = rs.getString("password");
			System.out.println("url = "+url);
			System.out.println("user = "+user);
			//System.out.println("password = "+password);

			co = DriverManager.getConnection(url, user, password);
			res = true;
		}
		catch (Exception e) {
			System.out.println("Erreur Base.ouvrir "+e.getMessage());
		}

		return res;
	}
	
	public void fermer() {
		if (co != null) try {co.close();}catch (Exception e) {}
	}
	
	public int enregistrerPersonnes(Personne p) {
		int res = 0;
		
		try {
			String sql = "insert into t_personnes_per (per_nom, per_prenom, per_mail, per_statut)"+
					"values (?, ?, ?, ?) ";
			PreparedStatement ps = co.prepareStatement(sql);
			ps.setString(1, p.getPer_nom());
			ps.setString(2,  p.getPer_prenom());
			ps.setString(3,  p.getPer_mail());
			ps.setBoolean(4, p.getPer_statut());
			
			res = ps.executeUpdate();
			System.out.println("Exec sql : "+sql);
		}
		catch (Exception e) {
			System.out.println("Erreur Base.enregistrerPersonne "+e.getMessage());
		}
		return res;
	}
	
	public ArrayList<Personne> listerPersonne() {
		ArrayList<Personne> lst = new ArrayList<>();
		try {
			String sql = "select * from t_Personnes_per";
			PreparedStatement ps = co.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Personne p = new Personne();
				p.setPer_nom(rs.getString("per_nom"));
				p.setPer_prenom(rs.getString("per_prenom"));
				p.setPer_mail(rs.getString("per_mail"));
				p.setPer_statut(rs.getBoolean("per_statut"));
				lst.add(p);
			}
			System.out.println("Exec sql : "+sql);

		}
		catch (Exception e) {
			System.out.println("Erreur Base.listerPersonnes "+e.getMessage());
		}
		return lst;
	}
	
	public static void main(String [] args) {
		System.out.println("Base");
		Base base = new Base();
		base.ouvrir();
		
		Personne p = new Personne("creignou", "jeremy","creignou.jeremy@gmail.com",false);
		base.enregistrerPersonnes(p);
		
		
		ArrayList<Personne> res = base.listerPersonne();
		for (Personne personne : res) {
			System.out.println("Personne "+personne.getPer_nom());
		}
		
		base.fermer();
	}
	
}
