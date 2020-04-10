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
 * Servlet implementation class ControlleurRecours
 */
@WebServlet("/ControlleurRecours")
public class ControlleurRecours extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControlleurRecours() {
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
	
		Find f =new Find();
		
		
		String recours = request.getParameter("Recours");
		
		
		if(recours.equals("demanderRecours")){
		
		String Monrecours = request.getParameter("Monrecours");
		
		int id =(int) request.getSession().getAttribute("id_etudiant") ;
			
		
		try {
			f.AddRecours(id, Monrecours);
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			f.putNotificationRecours(id,"recours","votre recours a été bien reçu");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
			response.sendRedirect("demander_recours.jsp");
		
		
		}else if(recours.equals("traiter")){
			
			//pour consultation de recours
			
			String idEtudiant =request.getParameter("idEtudiant");
			String idRecours =request.getParameter("idRecours"); 
			
			int id_Etudiant =Integer.valueOf(idEtudiant);
			int id_Recours =Integer.valueOf(idRecours);

			request.getSession().setAttribute("ettudiant",id_Etudiant);
			request.getSession().setAttribute("rrecours",id_Recours);

			
			response.sendRedirect("recours.jsp");
			
			
		}else if(recours.equals("accepter")){
			
			int id_recours=(int) request.getSession().getAttribute("rrecours");
			
			try {
				f.AccepterRejeterRecours(id_recours,"Accepté",true);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
			
			int ii =(int) request.getSession().getAttribute("ettudiant");
			try {
				f.putNotification(ii, "recours accepte", "Information concernant votre demande de recours.");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			
			
			response.sendRedirect("consulter_recours.jsp");
			
		}else if(recours.equals("rejeter")){
			
               int id_recours=(int) request.getSession().getAttribute("rrecours");
			
			try {
				f.AccepterRejeterRecours(id_recours,"Rejeté",true);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
			int ii =(int) request.getSession().getAttribute("ettudiant");
			try {
				f.putNotification(ii, "recours rejete", "Informations concernant votre demande de recours.");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			response.sendRedirect("consulter_recours.jsp");
					
			
		}
		
	}

}