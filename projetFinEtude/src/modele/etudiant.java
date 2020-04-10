package modele;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.io.DataOutputStream;
import java.io.OutputStream;

public class etudiant {

	private int id  ;
	
	private String nom,prenom,email,password,date_naissance,adresse, num_telephone , etablissement_origine,type_etudiant,etat_dossier,manque_dossier ;
	
	private int  IDformation ;
	private double moyenne1 , moyenne2 , moyenne3 , moyenne4 ;
	
	private Blob Bac , cursus1 ,cursus2 ,cursus3 , cursus4 ,licence ,attestation_classemnt , bonne;
	private boolean etat_Inscription = false ,isAdmis =false ;
	
	
	private double mc;
	

	public etudiant(){}
	
	/************pour juste tester dossier************/
	public etudiant(int id_etudiant,String nom ,String prenom,String typeEtudiant,String etat_dossier){
		id=id_etudiant;
		this.nom=nom ;
		this.prenom=prenom ;
		type_etudiant=typeEtudiant ;
		this.etat_dossier=etat_dossier ;
	}/***********************/

	public etudiant(String nom ,String prenom,String date,Boolean etat_Inscription,Boolean isAdmis,String etat_dossier,String manque_dossier ,int id_formation,
			double moyenne1,double moyenne2,double moyenne3,double moyenne4){
		
		this.nom=nom ;
		this.prenom=prenom ;
		date_naissance=date ;
		this.etat_Inscription=etat_Inscription;
		this.isAdmis=isAdmis ;
		this.etat_dossier=etat_dossier ;
		this.manque_dossier=manque_dossier ;
		IDformation=id_formation ;
		this.moyenne1=moyenne1;
		this.moyenne2=moyenne2 ;
		this.moyenne3=moyenne3 ;
		this.moyenne4=moyenne4 ;
		}/***********************/
	
	public etudiant(int id ,String nom, String prenom, String email, String password, String daten, 
			String adresse, String tel){
		this.id=id ;
		this.nom=nom;
		this.prenom=prenom;
		this.email=email;
		this.password=password;
		date_naissance=daten;
		this.adresse=adresse;		
		//this.IDformation=IDformation;
	}
	
	 public etudiant(String nom, String prenom, int id){
		this.nom=nom;
		this.prenom=prenom;
		this.id=id;
	}

	 public etudiant(String nom, String prenom,String email ,String password,String daten ,String telephone){
			this.nom=nom;
			this.prenom=prenom;
			this.email=email ;
			date_naissance=daten ;
			this.password=password ;
			num_telephone=telephone ;
			
		}
	 
	 
	 
