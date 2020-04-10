package modele;


import java.io.Serializable ;
import java.sql.Date;

public class Periodes implements Serializable {

	private int id ;
	private Date debutInscription , finInscription,debutRecours ,finRecours ,debutEntretiens, finEntretiens 
	, affichage1, affichage2 , affichage3 ; 	
	
	
	
	
	public Periodes(){
		
	}
	
	public Periodes(Date debutInscription2, Date finInscription2, Date debutRecours2, Date finRecours2,
			Date debutEntretiens2, Date finEntretiens2, Date affichage12, Date affichage22, Date affichage32) {
		super();
		debutInscription = debutInscription2;
		finInscription = finInscription2;
		debutRecours = debutRecours2;
		finRecours = finRecours2;
		debutEntretiens = debutEntretiens2;
		finEntretiens = finEntretiens2;
		affichage1 = affichage12;
		affichage2 = affichage22;
		affichage3 = affichage32;
	}

	/*public Periodes(int id, Date debutInscription, Date finInscription, Date debutRecours, Date finRecours,
			Date debutEntretiens, Date finEntretiens, Date affichage1, Date affichage2, Date affichage3) {
		super();
		this.id = id;
		this.debutInscription = debutInscription;
		this.finInscription = finInscription;
		this.debutRecours = debutRecours;
		this.finRecours = finRecours;
		this.debutEntretiens = debutEntretiens;
		this.finEntretiens = finEntretiens;
		this.affichage1 = affichage1;
		this.affichage2 = affichage2;
		this.affichage3 = affichage3;
	}*/


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public Date getDebutInscription() {
		return debutInscription;
	}


	public void setDebutInscription(Date debutInscription) {
		this.debutInscription = debutInscription;
	}


	public Date getFinInscription() {
		return finInscription;
	}


	public void setFinInscription(Date finInscription) {
		this.finInscription = finInscription;
	}


	public Date getDebutRecours() {
		return debutRecours;
	}


	public void setDebutRecours(Date debutRecours) {
		this.debutRecours = debutRecours;
	}


	public Date getFinRecours() {
		return finRecours;
	}


	public void setFinRecours(Date finRecours) {
		this.finRecours = finRecours;
	}


	public Date getDebutEntretiens() {
		return debutEntretiens;
	}


	public void setDebutEntretiens(Date debutEntretiens) {
		this.debutEntretiens = debutEntretiens;
	}


	public Date getFinEntretiens() {
		return finEntretiens;
	}


	public void setFinEntretiens(Date finEntretiens) {
		this.finEntretiens = finEntretiens;
	}


	public Date getAffichage1() {
		return affichage1;
	}


	public void setAffichage1(Date affichage1) {
		this.affichage1 = affichage1;
	}


	public Date getAffichage2() {
		return affichage2;
	}


	public void setAffichage2(Date affichage2) {
		this.affichage2 = affichage2;
	}


	public Date getAffichage3() {
		return affichage3;
	}


	public void setAffichage3(Date affichage3) {
		this.affichage3 = affichage3;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
}