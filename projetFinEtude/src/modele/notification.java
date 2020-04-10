package modele;

import java.sql.Timestamp;

public class notification {

	private int id_notification , id_etudiant ;
	private String information  , type_notification ;
	private boolean flag ;
	private Timestamp time ;
	
	
	
	
	
	
	
	
	
	
	
	public notification(int id_etudiant, String information, String type_notification, boolean flag, Timestamp time) {
		super();
		this.id_etudiant = id_etudiant;
		this.information = information;
		this.type_notification = type_notification;
		this.flag = flag;
		this.time = time;
	}

	public notification() {
		super();
	}

	public notification(int id_notification, int id_etudiant, String information, String type_notification,
			boolean flag, Timestamp time) {
		super();
		this.id_notification = id_notification;
		this.id_etudiant = id_etudiant;
		this.information = information;
		this.type_notification = type_notification;
		this.flag = flag;
		this.time = time;
	}

	public String getType_notification() {
		return type_notification;
	}

	public void setType_notification(String type_notification) {
		this.type_notification = type_notification;
	}

	
	public int getId_etudiant() {
		return id_etudiant;
	}

	public void setId_etudiant(int id_etudiant) {
		this.id_etudiant = id_etudiant;
	}

	public int getId_notification() {
		return id_notification;
	}

	public void setId_notification(int id_notification) {
		this.id_notification = id_notification;
	}

	public String getInformation() {
		return information;
	}

	public void setInformation(String information) {
		this.information = information;
	}

	public boolean isFlag() {
		return flag;
	}

	public void setFlag(boolean flag) {
		this.flag = flag;
	}

	public Timestamp getTime() {
		return time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}
	
	
	
	
	
}
