package Controlleur;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modele.Find;
import modele.personne;

@WebServlet("/ControlleurCompte")
public class ControlleurCompte extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ControlleurCompte() {
        super();
           }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String hidden = request.getParameter("hidden");
		if(hidden.equals("rf")){
		request.getSession().setAttribute("hidden", "rf");
		personne pers =null ;
		//String nom ,prenom ,daten , email ,password ,telephone ,address;
		
		Find find =new Find() ;
		int id =Integer.valueOf(request.getParameter("getid"));
		try {
			 pers= find.getRF(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getSession().setAttribute("pers",pers);
		request.getRequestDispatcher("compte.jsp").forward(request,response);
		}else{
			request.getSession().setAttribute("hidden", "agent");
			personne pers =null ;
			Find find =new Find() ;
			int id =Integer.valueOf(request.getParameter("getid"));
			try {
				 pers= find.getAgent(id);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getSession().setAttribute("pers",pers);
			request.getRequestDispatcher("compte.jsp").forward(request,response);
		}
	}

}
