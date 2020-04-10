package Controlleur;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.Find;

/**
 * Servlet implementation class ControlleurInfoDossier
 */
@WebServlet("/ControlleurInfoDossier")
public class ControlleurInfoDossier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControlleurInfoDossier() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String verifierdossier =request.getParameter("verifierdossier");
		
		
		if(verifierdossier.equals("choisirdossier")){
		
		String idEtudiant= request.getParameter("idEtudiant");
		String nomEudiant= request.getParameter("nomEtudiant");
		String type_etudiant= request.getParameter("type_etudiant");
		
		
		request.getSession().setAttribute("idEtudiant",idEtudiant);
		request.getSession().setAttribute("nomEudiant",nomEudiant);
		request.getSession().setAttribute("type_etudiant",type_etudiant);
		
		
		//request.getRequestDispatcher("dossieretudiant.jsp").forward(request,response);
		response.sendRedirect("dossieretudiant.jsp");

		}else if(verifierdossier.equals("signaler")){
		
			Find f =new Find();
			
			//ici je vais mentionné le manque et mettre l'etat du dossier a manquant
			//avec une notification
			String info="" ;
			String relBac =	request.getParameter("relBac");
			String rel1 =request.getParameter("rel1");
			String rel2 =request.getParameter("rel2");
			String rel3 =request.getParameter("rel3");
			String rel4 =request.getParameter("rel4");
			String conduite =request.getParameter("conduite");
			String classement =request.getParameter("classement");
			String diplome =request.getParameter("diplome") ;
		
			
			if(relBac != null){
				info =info+"/"+relBac;
			}
			if(rel1 !=null){
				info =info+"/"+rel1;
			}
			if(rel2 !=null){
				info =info+"/"+rel2;
			}
			if(rel3 !=null){
				info =info+"/"+rel3;
			}
			if(rel4 !=null){
				info =info+"/"+rel4;
			}if(conduite !=null){
				info =info+"/"+conduite;
			}if(classement !=null){
				info =info+"/"+classement;
			}if(diplome !=null){
				info =info+"/"+diplome;
			}
			
		String x =	(String) request.getSession().getAttribute("idEtudiant");
	     int id =Integer.valueOf(x);
			
	     try {
			f.signalerManque(id, info, "dossier manquant");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     
	     try {
				f.putNotification(id, "dossier manquant","veuillez corriger  le manque de votre dossier");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	     
	     
	     response.sendRedirect("accueilagent.jsp");
	     
			
			
			
			
		}else if(verifierdossier.equals("verifié")){	
			
			Find f =new Find();
			
			String x =	(String) request.getSession().getAttribute("idEtudiant");
		     int id =Integer.valueOf(x);
				
		     try {
				f.ValiderDossier(id,"verifié");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		     
		 /***********************Notification****************************/
		     try {
				f.putNotification(id, "dossier valider","votre dossier a été validé");
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		     
		     response.sendRedirect("accueilagent.jsp");
		     
			
			
			
		}else if(verifierdossier.equals("traiterdossier")){
			
			
			
			String idEtudiant = request.getParameter("idEtudiant");
			String nomEtudiant =request.getParameter("nomEtudiant");
			String type_etudiant = request.getParameter("type_etudiant");
			
			int iiddEEtudiant = Integer.valueOf(idEtudiant);
			request.getSession().setAttribute("iiddEEtudiant",iiddEEtudiant);; 
			request.getSession().setAttribute("type",type_etudiant);;
			response.sendRedirect("dossierAtraiter.jsp");
		
			
		}else if(verifierdossier.equals("Accepter")){
			
		Find f =new Find();
		
		String id_etudiant=	request.getParameter("id_etu");
		int id = Integer.valueOf(id_etudiant);
		
		try {
			f.accepterDossier(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		/****************Notification****************/
		try {
				f.putNotification(id, "dossier accepte","votre dossier a été Accepté");
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		
		
		
			
		}else if(verifierdossier.equals("Rejeter")){
					
			Find f =new Find();
			String id_etudiant=	request.getParameter("id_etu");
			int id = Integer.valueOf(id_etudiant);
			
			try {
				f.rejeterdossier(id);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			/***************notification*****************/
			 try {
					f.putNotification(id, "dossier rejete","votre dossier a été rejeté");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			
			
			
		}

	
	}

	
}