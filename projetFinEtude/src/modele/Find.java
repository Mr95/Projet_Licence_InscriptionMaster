package modele;

import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement ;

import javax.servlet.http.HttpSession;


	public class Find {
	
	/*****************************/
	private	Connection conn= null;
	private	ResultSet r= null;
	private	Statement st = null;
	/*****************************/
		
	public void connection(){
	
		String dbUrl= "jdbc:mysql://localhost/mprojet";
		String user = "root", password= "";
		String strClassName= "com.mysql.jdbc.Driver";
	
		try{
		
			Class.forName(strClassName);
		
			System.out.println("Driver chargé !");
		
			}catch(ClassNotFoundException e){}
		
				try{
		
					conn= DriverManager.getConnection(dbUrl, user , password);
			
				System.out.println("connecté !");
		
				}catch(SQLException e){}
			}
	
	public Connection con(){
		//192.168.43.187 user = "sami", password= "sami";
		String dbUrl= "jdbc:mysql://localhost/mprojet";
		String user = "root", password= "";
		//localhost user =root
		String strClassName= "com.mysql.jdbc.Driver";
	
		try{
		
			Class.forName(strClassName);
		
			System.out.println("Driver chargé !");
		
			}catch(ClassNotFoundException e){}
		
				try{
		
					conn= DriverManager.getConnection(dbUrl, user , password);
			
				System.out.println("connecté !");
		
				}catch(SQLException e){}
	
				return conn ;
				
	
	}
	
	/********************METHODE ETUDIANT**************/
	
	public List<etudiant> afficher() throws SQLException{
		
		connection();
		
		st = conn.createStatement();
		
		String requete="SELECT id_etudiant, nom_etudiant, prenom_etudiant, email , mot_de_passe ,num_telephone ,date_naissance,id_formation FROM etudiant";
		
		r = st.executeQuery(requete);
		
		ArrayList <etudiant> list=new ArrayList<etudiant>();
		
		while(r.next()){
			etudiant e1 = new etudiant();	
			e1.setId(r.getInt(1));
			e1.setNom(r.getString(2));
			e1.setPrenom(r.getString(3));
			e1.setEmail(r.getString(4));
			e1.setPassword(r.getString(5));
			e1.setNum_telephone(r.getString(6));
			e1.setDate_naissance(r.getString(7));
			e1.setIDformation(r.getInt(8));
			
			list.add(e1);
				
		}
	
		r.close();
		conn.close();
	
		return list;
			
			}
	
	//creation d'un compte d'etdiant 
	public void CompteEtudiant(etudiant e) throws SQLException{
		
		connection();
		
		PreparedStatement stm =conn.prepareStatement("insert into etudiant(nom_etudiant,prenom_etudiant,email,mot_de_passe,date_naissance,num_telephone)values(?,?,?,?,?,?)");
		
			stm.setString(1,e.getNom());
			stm.setString(2,e.getPrenom());
			stm.setString(3,e.getEmail());
			System.out.println("apres");
			stm.setString(4,e.getPassword());
			System.out.println("le mot de passe est"+e.getPassword());
			System.out.println("avant");
			stm.setString(5, e.getDate_naissance());
			stm.setString(6,e.getNum_telephone());
			
	
			stm.execute();
	}
	
	// a chaque fois j'ai besoins d'un attribut apartir d l'id je viendrais ici (j'ajoute au constructeur et dans la methode)
    public etudiant getEtudiantById(int id) throws SQLException{
		
		connection();
		
		st = conn.createStatement();
		
		String requete="SELECT  nom_etudiant, prenom_etudiant, date_naissance, etat_inscription ,isAdmis, etat_dossier,manque_dossier ,id_formation ,moyenne1,moyenne2,moyenne3,moyenne4 FROM etudiant where id_etudiant="+id;
		
		r = st.executeQuery(requete);
		
		etudiant e1=null;
		
		if(r.next()){
		
		 e1 = new etudiant(r.getString(1),r.getString(2),r.getString(3),r.getBoolean(4),r.getBoolean(5),r.getString(6),r.getString(7),r.getInt(8),r.getDouble(9),r.getDouble(10),r.getDouble(11),r.getDouble(12));	
		
				}
	
		r.close();
		conn.close();
	
		return e1;
			
			}
		
	/****************************************************************************/
	
	/*************RESPONSABLE PEDAGOGIE********CRUD*****************************/
	
	public List<personne> afficherRF() throws SQLException{
		
		connection();
		
		st = conn.createStatement();
		
		String requete = "SELECT id_responsablef,nom, prenom ,email, mot_de_passe,num_telephone FROM responsablef";
		
		r = st.executeQuery(requete);
		
		ArrayList <personne> list = new ArrayList<personne>();
		
		while(r.next()){
			
			list.add(new personne(r.getInt(1),r.getString(2),r.getString(3),r.getString(4),r.getString(5),r.getString(6)));
			
			}
	
		r.close();
		conn.close();
		
		return list;
		
	}

 	public List<personne> afficherAgent() throws SQLException{
 			connection();
 			
 			st = conn.createStatement();
		
 			String requete = "SELECT id_agent,nom, prenom ,email ,mot_de_passe ,num_telephone FROM agent_scolarite";
	
 			r = st.executeQuery(requete);
		
 			ArrayList <personne> list = new ArrayList<personne>();
		
 			while(r.next()){
		
 				list.add(new personne(r.getInt(1),r.getString(2),r.getString(3),r.getString(4),r.getString(5),r.getString(6)));
			
 				}
			
 			r.close();
			conn.close();
			
			return list;
 		
 			}
 		
    public List<personne> afficherRP() throws SQLException{
		
		connection();
		
		st = conn.createStatement();
		
		String requete = "SELECT id_responsableP,email , mot_de_passe FROM responsableP";
		
		r = st.executeQuery(requete);
		
		ArrayList <personne> list = new ArrayList<personne>();
		
		while(r.next()){
			personne p =new personne();
			p.setId(r.getInt(1));
			p.setEmail(r.getString(2));
			p.setPassword(r.getString(3));
			list.add(p);
			
			}
	
		r.close();
		conn.close();
		
		return list;
		
	}
  	
 	public personne getRF(int id) throws SQLException{
		
 			connection();
		
 			personne p=null;
		
 			st = conn.createStatement();
		
 			String requete = "SELECT id_responsablef,nom, prenom,email,mot_de_passe,num_telephone FROM responsablef where id_responsablef ="+id;
	
 			r = st.executeQuery(requete);
		
 			if(r.next()){
			
 				p= new personne(r.getInt(1),r.getString(2),r.getString(3),r.getString(4),r.getString(5)
					 ,r.getString(6));
			
 			}
 			
 				return p;
 		
 			}
						
 	public personne getRP(int id) throws SQLException{
		
			connection();
	
			personne p=null;
	
			st = conn.createStatement();
	
			String requete = "SELECT id_responsableP,nom, prenom,email,mot_de_passe,num_telephone FROM responsablep where id_responsableP ="+id;

			r = st.executeQuery(requete);
	
			if(r.next()){
		
				p= new personne(r.getInt(1),r.getString(2),r.getString(3),r.getString(4),r.getString(5)
				 ,r.getString(6));
		
			}
			
				return p;
		
			}
 	
 	public personne getAgent(int id) throws SQLException{
		
 			connection();
		
 			personne p=null;
	
 			st = conn.createStatement();
 				
 				String requete = "SELECT id_agent,nom, prenom,email,mot_de_passe,num_telephone FROM agent_scolarite where id_agent ="+id;
		
 			r = st.executeQuery(requete);
		
 			if(r.next()){
			     p= new personne(r.getInt(1),r.getString(2),r.getString(3),r.getString(4),r.getString(5)
					,r.getString(6));
			
 					}
 			
 			return p;
 			
 			}
		
 	public void UpdateRF(personne p) throws SQLException{
		
		connection();
		
		String update="update responsable_formation set nom=?,prenom=?,email=?,num_telephone=?,mot_de_passe=? where id_responsablef=?";
		
		PreparedStatement pstm= conn.prepareStatement(update) ;
	
			pstm.setString(1,p.getNom());
			pstm.setString(2,p.getPrenom());
		//	pstm.setString(3,p.getAdresse());
			pstm.setString(3,p.getEmail());
			pstm.setString(4,p.getTelephone());
			pstm.setString(5,p.getPassword());
		//	pstm.setString(7,p.getDaten());
			pstm.setInt(6,p.getId());
		int i=	pstm.executeUpdate();
		
		System.out.println(i);
	
 		}
 	
 	public void UpdateAgent(personne p) throws SQLException{
		
		connection();
		
		String update="update agent_scolarite set nom=?,prenom=?,email=?,num_telephone=?,mot_de_passe=? where id_agent=?";
		
		PreparedStatement pstm= conn.prepareStatement(update) ;
	
			pstm.setString(1,p.getNom());
			pstm.setString(2,p.getPrenom());
			//pstm.setString(3,p.getAdresse());
			pstm.setString(3,p.getEmail());
			pstm.setString(4,p.getTelephone());
			pstm.setString(5,p.getPassword());
			//pstm.setString(7,p.getDaten());
			pstm.setInt(6,p.getId());
		int i=	pstm.executeUpdate();
		System.out.println(i);
 		
 		}
 		 		
	public void deletAgent(int id) throws SQLException{
		
		connection();
		
		PreparedStatement pstm =conn.prepareStatement("delete from agent_scolarite where id_agent ="+id) ;
		
		pstm.execute();
		
		conn.close();
		
			
		}
	
	public void deletRF(int id) throws SQLException{
		
		connection();
	
		PreparedStatement pstm =conn.prepareStatement("delete from responsablef where id_responsablef ="+id) ;
		
		pstm.execute();
		
		conn.close();
		
		}
		
	public void ajoutAgent(personne p) throws SQLException{
	
		connection();
		
		String requete ="insert into agent_scolarite(nom,prenom,email,num_telephone,mot_de_passe,id_formation) values(?,?,?,?,?,?)";
		
		PreparedStatement pstm = conn.prepareStatement(requete);
		
		pstm.setString(1,p.getNom());
		pstm.setString(2,p.getPrenom());
		//pstm.setString(3,p.getAdresse());
		pstm.setString(3,p.getEmail());
		pstm.setString(4,p.getTelephone());
		pstm.setString(5,p.getPassword());
		//pstm.setString(7,p.getDaten());
		pstm.setInt(6,p.getIDformation());
		pstm.execute();
		conn.close();
		
		}
		
	public void ajoutRF(personne p) throws SQLException{
	
		connection();
		
		String requete ="insert into responsablef(nom,prenom,email,num_telephone,mot_de_passe,id_formation) values(?,?,?,?,?,?)";
		
		PreparedStatement pstm = conn.prepareStatement(requete);
		
		pstm.setString(1,p.getNom());
		pstm.setString(2,p.getPrenom());
		//pstm.setString(3,p.getAdresse());
		pstm.setString(3,p.getEmail());
		pstm.setString(4,p.getTelephone());
		pstm.setString(5,p.getPassword());
		//pstm.setString(7,p.getDaten());
		pstm.setInt(6, p.getIDformation());
		pstm.execute();
		conn.close();
		
		
		}
	/****************************************************************/

	/***************************PERIODE METHODE********************/
	//bah dert li periode
	public void definirPeriode(Periodes p) throws SQLException{
		
	     connection();
	
	     PreparedStatement stm =conn.prepareStatement("insert into periode(debut_inscription,fin_inscription,debut_recours,fin_recours,debut_evaluation,fin_evaluation,date_affichage,affichage_ap_recours,affichage_ap_inscription)values(?,?,?,?,?,?,?,?,?) ");
	     
	    stm.setDate(1,  p.getDebutInscription());
	    stm.setDate(2, p.getFinInscription());
	    stm.setDate(3,  p.getDebutEntretiens());//affichage dok nrodhom affichage1,2,3 meme f la base w nzid nchouf evaluation balak nrodha entretien
	    stm.setDate(4,  p.getFinEntretiens());
	    stm.setDate(5,  p.getDebutRecours());
	    stm.setDate(6,  p.getFinRecours());
	    stm.setDate(7,  p.getAffichage1());
	    stm.setDate(8,  p.getAffichage2());
	    stm.setDate(9,  p.getAffichage3());
	    
	    stm.execute(); 
	 
	}
	
	//pour avoir toute les periodes pour gerer l'application (inscription,,,,etc)
	public Periodes getPeriodes() throws SQLException{
		
		connection();
		
		PreparedStatement stm =conn.prepareStatement("select debut_inscription,fin_inscription,debut_recours,fin_recours,debut_evaluation,fin_evaluation,date_affichage,affichage_ap_recours,affichage_ap_inscription from periode order by id_periode desc limit 1");

		Periodes p = null ;
		
		r = stm.executeQuery();
		
		if(r.next()){
			
			p =new Periodes(r.getDate(1),r.getDate(2),r.getDate(3),r.getDate(4),r.getDate(5),r.getDate(6),r.getDate(7),r.getDate(8),r.getDate(9));
		
		}
		
		return p ;
	}
	
	/****************************************************************/
	
	/***********************FORMATION METHODES***********************/	
	
	public void ajouter_formation(String n) throws SQLException {
					
			connection();
			
			PreparedStatement pstm;
				
				pstm = conn.prepareStatement("insert into formation(nom_formation) values(?)");
				pstm.setString(1,n);
				pstm.execute();
						
			      conn.close();
				
				}
		
	public List<formation> getFormations() throws SQLException{
		
		ArrayList<formation> list =new ArrayList<formation>();
		
		connection();
		
		st =conn.createStatement();
		r = st.executeQuery("select id_formation,nom_formation from formation") ;
		
		while(r.next()){
			
			formation f =new formation(r.getInt(1),r.getString(2));
			
			list.add(f) ;
			}
		
		
			return list ;
		
		} 
	
	
	public String getFormation(int id_formation) throws SQLException{
		System.out.println("prrrrr");
		System.out.println(" ID formation = " +id_formation);
		System.out.println("prrrrr");
			connection();
		
		st =conn.createStatement();
		r = st.executeQuery("select nom_formation from formation where id_formation="+id_formation);
		
		if(r.next()){
			
			return r.getString(1);
			
			}else{
		
		
			 return" pas de formation";
			}
		} 
	
	public void typeEvaluation(int id ,String typeEva) throws SQLException{
		
		connection();
		
		PreparedStatement stm =conn.prepareStatement("update formation set type_evaluation=? where id_formation=?");
		
		stm.setString(1,typeEva);
		stm.setInt(2,id);
		
		stm.executeUpdate();
	}
	
	public int getIdFormation (String nom) throws SQLException{
		int i= 0;
		connection();
		PreparedStatement stm=null;
		
		stm =conn.prepareStatement("select id_formation from formation where nom_formation=?");
		stm.setString(1,nom);
	
		r =stm.executeQuery() ;
		
		if(r.next()){
			i =r.getInt(1);
			
		}
		
		return i ;
	}
	
	public void TypeEvaluation(){}	 //pour determiner qu'elle type d'evaluation a suivre
	
	public void AjouterNombreplace(int id ,int val) throws SQLException{
	 		
	 		connection();
	 		
	 		PreparedStatement stm =conn.prepareStatement("update  formation set place_pedagogique=? where id_formation=?");
	 		
	 		stm.setInt(1,val);
	 		stm.setInt(2, id);
	 		stm.execute() ;
	 	
	 		}
	
	public int getNombrePlace(int id_formation) throws SQLException{
		
		connection();
		
		st =conn.createStatement();
		r =st.executeQuery("select place_pedagogique from formation where id_formation="+id_formation);
		if(r.next()){
			return r.getInt(1) ;
		}else{
		return 0 ;
		}
		}
	
	//la MAJ (dans le cas de supprimer une formation)
	
	/*******************************************************************************/ 	
	
	
	/********************INSCRIPTION METHODES***************************************/
	//il me reste d'ajouter les moyenne m1,m2,m3,m4
    public void inscrireInterne(int id , InputStream inputstream,InputStream inputstream1,InputStream inputstream2,InputStream inputstream3,int mannee1,int mannee2,int mannee3,String type,int k) throws SQLException{
		
		connection();
		
		
		PreparedStatement stm =conn.prepareStatement("update etudiant set relevet_bac=?,relevet1=?,relevet2=?,relevet3=?,moyenne1=?,moyenne2=?,moyenne3=?,type_etudiant=?,etat_inscription=?,id_formation=?  where id_etudiant=?") ;
		
		stm.setBlob(1,inputstream);
		stm.setBlob(2,inputstream1);
		stm.setBlob(3,inputstream2);
		stm.setBlob(4,inputstream3);
		stm.setInt(5,mannee1);
		stm.setInt(6,mannee2);
		stm.setInt(7,mannee3);
		stm.setString(8,type);
		stm.setBoolean(9, true);
		stm.setInt(10, k);
		
		
		stm.setInt(11,id);
		
		
		stm.executeUpdate() ;
		
		conn.close();
	
	}
	
	public void inscrireExterne(int id ,InputStream inputstream,InputStream inputstream1,
		InputStream inputstream2,InputStream inputstream3
       ,InputStream inputstream4,InputStream inputstream5
       ,InputStream inputstream6,int mannee1,int mannee2,int mannee3,String type,int k) throws SQLException{
		
		connection();
			
		PreparedStatement stm =conn.prepareStatement("update etudiant set relevet_bac=?,relevet1=?,"
				+ "relevet2=?,relevet3=?,"
				+ "diplome=?,attestation_classement=?"
				+ ",bonne_conduite=?,moyenne1=?,moyenne2=?,moyenne3=?,type_etudiant=?,etat_inscription=? ,id_formation=? where id_etudiant=?") ;
		
		stm.setBlob(1,inputstream);
		stm.setBlob(2,inputstream1);
		stm.setBlob(3,inputstream2);
		stm.setBlob(4,inputstream3);
		stm.setBlob(5,inputstream4);
		stm.setBlob(6,inputstream5);
		stm.setBlob(7,inputstream6);
		stm.setInt(8, mannee1);
		stm.setInt(9, mannee2);
		stm.setInt(10,mannee3);
		stm.setString(11, type);
		stm.setBoolean(12,true);
		stm.setInt(13, k);
		stm.setInt(14,id);
		
		stm.executeUpdate() ;
		
		conn.close();
	} 
	
    public void inscrireEquivalence(int id ,InputStream inputstream,InputStream inputstream1,
		InputStream inputstream2,InputStream inputstream3
		,InputStream inputstream4,InputStream inputstream5
		,InputStream inputstream6,InputStream inputstream7,int mannee1,int mannee2,int mannee3,int mannee4,String type,int k) throws SQLException{
		
		connection();
			
		PreparedStatement stm =conn.prepareStatement("update etudiant set relevet_bac=?"
				+ ",relevet1=?,"
				+ "relevet2=?"
				+ ",relevet3=?"
				+ ",relevet4=?"
				+ ",diplome=?,"
				+ "attestation_classement=?"
				+ ",bonne_conduite=?,moyenne1=?,moyenne2=?,moyenne3=?,moyenne4=?,type_etudiant=?,etat_inscription=?,id_formation=?  where id_etudiant=?") ;
		
		stm.setBlob(1,inputstream);
		stm.setBlob(2,inputstream1);
		stm.setBlob(3,inputstream2);
		stm.setBlob(4,inputstream3);
		stm.setBlob(5,inputstream4);
		stm.setBlob(6,inputstream5);
		stm.setBlob(7,inputstream6);
		stm.setBlob(8,inputstream7);
		stm.setInt(9, mannee1);
		stm.setInt(10, mannee2);
		stm.setInt(11, mannee3);
		stm.setInt(12, mannee4);
		stm.setString(13,type);
		stm.setBoolean(14,true);
		stm.setInt(15, k);
		stm.setInt(16,id);
		
		
		
		stm.executeUpdate() ;
		
		conn.close();
	} 
	
   
    /***********************************Correction manque inscription***********************************/
    public void CorrectionManqueCursus(int id_etudiant , InputStream inputstream,double moyenne,String doc) throws SQLException{
    	
    	connection();
		
    	if(doc.equals("annee1")){
    		System.out.println("rani dkhoult");
    		PreparedStatement stm =conn.prepareStatement("update etudiant set relevet1=?,moyenne1=? where id_etudiant=?");
    		stm.setBlob(1,inputstream);
    		stm.setDouble(2, moyenne);
    		stm.setInt(3,id_etudiant);
    		System.out.println("rani khrjt");
    		stm.executeUpdate() ;
    		
    		conn.close();
    		
    		
    	}else if(doc.equals("annee2")){
    		
    		PreparedStatement stm =conn.prepareStatement("update etudiant set relevet2=?,moyenne2=? where id_etudiant=?");
    		stm.setBlob(1,inputstream);
    		stm.setDouble(2, moyenne);
    		stm.setInt(3,id_etudiant);
    		
    		stm.executeUpdate() ;
    		
    		conn.close();
    		
    	}else if(doc.equals("annee3")){
    		
    		PreparedStatement stm =conn.prepareStatement("update etudiant set relevet3=?,moyenne3=? where id_etudiant=?");
    		stm.setBlob(1,inputstream);
    		stm.setDouble(2, 2);
    		stm.setInt(3,id_etudiant);
    		
    		stm.executeUpdate() ;
    		
    		conn.close();
    		
    		
    	}else if(doc.equals("annee4")){
    		PreparedStatement stm =conn.prepareStatement("update etudiant set relevet4=?,moyenne4=? where id_etudiant=?");
    		stm.setBlob(1,inputstream);
    		stm.setDouble(2, 2);
    		stm.setInt(3,id_etudiant);
    		
    		stm.executeUpdate() ;
    		
    		conn.close();
    	}
    	
    	
		
    	
    	
    }
    
    public void CorrectionManquePap(int id_etudiant ,InputStream inputstream,String doc) throws SQLException{
    	
    	connection();
	
    	
    	connection();
		
    	if(doc.equals("relevetbac")){
    		
    		PreparedStatement stm =conn.prepareStatement("update etudiant set relevet_bac=?  where id_etudiant=?");
    		stm.setBlob(1,inputstream);
    		stm.setDouble(2, 2);
    		stm.setInt(3,id_etudiant);
    		
    		stm.executeUpdate() ;
    		
    		conn.close();
    		
    		
    	}else if(doc.equals("diplomel")){
    		
    		PreparedStatement stm =conn.prepareStatement("update etudiant set diplome=? where id_etudiant=?");
    		stm.setBlob(1,inputstream);
      		stm.setInt(2,id_etudiant);
    		stm.executeUpdate() ;
    		
    		conn.close();
    		
    	}else if(doc.equals("attcla")){
    		
    		PreparedStatement stm =conn.prepareStatement("update etudiant set attestation_classement=? where id_etudiant=?");
    		stm.setBlob(1,inputstream);
    		stm.setInt(2,id_etudiant);
    		stm.executeUpdate() ;
    		
    		conn.close();
    		
    		
    	}else if(doc.equals("bonne")){
    		System.out.println("rani dkhoult");
    		PreparedStatement stm =conn.prepareStatement("update etudiant set bonne_conduite=? where id_etudiant=?");
    		stm.setBlob(1,inputstream);
    		stm.setInt(2,id_etudiant);
    		System.out.println("rani khroujt");
    		stm.executeUpdate() ;
    		
    		conn.close();
    	}
    	
    	
    }
    
    
	/***************************************************************************************************/
	
    /**************************************METHODES DOSSIER*********************************************/
     
    	//pour la liste des dossier
    	public List<etudiant> getInfoDossier(int id_agent) throws SQLException{
    	
    	List<etudiant>list =new ArrayList<etudiant>();
    	
    	connection();
    	
    	PreparedStatement stm = conn.prepareStatement("select id_etudiant,nom_etudiant,prenom_etudiant,type_etudiant,etat_dossier from etudiant where etat_inscription=? and"
    			+ " id_formation IN(select id_formation from agent_scolarite where id_agent=?)" );
    	
    	stm.setBoolean(1, true);
    	stm.setInt(2, id_agent);
    	r =stm.executeQuery();
    	
    	while(r.next()){
    	
    		etudiant e =new etudiant(r.getInt(1),r.getString(2),r.getString(3),r.getString(4),r.getString(5));
    		
    		list.add(e);
    	}
    	
    	return list ;
    }
     
    	//pour que le responsable de formation puisse Accepté ou Refusé un dossier
     	public List<etudiant> getInfoDossierRF(int id_responsablef) throws SQLException{
    	
    	List<etudiant>list =new ArrayList<etudiant>();
    	
    	connection();
    	
    	PreparedStatement stm = conn.prepareStatement("select id_etudiant,nom_etudiant,prenom_etudiant,type_etudiant,etat_dossier from etudiant where etat_inscription=?  and etat_dossier =? and"
    			+ " id_formation IN(select id_formation from responsablef where id_responsablef=?)" );
    	
    	stm.setBoolean(1, true);
    	stm.setString(2, "verifié");
    	stm.setInt(3, id_responsablef);
    	r =stm.executeQuery();
    	
    	while(r.next()){
    	
    		etudiant e =new etudiant(r.getInt(1),r.getString(2),r.getString(3),r.getString(4),r.getString(5));
    		
    		list.add(e);
    	}
    	
    	return list ;
    }
     
     	//makhdemtch biha  khdemt b servlet

     	public etudiant getDossier(int id,String TypeEtudiant)throws SQLException{
    	
     	connection();
     
     	etudiant e =  null ;
     	
     	 if(TypeEtudiant.equals("interne")){
     		
         	PreparedStatement stm = conn.prepareStatement("select relevet_bac,relevet1,relevet2,relevet3,type_etudiant from etudiant where etat_inscription=? and id_etudiant=?");
         	stm.setBoolean(1,true);
         	stm.setInt(2, id);
         	r =stm.executeQuery();
         	    
         	if(r.next()){
         		
         		e =new etudiant(r.getBlob(1),r.getBlob(2),r.getBlob(3),r.getBlob(4));
         	  
         	}
     	System.out.println("rani interne");
     	
     	 }else if(TypeEtudiant.equals("externe/ancienne promo")){
          		
     		PreparedStatement stm = conn.prepareStatement("select relevet_bac,relevet1,relevet2,relevet3,diplome,bonne_conduite,attestation_classement,etat_dossier from etudiant where etat_inscription=? and id_etudiant=?");	
     		stm.setBoolean(1,true);
     		stm.setInt(2, id);
     		r =stm.executeQuery();
     	   
     	     if(r.next()){
     		
     	       e =new etudiant(r.getBlob(1),r.getBlob(2),r.getBlob(3),r.getBlob(4),r.getBlob(5),r.getBlob(6),r.getBlob(7));	
     	  }
     	    
     	  }else if(TypeEtudiant.equals("equivalence")){
     		
     		PreparedStatement stm = conn.prepareStatement("select relevet_bac,relevet1,relevet2,relevet3,relevet4,diplome,bonne_conduite,attestation_classement,etat_dossier from etudiant where etat_inscription=? and id_etudiant=?");	
     		stm.setBoolean(1,true);
     		stm.setInt(2, id);
     		r =stm.executeQuery();
     	   
         	if(r.next()){
     		
         		 e =new etudiant(r.getBlob(1),r.getBlob(2),r.getBlob(3),r.getBlob(4),r.getBlob(5),r.getBlob(6),r.getBlob(7),r.getBlob(8));	
     		
     	       }
             }
     	
     		return  e;     	
     }	
     	   
     	//bah nsignaler manque w nefs lwa9t neb3at la base wech na9as bah mba3d nhazhom w nhathom f suivre dossier
     	public void signalerManque(int idEtudiant,String manque ,String etat_dossier) throws SQLException{
    	 
    	 connection();
    	 
    	 PreparedStatement stm =conn.prepareStatement("update etudiant set etat_dossier=? , manque_dossier=? where id_etudiant=?");
    	 
    	 stm.setString(1,etat_dossier);
    	 stm.setString(2,manque);
    	 stm.setInt(3,idEtudiant);	
    	 
    	 stm.executeUpdate();
     }
     

        public void ValiderDossier(int idEtudiant,String etat_dossier) throws SQLException{
    	 
    	 connection();
    	 
    	 PreparedStatement stm =conn.prepareStatement("update etudiant set etat_dossier=?  where id_etudiant=?");
    	 
    	 stm.setString(1,etat_dossier);
    	
    	 stm.setInt(2,idEtudiant);	
    	 
    	 stm.executeUpdate();
     }
           

        public void accepterDossier(int id_etudiant) throws SQLException{
           
        	connection();
        
            PreparedStatement stm =conn.prepareStatement("update etudiant set etat_dossier=? where id_etudiant=?");
            
            stm.setString(1,"accepté");
            stm.setInt(2,id_etudiant);	
            stm.executeUpdate() ;
            
        }
     

        public void rejeterdossier(int id_etdiant) throws SQLException{
        	

        	connection();
        
            PreparedStatement stm =conn.prepareStatement("update etudiant set etat_dossier=? where id_etudiant=?");
            
            stm.setString(1,"rejeté");
            stm.setInt(2,id_etdiant);	
            stm.executeUpdate() ;
        	
        }
        
	/********************************************************************************/
     
     /**********************************METHODES UTILISE DANS  RECOURS***************/
     
     //bah nzid demande de recours
     
     /********************************************************************************************************/

     /**********************************Methode recours*******************************************************/
       
     public void AddRecours(int id_etudiant,String Information) throws SQLException{
    	 
    	 connection();
    	 
    	PreparedStatement stm =conn.prepareStatement("insert into recours (information,reception,id_etudiant)values(?,?,?)");
    	 
    	stm.setString(1,Information);
    	stm.setBoolean(2,true);
    	stm.setInt(3,id_etudiant);
    	
    	stm.execute() ;
     }
     
     public List<recours> getRecours() throws SQLException{
    
    	 List<recours>  list = new ArrayList<recours>();
    	 
    	 	connection();
    
    	 		Statement stm =conn.createStatement() ;
    	 	
    	 		r =stm.executeQuery("select id_recours,information ,reception,id_etudiant , etat_traitement from recours");
    	 	
    		while(r.next()){
    	 		
    	 		recours R =new recours(r.getInt(1),r.getString(2),r.getBoolean(3),r.getInt(4),r.getBoolean(5));
    	 		
    	 		list.add(R);
    	 		
    	 		}
    	 	
    	 	
    	 	
    	 return list ;
     }
     
    //elle me permet d'avoir les info d'un etudiant on entrant son id(qui se trouve dans la table recours
     public etudiant getEtudiantByrecours(int id_EtudiantDansRecours) throws SQLException{
    	etudiant e = null ;
    	 connection();
    	    
	 		Statement stm =conn.createStatement() ;
	 	
	 		r =stm.executeQuery("select nom_etudiant,prenom_etudiant,id_etudiant ,type_etudiant , id_formation from etudiant where id_etudiant ="+id_EtudiantDansRecours);
    	 
	 		if(r.next()){
	 			
	 			e=new etudiant(r.getString(1),r.getString(2),r.getInt(3),r.getString(4),r.getInt(5));
	 			
	 		}
    	 
    	 return e ;
     }
     
     //juste utilisé pour avoir le nom de la formation est l'affiché
     public String nomFormation(int idFormation) throws SQLException{
    	 
    	 connection();
    	 
    	 st =conn.createStatement() ;
    	 
    	 r =st.executeQuery("select nom_formation from formation where id_formation="+idFormation);
    	if(r.next()){
    		return r.getString(1) ;
    	}
    	 return " nullllll" ;
     }
    
     //pour avoir les informations d'un recours
     public String getInformationRecours(int id_recours) throws SQLException{
    	 
    	 connection();
    	 
    	 st =conn.createStatement();
    	 
    	 r=st.executeQuery("select information from recours where id_recours="+id_recours);
    	 
    	 if(r.next()){
    		 
    		 return r.getString(1);
    	 }
    	 
    	 return null ;
     }
     
     //juste pour afficher que le recours est arriver le
     public Timestamp getDateRecours(int id_recours) throws SQLException{
     	 
    	 connection();
    	 
    	 st =conn.createStatement();
    	 
    	 r=st.executeQuery("select date from recours where id_recours="+id_recours);
    	 
    	 if(r.next()){
    		 
    		 return r.getTimestamp(1);
    	 }
    	 
    	 return null ;
     }
     
     public void AccepterRejeterRecours(int id_recours,String action,boolean etat_traitement) throws SQLException{
    	 
    	 // ici je dois mettre le code qui envoie la notification a l'etudiant
    	 
    	 connection();
    	 
    	 PreparedStatement stm =conn.prepareStatement("update recours set reponse=? ,etat_traitement=? where id_recours=?");
    	 
    	 stm.setString(1,action);
    	 stm.setBoolean(2,etat_traitement);
    	 stm.setInt(3,id_recours);
    	 
    	 stm.executeUpdate() ;
     }
     
     //bel id ta3 etudiant nhz reponse ta3 recours lakan Accepté wela Refusé
     public String getReponseRecours(int id_Etudiant) throws SQLException{
    	 
    	 connection();
    	 
    	PreparedStatement stm  =conn.prepareStatement("select reponse from recours where id_etudiant IN(select id_etudiant from etudiant) AND id_etudiant=?") ;
    	
    	stm.setInt(1,id_Etudiant);
    	 
    	r =stm.executeQuery() ;
    	 
    	if(r.next()){
    		return r.getString(1);
    	 }
    	 
    	 return null ;
     }
 
     //dertha bah ndesactivé le bouton ki y3od etudiant deja der recours
     public boolean hasRecours(int id_etudiant) throws SQLException{
    	 connection();
    	 st =conn.createStatement();
    	 
    	 r=st.executeQuery("select id_etudiant from recours  ") ;
    	 
    	 while(r.next()){
    		System.out.println(r.getInt(1));
    		 
    		if(r.getInt(1)==id_etudiant){
    			
    			 return true ;
    			 
    		 
    	 }
    	 
    	
     }
    	 return false ;
     }
     
     /*****************************************************************************************************/
         	 
     /******************************************Classement*************************************************/
   
        public List<etudiant> classementInterne(int id_formation,String type_etudiant,int nombre) throws SQLException{
       	 
       	 List<etudiant> list =new ArrayList<etudiant>();
       	 // il faut la faire avec le prepared statement
       	 int nb = (int) (nombre*0.8);
       	 connection();
       	 String requete="select nom_etudiant,prenom_etudiant,moyenne_classement from etudiant where id_formation = ? and type_etudiant = ? and etat_dossier=? order by moyenne_classement desc limit ?";
       	 PreparedStatement pstm = conn.prepareStatement(requete);
       	 pstm.setInt(1,id_formation);
       	 pstm.setString(2,type_etudiant);
       	 pstm.setString(3,"accepté");
       	 pstm.setInt(4,nb);
       	 pstm.execute();
       	 r= pstm.getResultSet();
       	
       	 while(r.next()){
       		etudiant e =new etudiant();
       		 e.setNom(r.getString(1));
       		 e.setPrenom(r.getString(2));
       		 e.setMc(r.getDouble(3));
       		 list.add(e);
       	 }
       	 return list ;
        }
    	public List<etudiant> classementExterne(int id_formation,String type_etudiant,int nombre) throws SQLException{
    		
    		List<etudiant> list = new ArrayList<etudiant>();
    		int nb = (int) (nombre*0.1);
    	   	 connection();
    	   	 String requete="select nom_etudiant,prenom_etudiant,moyenne_classement from etudiant where id_formation = ? and type_etudiant = ?  and etat_dossier=? order by moyenne_classement desc limit ?";
    	   	 PreparedStatement pstm = conn.prepareStatement(requete);
    	   	 pstm.setInt(1,id_formation);
    	   	 pstm.setString(2,type_etudiant);
    	   	 pstm.setString(3,"accepté");
    	   	 pstm.setInt(4,nb);
    	   	 pstm.execute();
    	   	 r= pstm.getResultSet();
    	   	
    	   	 while(r.next()){
    	   		etudiant e =new etudiant();
          		 e.setNom(r.getString(1));
          		 e.setPrenom(r.getString(2));
          		 e.setMc(r.getDouble(3));
          		 list.add(e);
    	   	 }
    	   	 return list ;
    	}
    	public List<etudiant> classementEquivalence(int id_formation,String type_etudiant,int nombre) throws SQLException{
    		
    		List<etudiant> list = new ArrayList<etudiant>();
    		int nb = (int) (nombre*0.1);
    	   	 connection();
    	   	 String requete="select nom_etudiant,prenom_etudiant,moyenne_classement from etudiant where id_formation = ? and type_etudiant = ? and etat_dossier=? order by moyenne_classement desc limit ?";
    	   	 PreparedStatement pstm = conn.prepareStatement(requete);
    	   	 pstm.setInt(1,id_formation);
    	   	 pstm.setString(2,type_etudiant);
    	   	 pstm.setString(3,"accepté");
    	   	 pstm.setInt(4,nb);
    	   	 pstm.execute();
    	   	 r= pstm.getResultSet();
    	   	
    	   	 while(r.next()){
    	   		etudiant e =new etudiant();
          		 e.setNom(r.getString(1));
          		 e.setPrenom(r.getString(2));
          		 e.setMc(r.getDouble(3));
          		 list.add(e);
    	   	 }
    	   	 return list ;
    	}
    	
    	public void calcMoyenneG(String id,double m1, double m2,double m3, double a,int r,int d,int s) throws SQLException{	    
       	 connection();
       	 double moyenne_classement;
       	 moyenne_classement= ((m1+m2+m3)/3)*(1-a*((r+d)/2+(s/4)));
       	 String requete = "update etudiant set moyenne_classement=? where id_etudiant=?";
       	 PreparedStatement pstm = conn.prepareStatement(requete);
       	 pstm.setDouble(1,moyenne_classement);
       	 pstm.setString(2,id);
       	 pstm.execute();
       	 
        }
    
    	public void calcMoyenneG(String id,double m1, double m2,double m3,double m4,double a,int r, int d,int s) throws SQLException{
       	 connection();
       	 double moyenne_classement;
      	 moyenne_classement= ((m1+m2+m3+m4)/3)*(1-a*((r+d)/2+(s/4)));
      	 String requete = "update etudiant set moyenne_classement=? where id_etudiant=?";
      	 PreparedStatement pstm = conn.prepareStatement(requete);
      	 pstm.setDouble(1,moyenne_classement);
      	 pstm.setString(2,id);
      	 pstm.execute();
       	
       	
        }
    	public int[] getRDS(String id) throws SQLException{
    		//List<Integer> rds = new ArrayList<Integer>();
    		int rds[] = new int[3];
    		int re=0,d=0,s=0;
    		String requete="select redoublement,progression,rattrapage from etudiant where id_etudiant="+id;
    		connection();
    		Statement st = conn.createStatement();
    		r = st.executeQuery(requete);
    		if(r.next()){
    			rds[0]=r.getInt(1);
    			rds[1]=r.getInt(2);
    			rds[2]=r.getInt(3);
    		}
    		
    		
    		return rds;
    	}
    	public double[] moyennesDesAnnees3(String id) throws SQLException{
    		double m[]= new double[3];
    		String requete = "select moyenne1,moyenne2,moyenne3 from etudiant where id_etudiant="+id;
    		connection();
    		Statement st = conn.createStatement();
    		r=st.executeQuery(requete);
    		if(r.next()){
    			m[0]=r.getDouble(1);
    			m[1]=r.getDouble(2);
    			m[2]=r.getDouble(3);
    		}
    		
    		return m;
    	}
    	public double[] moyennesDesAnnees4(String id) throws SQLException{
    		double m[]= new double[4];
    		String requete = "select moyenne1,moyenne2,moyenne3,moyenne4 from etudiant where id_etudiant="+id;
    		connection();
    		Statement st = conn.createStatement();
    		r=st.executeQuery(requete);
    		if(r.next()){
    			m[0]=r.getDouble(1);
    			m[1]=r.getDouble(2);
    			m[2]=r.getDouble(3);
    			m[3]=r.getDouble(4);
    		}
    		
    		return m;
    	}
          
     /********************************************************************************/
     
  
     
     /************METHODE DE NOTIFICATION* @throws SQLException *********************/
     	

     	public List<notification> getNotificationPerso(int id_etudiant) throws SQLException{
     		
     		
     		ArrayList list =new ArrayList<notification>();
     		
     		connection();
     		
     		PreparedStatement stm =conn.prepareStatement("select id_notification ,id_etudiant ,information_notification,type_notification,flag,time from notification where id_etudiant in(select id_etudiant from etudiant) and id_etudiant="+id_etudiant) ; 
     		r =stm.executeQuery() ;
     		
     		while(r.next()){
     			
     			notification n =new notification(r.getInt(1),r.getInt(2),r.getString(3),r.getString(4),r.getBoolean(5),r.getTimestamp(6)) ;
     			list.add(n);
     		}
     		
     		
     		return list ;
     	}
     	

     	public void putNotification(int id_etudiant ,String type , String information) throws SQLException{
     		
     		connection();
     		
     		PreparedStatement stm =conn.prepareStatement("insert into notification(information_notification,type_notification"
     				+ ",id_etudiant,flag)values(?,?,?,?)");
     		
     		stm.setString(1,information);
     		stm.setString(2, type);
     		stm.setInt(3,id_etudiant);
     		stm.setBoolean(4,false);
     		
     		stm.execute();
     		
     	}
     	
     	    	
     	public void putNotificationRecours(int id_etudiant,String type , String information) throws SQLException{
     		
     		connection();
     		
     		PreparedStatement stm =conn.prepareStatement("insert into notification(information_notification,type_notification"
     				+ ",id_etudiant,flag)values(?,?,?,?)");
     		
     		stm.setString(1,information);
     		stm.setString(2, type);
     		stm.setInt(3,id_etudiant);
     		stm.setBoolean(4,false);
     		
     		stm.execute();
     	
     	} 
     		
     	//bah nhaz rab3a lakhrin dima
     	public ArrayList<notification> notificationLimit(int id_etudiant) throws SQLException{
     		
     		ArrayList<notification> list =new ArrayList<notification>();
     			connection();
     		
     		 PreparedStatement stm =conn.prepareStatement("select information_notification ,type_notification,time,flag from notification where id_etudiant=? order by id_notification  desc limit 4");
     		 stm.setInt(1, id_etudiant);
     		 
     		 r =stm.executeQuery() ;
     		
     		 while(r.next()){
     			 
     			notification n =new notification();
     			n.setInformation(r.getString(1));
     			n.setType_notification(r.getString(2));
     			n.setTime(r.getTimestamp(3));
     			n.setFlag(r.getBoolean(4));
     			
     			list.add(n);
     		 }
     		
     		return list ;
     	}
 	
     	
     	public ArrayList<notification> nombrenotification(int id_etudiant) throws SQLException{
     		ArrayList<notification> list =new ArrayList<notification>();
     		connection();
     		 PreparedStatement stm =conn.prepareStatement("select information_notification ,type_notification,time,flag from notification where id_etudiant=? and flag=?");
     		 stm.setInt(1, id_etudiant);
     		stm.setBoolean(2,false);
     	
     		 r =stm.executeQuery() ;
      		
     		 while(r.next()){
     			 
     			notification n =new notification();
     			n.setInformation(r.getString(1));
     			n.setType_notification(r.getString(2));
     			n.setTime(r.getTimestamp(3));
     			n.setFlag(r.getBoolean(4));
     			
     			list.add(n);
     		 }
     		
     		return list ;
     	
     		
     	}
   	
     		//hadi bah ndir SEE all notification	
     	public ArrayList<notification> notificationAll(int id_etudiant) throws SQLException{
     		
     		ArrayList<notification> list =new ArrayList<notification>();
     			connection();
     		
     			 PreparedStatement stm =conn.prepareStatement("select id_notification, information_notification ,type_notification,time,flag from notification where id_etudiant=?  order by id_notification desc");
         		 stm.setInt(1, id_etudiant);
         		 r =stm.executeQuery() ;
     		
     		 while(r.next()){
     			 
     			notification n =new notification();
     			n.setId_notification(r.getInt(1));
     			n.setInformation(r.getString(2));
     			n.setType_notification(r.getString(3));
     			n.setTime(r.getTimestamp(4));
     			n.setFlag(r.getBoolean(5));
     			
     			list.add(n);
     		 }
     		
     		return list ;
     	}
     	
     	public void notificationLu(int id_notification) throws SQLException{
     		
     		connection();
     		
     		PreparedStatement stm =conn.prepareStatement("update notification set flag=? where id_notification=?");
     		stm.setBoolean(1,true);
     		
     		stm.setInt(2, id_notification);
     		
     		stm.executeUpdate();
     		
     		
     	}	
     		
     		
     		
 	
 	
 	/********************************************************************************/
	}