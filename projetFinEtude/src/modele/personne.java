package modele;

public class personne {
	private String nom,prenom,metier,daten,password,adresse,email,telephone,formation;
	private int id;
	private int IDformation;
	
	public personne(){}
	
	
	public String getFormation() {
		return formation;
	}


	public void setFormation(String formation) {
		this.formation = formation;
	}


	public int getIDformation() {
		return IDformation;
	}


	public void setIDformation(int iDformation) {
		IDformation = iDformation;
	}


	public personne(String nom, String prenom, String metier, int id){
		this.nom=nom;
		this.prenom=prenom;
		this.metier=metier;
		this.id=id;
	}
	
	
	public personne(int id,String nom, String prenom){
		this.id=id;
		this.nom=nom;
		this.prenom=prenom;
		
	}
	
	//pour responsable Pedagogie authentification
	
	
	
	public personne(int id, String nom, String prenom, String email, String password,String telephone) {
		super();
		this.id=id;
		this.nom = nom;
		this.prenom = prenom;
		this.password = password;
		this.adresse = adresse;
		this.email = email;
		this.telephone = telephone;
		
	
	}
	
	
	
	public personne(String nom, String prenom, String adresse, String email, String daten, String password,
			String telephone,int IDformation){
		
		this.nom = nom;
		this.prenom = prenom;
		this.adresse=adresse;
		this.email=email;
		this.daten=daten;
		this.password=password;
		this.telephone=telephone;
		this.IDformation=IDformation ;
	}
		
	
	
	
	
	
	
	
	
	
	
	public String getDaten() {
		return daten;
	}
	public void setDaten(String daten) {
		this.daten = daten;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public int getId(){
		return id;
	}
	public void setId(int id){
	this.id=id;	
	}
	public String getNom(){
		return nom;
	}
	public void setNom(String nom){
		this.nom=nom;
	}
	public String getPrenom(){
		return prenom;
	}
	public void setPrenom(String prenom){
		this.prenom=prenom;
	}
	public String getMetier(){
		return metier;
	}
	public void setMetier(String metier){
		this.metier=metier;
	}
	

}