package Controlleur;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.Find;


@WebServlet("/ControlleurSupprimer")
public class ControlleurSupprimer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ControlleurSupprimer() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String hidden =request.getParameter("hidden");
		
		Find f= new Find() ;
		
		if(hidden.equals("rf")){
			
		int id = Integer.valueOf(request.getParameter("getid") );
			
			try {
				f.deletRF(id);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
		}else{
						
			int id = Integer.valueOf(request.getParameter("getid") );
			
			try {
				f.deletAgent(id);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		
		request.getRequestDispatcher("controlleurModifCompte").forward(request,response);
		
	}

}
