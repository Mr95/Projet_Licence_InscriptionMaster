package modele;


import java.io.Serializable ;
import java.sql.Timestamp ;

public class recours  implements Serializable{

	private int id_recours , id_etudiant ; 
	private String Informations , reponse  ;
	private boolean reception ,etat_traitement ;
	private Timestamp timestamp ;
	
	
	public recours(int id_recours, String informations,boolean reception ,String reponse, int id_etudiant,boolean etat_traitement) {
		super();
		this.id_recours = id_recours;
		this.id_etudiant = id_etudiant;
		Informations = informations;
		this.reponse = reponse;
		this.reception=reception ;
		this.etat_traitement =etat_traitement ;
	}
	
	
	
	
	
	
	
	public Timestamp getTimestamp() {
		return timestamp;
	}







	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}







	public recours(int id_recours, String informations, boolean reception, int id_etudiant,boolean etat_traitement) {
		super();
		this.id_recours = id_recours;
		this.id_etudiant = id_etudiant;
		Informations = informations;
		this.reception = reception;
		this.etat_traitement =etat_traitement ;
	}







	public boolean isEtat_traitement() {
		return etat_traitement;
	}







	public void setEtat_traitement(boolean etat_traitement) {
		this.etat_traitement = etat_traitement;
	}







	public int getId_recours() {
		return id_recours;
	}




	public void setId_recours(int id_recours) {
		this.id_recours = id_recours;
	}




	public int getId_etudiant() {
		return id_etudiant;
	}




	public void setId_etudiant(int id_etudiant) {
		this.id_etudiant = id_etudiant;
	}




	public String getInformations() {
		return Informations;
	}




	public void setInformations(String informations) {
		Informations = informations;
	}




	public String getReponse() {
		return reponse;
	}




	public void setReponse(String reponse) {
		this.reponse = reponse;
	}




	public boolean isReception() {
		return reception;
	}




	public void setReception(boolean reception) {
		this.reception = reception;
	} 
	
	
	
	
	
	
	

	
	
}