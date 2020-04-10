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
import modele.formation;

/**
 * Servlet implementation class ControlleurEvaluation
 */
@WebServlet("/ControlleurEvaluation")
public class ControlleurEvaluation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControlleurEvaluation() {
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
		
		
		
		
				Find f =new Find();
				List<formation> formation=null ;
				try {
					
					formation =f.getFormations();
			
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				for(int i=0;i<formation.size();i++){
					
					String x =request.getParameter("e"+i);
					
					try {
						f.typeEvaluation(formation.get(i).getId_formation(),x);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					
					
				}
				
				
				request.setAttribute("v","v");
				
				request.getRequestDispatcher("typeEvaluation.jsp").forward(request, response);
		
				
				
				
		
		
		
		
	}

}
