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
 * Servlet implementation class ajoutFormation
 */
@WebServlet("/ajoutFormation")
public class ajoutFormation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ajoutFormation() {
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
	
	response.setContentType("text/html");
		
	
	String opt =request.getParameter("ajouter/nombre");
	
	
		String nomF =request.getParameter("nomf") ;
		
		
		if(opt.equals("ajouter_formation")){
			
		
		
		Find find =new Find();
		formation f = new formation() ;
		f.setNomFormation(nomF);
		
		try {
			
			System.out.println("je suis avant");
			
			find.ajouter_formation(nomF);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("ajouter_formation.jsp").forward(request, response);
		
		}else if(opt.equals("nombre")){
				
			List<formation> f = null;
           	Find find =new Find();
          
           		try {
					f=find.getFormations() ;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
				
           		for(int i=0 ;i<f.size();i++){
           		
           			//	System.out.println(i+"   rani");
           			int x =Integer.valueOf(request.getParameter("nombre"+i));
						System.out.println("param "+x);
           			 String id =request.getParameter("get"+i);
					 int d =Integer.valueOf(id);
					 System.out.println("id "+d);
					 Find fin =new Find();
				try {
					fin.AjouterNombreplace(d,x);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
					
				}
           				request.setAttribute("nbplace","nbplace");
           		
					request.getRequestDispatcher("place_pedagogie.jsp").forward(request, response);
					
		}else{
			
			
		//	response.getWriter().println("rani f else");
			
			
			
		}
			
		
	}

}