	 public etudiant(String nom, String prenom, int id,String type_etudiant,int IDformation){
			this.nom=nom;
			this.prenom=prenom;
			this.id=id;
			this.type_etudiant=type_etudiant ;
			this.IDformation =IDformation ;
	 }
	 
	
	public etudiant(String nom, String prenom, String email, String password, String date_naissance,
			String num_telephone, int iDformation) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.password = password;
		this.date_naissance = date_naissance;
		this.num_telephone = num_telephone;
		IDformation = iDformation;
	}
	
	

	public etudiant(int id_etudiant,String nom_etudiant,String prenom_etudiant,String email ,String mot_de_passe ,String num_telephone ,String date_naissance){
				
		id =id_etudiant;
		nom= nom_etudiant;
		prenom =prenom_etudiant;
		this.email= email ; 
		password = mot_de_passe;
		this.num_telephone = num_telephone ; 
		this.date_naissance =date_naissance ;
		
	}
	
	
	public etudiant(String nom, String prenom, double mc){
		this.nom=nom;
		this.prenom=prenom;
		this.mc=mc;
	}
	
	public etudiant(String nom, String prenom, int id,int id_formation){
		this.nom=nom;
		this.prenom=prenom;
		this.id=id;
		IDformation=id_formation;
	}
	
	
	
	
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDate_naissance() {
		return date_naissance;
	}
	public void setDate_naissance(String date_naissance) {
		this.date_naissance = date_naissance;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getNum_telephone() {
		return num_telephone;
	}
	public void setNum_telephone(String num_telephone) {
		this.num_telephone = num_telephone;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEtablissement_origine() {
		return etablissement_origine;
	}
	public void setEtablissement_origine(String etablissement_origine) {
		this.etablissement_origine = etablissement_origine;
	}
	public Blob getBac() {
		return Bac;
	}
	public void setBac(Blob bac) {
		Bac = bac;
	}
	public Blob getCursus1() {
		return cursus1;
	}
	public void setCursus1(Blob cursus1) {
		this.cursus1 = cursus1;
	}
	public Blob getCursus2() {
		return cursus2;
	}
	public void setCursus2(Blob cursus2) {
		this.cursus2 = cursus2;
	}
	public Blob getCursus3() {
		return cursus3;
	}
	public void setCursus3(Blob cursus3) {
		this.cursus3 = cursus3;
	}
	public Blob getCursus4() {
		return cursus4;
	}
	public void setCursus4(Blob cursus4) {
		this.cursus4 = cursus4;
	}
	public Blob getLicence() {
		return licence;
	}
	public void setLicence(Blob licence) {
		this.licence = licence;
	}
	public Blob getAttestation_classemnt() {
		return attestation_classemnt;
	}
	public void setAttestation_classemnt(Blob attestation_classemnt) {
		this.attestation_classemnt = attestation_classemnt;
	}
	public Blob getBonne() {
		return bonne;
	}
	public void setBonne(Blob bonne) {
		this.bonne = bonne;
	}
	public String getType_etudiant() {
		return type_etudiant;
	}
	public void setType_etudiant(String type_etudiant) {
		this.type_etudiant = type_etudiant;
	}
	public String getEtat_dossier() {
		return etat_dossier;
	}
	public void setEtat_dossier(String etat_dossier) {
		this.etat_dossier = etat_dossier;
	}
	public int getIDformation() {
		return IDformation;
	}
	public void setIDformation(int iDformation) {
		IDformation = iDformation;
	}
	public boolean isEtat_Inscription() {
		return etat_Inscription;
	}
	public void setEtat_Inscription(boolean etat_Inscription) {
		this.etat_Inscription = etat_Inscription;
	}

	
	
	public boolean isAdmis() {
		return isAdmis;
	}

	public void setAdmis(boolean isAdmis) {
		this.isAdmis = isAdmis;
	}



	//List<DataOutputStream> list =new ArrayList<DataOutputStream>();

	public String getManque_dossier() {
		return manque_dossier;
	}

	public void setManque_dossier(String manque_dossier) {
		this.manque_dossier = manque_dossier;
	}
	

	public double getMoyenne1() {
		return moyenne1;
	}

	public void setMoyenne1(double moyenne1) {
		this.moyenne1 = moyenne1;
	}

	public double getMoyenne2() {
		return moyenne2;
	}

	public void setMoyenne2(double moyenne2) {
		this.moyenne2 = moyenne2;
	}

	public double getMoyenne3() {
		return moyenne3;
	}

	public void setMoyenne3(double moyenne3) {
		this.moyenne3 = moyenne3;
	}

	public double getMoyenne4() {
		return moyenne4;
	}

	public void setMoyenne4(double moyenne4) {
		this.moyenne4 = moyenne4;
	}

	public double getMc() {
		return mc;
	}

	public void setMc(double mc) {
		this.mc = mc;
	}
	
	

	
	
	
	public etudiant(Blob bac, Blob cursus1, Blob cursus2, Blob cursus3) {
		super();
		Bac = bac;
		this.cursus1 = cursus1;
		this.cursus2 = cursus2;
		this.cursus3 = cursus3;
	}

	public etudiant(Blob bac, Blob cursus1, Blob cursus2, Blob cursus3, Blob licence, Blob attestation_classemnt,
			Blob bonne) {
		super();
		Bac = bac;
		this.cursus1 = cursus1;
		this.cursus2 = cursus2;
		this.cursus3 = cursus3;
		this.licence = licence;
		this.attestation_classemnt = attestation_classemnt;
		this.bonne = bonne;
	}

	public etudiant(Blob bac, Blob cursus1, Blob cursus2, Blob cursus3, Blob cursus4, Blob licence,
			Blob attestation_classemnt, Blob bonne) {
		super();
		Bac = bac;
		this.cursus1 = cursus1;
		this.cursus2 = cursus2;
		this.cursus3 = cursus3;
		this.cursus4 = cursus4;
		this.licence = licence;
		this.attestation_classemnt = attestation_classemnt;
		this.bonne = bonne;
	}
	
	
		
}