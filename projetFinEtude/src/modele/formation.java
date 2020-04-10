package modele;

public class formation {
	
public int getId_formation() {
		return id_formation;
	}


	public void setId_formation(int id_formation) {
		this.id_formation = id_formation;
	}

private int id_formation ,nombre_place ;	
 private String NomFormation ,type_evaluation ;
	
	
	public int getNombre_place() {
	return nombre_place;
}


public void setNombre_place(int nombre_place) {
	this.nombre_place = nombre_place;
}


public String getType_evaluation() {
	return type_evaluation;
}


public void setType_evaluation(String type_evaluation) {
	this.type_evaluation = type_evaluation;
}


	public formation(){
		
		
	}


	public String getNomFormation() {
		return NomFormation;
	}


	public void setNomFormation(String nomFormation) {
		NomFormation = nomFormation;
	}



	public formation(String nomFormation/*, String departement*/) {
		super();
		NomFormation = nomFormation;
		//this.departement = departement;
	}

	public formation(int id_formation, String NomFormation){
		this.id_formation=id_formation ;
		this.NomFormation=NomFormation;
	}

	
	
	
	

}
