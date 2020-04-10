package Controlleur;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modele.Find;
import modele.personne;
@WebServlet("/controlleurModifCompte")
public class controlleurModifCompte extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public controlleurModifCompte() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("jr suis laq");
		List<personne> liste = null;
		List<personne> liste1 = null;
		HttpSession session = request.getSession();
		Find f = new Find();
		try {
			liste=f.afficherRF();
			liste1=f.afficherAgent();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		session.setAttribute("listeRF", liste);
		session.setAttribute("listeAgent",liste1);
		RequestDispatcher disp=  request.getRequestDispatcher("modifier_compte.jsp");
		disp.forward(request,response);
		
	}

}
