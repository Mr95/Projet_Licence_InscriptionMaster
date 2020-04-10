package Controlleur;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.Find;
import modele.personne;


@WebServlet("/ControlleurAjoutRFA")
public class ControlleurAjoutRFA extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ControlleurAjoutRFA() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Find f = new Find();
		String choix = request.getParameter("choixcompte");

		String nom,prenom,adresse,daten,telephone,password,email,formation;
		nom = request.getParameter("nom");
		prenom = request.getParameter("prenom");
		adresse = request.getParameter("adresse");
		daten = request.getParameter("daten");
		telephone = request.getParameter("telephone");
		password = request.getParameter("password");
		email = request.getParameter("email");
		formation =request.getParameter("formation");
		System.out.println(formation);
		int k=0;
		try {
			k = f.getIdFormation(formation);
		} catch (SQLException e1) {
			
			e1.printStackTrace();
		}
		
		personne p = new personne(nom,prenom,adresse,email,daten,password,telephone,k);
	
		if(choix.equals("agent")){
			try {
			
				f.ajoutAgent(p);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			request.setAttribute("creer", "agent");
			
		}else{
			try {
				f.ajoutRF(p);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("creer", "responsable");
		}
	
		 
		response.sendRedirect("creer_compte.jsp");
		
		//request.getRequestDispatcher("creer_compte.jsp").forward(request,response);
		
		
		
	
		
	}

}
