package Controlleur;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.Find;
import modele.etudiant;

/**
 * Servlet implementation class ControlleurCreerCompteEtudiant
 */
@WebServlet("/ControlleurCreerCompteEtudiant")
public class ControlleurCreerCompteEtudiant extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControlleurCreerCompteEtudiant() {
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
				
		String nom , prenom , email , password ,formation ,daten ,telephone ,type ;
		
		 nom =  request.getParameter("nom");
		 prenom = request.getParameter("prenom");
		 email = request.getParameter("email");
		 password = request.getParameter("password");
		 System.out.println(password);
		 daten = request.getParameter("daten");
		 telephone = request.getParameter("tel") ;
		 //type = request.getParameter("type");
		// formation = request.getParameter("formation") ;
		 
		 Find f =new Find();
		
		 
			etudiant e = new etudiant(nom,prenom,email,password,daten,telephone);
		
			List <etudiant> list =null ;
			try {
				list = f.afficher() ;
			} catch (SQLException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			}
			
			boolean ok = false ;
			
			
			for(int i=0;i<list.size();i++){
				
				if((list.get(i).getNom().equals(nom) && list.get(i).getPrenom().equals(prenom)) || list.get(i).getEmail().equals(email)){
					
					ok=true ;
					break ;
				}
				
							
				
			}
			
			if(ok==false){
			
				try {
					f.CompteEtudiant(e);
					//request.setAttribute("", "");
				
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
		
				try {
					list = f.afficher() ;
				} catch (SQLException e2) {
					// TODO Auto-generated catch block
					e2.printStackTrace();
				}
				int id = 0 ;
				boolean exist =false ;
			
				for(int i=0;i<list.size();i++){
					
					if((list.get(i).getNom().equals(nom) && list.get(i).getPrenom().equals(prenom)) && list.get(i).getEmail().equals(email)&&list.get(i).getPassword().equals(password)){
						
						exist=true ;
						request.getSession().setAttribute("id_etudiant",list.get(i).getId()); 
						break ;
					}
						
				}
				
				request.getRequestDispatcher("index.jsp").forward(request, response);
			
			
			
			}else{
				
				request.getRequestDispatcher("CreerCompteEtudiant.jsp").forward(request, response);
				
			}
					
				
	}

}