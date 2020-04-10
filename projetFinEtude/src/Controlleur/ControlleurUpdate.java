package Controlleur;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.Find;
import modele.personne;


@WebServlet("/ControlleurUpdate")
public class ControlleurUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ControlleurUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hidden = request.getParameter("hidden");
		if(hidden.equals("rf")){
			String id= request.getParameter("id");
			int idint = Integer.valueOf(id);
			System.out.println(idint);
			personne p = new personne(idint,(String)request.getParameter("nom"),
					(String)request.getParameter("prenom"),(String)request.getParameter("email")
					,(String)request.getParameter("telephone"),(String)request.getParameter("password")	) ;
			
			
			
			Find f =new Find();
			
			try {
				f.UpdateRF(p);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			request.getRequestDispatcher("controlleurModifCompte").forward(request,response);
		}else{
			String id= request.getParameter("id");
			int idint = Integer.valueOf(id);
			System.out.println(idint);
			personne p = new personne(idint,(String)request.getParameter("nom"),
					(String)request.getParameter("prenom"),(String)request.getParameter("email")
					,(String)request.getParameter("telephone"),(String)request.getParameter("password")	) ;
			
			
			
			Find f =new Find();
			
			try {
				f.UpdateAgent(p);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			request.getRequestDispatcher("controlleurModifCompte").forward(request,response);
		}
		
		
		
		
	}

}
