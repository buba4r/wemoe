package validation;

import java.lang.reflect.Field;
import java.util.Hashtable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import annotation.Regexp;
import bean.Personne;;

public class Validation {

	boolean valide = true;
	// indique si une erreur a été détectée
	
	Hashtable<String, String> valeurs =
			new Hashtable<String, String>();
	// contiendra les valeurs saisies dans les champs
	// ex : ("auteur", "lauteursaisi")
	
	Hashtable<String, String> erreurs = 
			new Hashtable<String, String>();
	// contiendra les erreurs éventuelles
	// ex: ("annee","L'année doit comporter 4 chiffres")
	
	
	
	public boolean regexp(Class c, String param, String val) {
		boolean res = false;
		
		try {
			System.out.println("validation du champ "+param);
			System.out.println("valeur saisie : "+val);
			
			Field f = c.getDeclaredField(param);
			Regexp ann = f.getAnnotation(Regexp.class);
			System.out.println("exp reg = "+ann.expr());
			System.out.println("mess err = "+ann.value());
			
			Pattern pattern = Pattern.compile(ann.expr());
			Matcher matcher = pattern.matcher(val);
			if (!matcher.matches()) {
				// valeur incorrecte
				System.out.println("Erreur détectée : "+ann.value());
				erreurs.put(param, ann.value());
				valide = false;
			}
			else {
				System.out.println("Pas d 'erreur");
			}
			
			valeurs.put(param, val);
			
			
		}
		catch (Exception e) {
			valide = false;
			System.out.println("Erreur Validation.regexp "+e.getMessage());
		}
		
		
		return res;
	}
	
	public static void main(String [] args) {
	
		// exemples appels
	
		Validation v = new Validation();
		
		boolean res = 
				v.regexp(bean.Personne.class, "nom", "n");
		System.out.println("res = "+res);
		
		res = v.regexp(bean.Personne.class, "prenom", "lauteursaisi");
		System.out.println("res = "+res);
	}

	public boolean isValide() {
		return valide;
	}

	public void setValide(boolean valide) {
		this.valide = valide;
	}

	public Hashtable<String, String> getValeurs() {
		return valeurs;
	}

	public void setValeurs(Hashtable<String, String> valeurs) {
		this.valeurs = valeurs;
	}

	public Hashtable<String, String> getErreurs() {
		return erreurs;
	}

	public void setErreurs(Hashtable<String, String> erreurs) {
		this.erreurs = erreurs;
	}
}
