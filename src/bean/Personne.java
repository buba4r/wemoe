package bean;

public class Personne {
	
	Integer per_id = null;
	
	private String per_nom = null;
	private String per_prenom = null;
	private String per_mail = null;
	private Boolean per_statut = null;
	
	public Personne() {
		
	}
	
	
	public Personne(String nom, String prenom, String mail, Boolean statut) {
		this.per_nom = nom;
		this.per_prenom = prenom;
		this.per_mail = mail;
		this.per_statut = statut;
		
	}


	public Integer getPer_id() {
		return per_id;
	}


	public void setPer_id(Integer per_id) {
		this.per_id = per_id;
	}


	public String getPer_nom() {
		return per_nom;
	}


	public void setPer_nom(String per_nom) {
		this.per_nom = per_nom;
	}


	public String getPer_prenom() {
		return per_prenom;
	}


	public void setPer_prenom(String per_prenom) {
		this.per_prenom = per_prenom;
	}


	public String getPer_mail() {
		return per_mail;
	}


	public void setPer_mail(String per_mail) {
		this.per_mail = per_mail;
	}


	public Boolean getPer_statut() {
		return per_statut;
	}


	public void setPer_statut(Boolean per_statut) {
		this.per_statut = per_statut;
	}

}
