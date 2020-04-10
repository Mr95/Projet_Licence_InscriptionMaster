package Controlleur;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.Find;
import modele.etudiant;
import modele.personne;
/**
 * Servlet implementation class Authentification
 */
@WebServlet("/Authentification")
public class Authentification extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Authentification() {
        super();
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
	
		
		
			String choix =request.getParameter("choix");
		
			String email =request.getParameter("email");	
		
			String password =request.getParameter("password") ;
		
		
			
			
			if(choix.equals("etudiant")){
				
				
				Boolean ok =false ;
				
				List<etudiant> list =new ArrayList<etudiant>();
				
				Find f =new Find();
				
				try {
					list =f.afficher();
					} catch (SQLException e) {
					
					e.printStackTrace();
				}
				
				
				for(int i=0;i<list.size();i++){
					
					if(list.get(i).getEmail().equals(email) && list.get(i).getPassword().equals(password)){
						
						ok=true ;
					 //	request.getSession().setAttribute("etudiant",new etudiant());
						request.getSession().setAttribute("id_etudiant",list.get(i).getId());
						request.getSession().setAttribute("id_formation",list.get(i).getIDformation());
					
						break ;
						
						}
					
					}
				
				if(ok==true){
					
					request.getRequestDispatcher("index.jsp").forward(request, response);
				
				}else{
					
					request.getRequestDispatcher("login.jsp").include(request, response);
				}
					
			
			}else if (choix.equals("rf")){
				
					Boolean ok =false ;
					
				List<personne> list =new ArrayList<personne>();
				
				Find f =new Find();
				
				try {
					list =f.afficherRF();
					} catch (SQLException e) {
					
					e.printStackTrace();
				}
				
				
				for(int i=0;i<list.size();i++){
					
					if(list.get(i).getEmail().equals(email) && list.get(i).getPassword().equals(password)){
						request.getSession().setAttribute("id_responsablef",list.get(i).getId());	
						ok=true ;
						
						break ;
						
						}
					
					}
				
				if(ok==true){
					
					request.getRequestDispatcher("accueilrf.jsp").forward(request, response);
				
				}else{
					
					request.getRequestDispatcher("login.jsp").include(request, response);
				}
					
			
			}else if(choix.equals("rp")){
				
				Boolean ok =false ;
				
				List<personne> list =new ArrayList<personne>();
				
				Find f =new Find();
				
				try {
					list =f.afficherRP();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
				
				
				for(int i=0;i<list.size();i++){
		
					if(list.get(i).getEmail().equals(email) && list.get(i).getPassword().equals(password)){
						
						ok=true ;
						request.getSession().setAttribute("id_responsableP",list.get(i).getId());
						break ;
						
						}
					
					}
				
				if(ok==true){
					
					request.getRequestDispatcher("accueilrp.jsp").forward(request, response);
				
				}else{
					
					request.getRequestDispatcher("login.jsp").include(request, response);
				}
				
			
			}else if(choix.equals("agent")){
				
				Boolean ok =false ;
				
				List<personne> list =new ArrayList<personne>();
				
				Find f =new Find();
				
				try {
					list =f.afficherAgent();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				
				for(int i=0;i<list.size();i++){
		
					if(list.get(i).getEmail().equals(email) && list.get(i).getPassword().equals(password)){
						
						ok=true ;
						request.getSession().setAttribute("id_agent",list.get(i).getId());//id_formation a la place de id
						break ;
						
						}
					
					}
				
				if(ok==true){
					
					request.getRequestDispatcher("accueilagent.jsp").forward(request, response);
					//response.sendRedirect("WEB-INF/accueilagent.jsp");
			
				}else{
					
					request.getRequestDispatcher("login.jsp").include(request, response);
				}
				
			}
			
	}
	
}
