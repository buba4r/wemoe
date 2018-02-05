package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class EssaiJdbc {

	public static void main(String [] args) {
		System.out.println("EssaiJdbc");
		
		// jdbc:mysql://obiwan2.univ-brest.fr/base
		// jdbc:mysql://localhost/base
		
		String url = "jdbc:mysql://localhost/essai";
		String user = "essai";
		String password = "essai";
		
		Connection co = null;
		
		try {
			co = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			System.out.println("Erreur getConnection "+e.getMessage());
		}
		
		Statement st = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from t_livre";
			st = co.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				System.out.println("auteur = "+rs.getString("auteur"));
			}
			
		} catch (Exception e) {
			System.out.println("Erreur sql "+e.getMessage());
		}
		
		if (rs != null) try {rs.close();}catch (Exception e) {}
		if (st != null) try {st.close();}catch (Exception e) {}
		if (co != null) try {co.close();}catch (Exception e) {}
	}
}

