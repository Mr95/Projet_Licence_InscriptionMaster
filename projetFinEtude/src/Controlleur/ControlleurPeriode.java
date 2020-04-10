package Controlleur;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.Find;
import modele.Periodes;

/**
 * Servlet implementation class ControlleurPeriode
 */
@WebServlet("/ControlleurPeriode")
public class ControlleurPeriode extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControlleurPeriode() {
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
		
		
		
		Date debutInscription =Date.valueOf(request.getParameter("debutInscription"));
		Date finInscription =Date.valueOf( request.getParameter("finInscription"));
		Date debutRecours  =Date.valueOf(request.getParameter("debutRecours"));
		Date finRecours    = Date.valueOf(request.getParameter("finRecours") );
		Date debutEntretiens  =Date.valueOf(request.getParameter("debutEntretiens"));
		Date finEntretiens =Date.valueOf(request.getParameter("finEntretiens") );
		Date affichage1 =Date.valueOf(request.getParameter("affichage1")) ;
		Date affichage2 =Date.valueOf(request.getParameter("affichage2") );
		Date affichage3 =Date.valueOf(request.getParameter("affichage3") );
		
		
		
		Periodes periode =	new Periodes( debutInscription,  finInscription, debutRecours,  finRecours,
				debutEntretiens, finEntretiens,  affichage1,  affichage2,  affichage3);
		
		Find f = new Find();
		
		try {
			f.definirPeriode(periode);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
