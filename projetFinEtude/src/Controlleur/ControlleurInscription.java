package Controlleur;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import modele.Find;

/**
 * Servlet implementation class controlleurInscription
 */
@WebServlet("/controlleurInscription")
@MultipartConfig(maxFileSize = 16177215)
public class ControlleurInscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControlleurInscription() {
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
	
		String choix =request.getParameter("inscription");
		String formation =request.getParameter("formation");	
		//je vais ajouter la formation a la base ici et nn pas dans
		
		 Find f =new Find();
			
		 int k=0;
			try {
			
				k = f.getIdFormation(formation);
		
			} catch (SQLException e1) {
				
				e1.printStackTrace();
			}
		
		
		if(choix.equals("interne")){
						
			InputStream inputstream  = null ;
			InputStream inputstream1  = null ;
			InputStream inputstream2  = null ;
			InputStream inputstream3  = null ;
			/********************************************/
			Part filePart1 =request.getPart("relevetbac");
			Part filePart2 =request.getPart("annee1");
			Part filePart3 =request.getPart("annee2");
			Part filePart4 =request.getPart("annee3");
			/*******************************************/
			inputstream = filePart1.getInputStream();
			inputstream1 = filePart2.getInputStream();
			inputstream2 = filePart3.getInputStream();
			inputstream3  = filePart4.getInputStream();
			/*******************************************/
			//String moyennebac =request.getParameter("moyennebac");
			int  mannee1 =Integer.valueOf(request.getParameter("mannee1"));
			int  mannee2 =Integer.valueOf(request.getParameter("mannee2"));
			int  mannee3 =Integer.valueOf(request.getParameter("mannee3"));
			/**************************************************/
			int id =(int) request.getSession().getAttribute("id_etudiant") ;
				
			try {
				new Find().inscrireInterne(id, inputstream,inputstream1,inputstream2,inputstream3,mannee1,mannee2,mannee3,"interne",k);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			};
			
			response.sendRedirect("index.jsp");
			
		}else if(choix.equals("externe")){
			
			InputStream inputstream  = null ;
			InputStream inputstream1  = null ;
			InputStream inputstream2  = null ;
			InputStream inputstream3  = null ;
			InputStream inputstream4  = null ;
			InputStream inputstream5  = null ;
			InputStream inputstream6  = null ;
			/******************************************/
			Part filePart1 =request.getPart("relevetbac");
			Part filePart2 =request.getPart("annee1");
			Part filePart3 =request.getPart("annee2");
			Part filePart4 =request.getPart("annee3");
			Part filePart5 =request.getPart("diplomel");
			Part filePart6 =request.getPart("attcla");
			Part filePart7 =request.getPart("bonne");
			/*****************************************/
			inputstream   = filePart1.getInputStream();
			inputstream1  = filePart2.getInputStream();
			inputstream2  = filePart3.getInputStream();
			inputstream3  = filePart4.getInputStream();
			inputstream4  = filePart5.getInputStream();
			inputstream5  = filePart6.getInputStream();
			inputstream6  = filePart7.getInputStream();	
			/******************************************/
			int  mannee1 =Integer.valueOf(request.getParameter("mannee1"));
			int  mannee2 =Integer.valueOf(request.getParameter("mannee2"));
			int  mannee3 =Integer.valueOf(request.getParameter("mannee3"));
			//String mannee4 =request.getParameter("mbac");
			/**************************************************/
			int id =(int) request.getSession().getAttribute("id_etudiant") ;
				
			try {
				new Find().inscrireExterne(id, inputstream, inputstream1, inputstream2, inputstream3, inputstream4, inputstream5,inputstream6,mannee1,mannee2,mannee3,"externe/ancienne promo",k);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			};
				
			response.sendRedirect("index.jsp");
	
		}else if(choix.equals("equivalence")){
			
			
			/*******************************************/
			InputStream inputstream  = null ;
			InputStream inputstream1  = null ;
			InputStream inputstream2  = null ;
			InputStream inputstream3  = null ;
			InputStream inputstream4  = null ;
			InputStream inputstream5  = null ;
			InputStream inputstream6  = null ;
			InputStream inputstream7  = null ;
			//InputStream inputstream8  = null ; pour la piece d'identité
			/*******************************************/
			Part filePart1 =request.getPart("relevetbac");
			Part filePart2 =request.getPart("annee1");
			Part filePart3 =request.getPart("annee2");
			Part filePart4 =request.getPart("annee3");
			Part filePart5 =request.getPart("annee4");
			Part filePart6 =request.getPart("diplomel");
			Part filePart7 =request.getPart("attcla");
			Part filePart8 =request.getPart("bonne");
			/******************************************/		
			inputstream   = filePart1.getInputStream();
			inputstream1  = filePart2.getInputStream();
			inputstream2  = filePart3.getInputStream();
			inputstream3  = filePart4.getInputStream();
			inputstream4  = filePart5.getInputStream();
			inputstream5  = filePart6.getInputStream();
			inputstream6  = filePart7.getInputStream();
			inputstream7  =filePart8.getInputStream() ;
			/******************************************/
			int  mannee1 =Integer.valueOf(request.getParameter("mannee1"));
			int  mannee2 =Integer.valueOf(request.getParameter("mannee2"));
			int  mannee3 =Integer.valueOf(request.getParameter("mannee3"));
			int  mannee4 =Integer.valueOf(request.getParameter("mannee4"));		
			/**************************************************/
			int id =(int) request.getSession().getAttribute("id_etudiant") ;
				
			try {
				new Find().inscrireEquivalence(id, inputstream, inputstream1, inputstream2, inputstream3, inputstream4, inputstream5,inputstream6,inputstream7,mannee1,mannee2,mannee3,mannee4,"equivalence",k);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			};
		
			response.sendRedirect("index.jsp");
			
		}else if(choix.equals("correction")){
			
		
			int id =(int) request.getSession().getAttribute("id_etudiant") ;
			
			System.out.println("attribuer null aux input");
			InputStream inputstream  = null ;
			InputStream inputstream1  = null ;
			InputStream inputstream2  = null ;
			InputStream inputstream3  = null ;
			InputStream inputstream4  = null ;
			InputStream inputstream5  = null ;
			InputStream inputstream6  = null ;
			InputStream inputstream7  = null ;
			//InputStream inputstream8  = null ; pour la piece d'identité
			/*******************************************/
			System.out.println("traitement part");
			Part filePart1 =request.getPart("relevetbac");
			Part filePart2 =request.getPart("annee1");
			Part filePart3 =request.getPart("annee2");
			Part filePart4 =request.getPart("annee3");
			Part filePart5 =request.getPart("annee4");
			Part filePart6 =request.getPart("diplomel");
			Part filePart7 =request.getPart("attcla");
			Part filePart8 =request.getPart("bonne");
			/******************************************/
		if(filePart1!=null)	{
			
			inputstream   = filePart1.getInputStream();
			
			try {
				f.CorrectionManquePap(id, inputstream,"relevetbac");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}if(filePart2!=null)	{
			
			String  mannee1 =request.getParameter("mannee1");
			 double m1= Double.valueOf(mannee1);
			inputstream1  = filePart2.getInputStream();
	
			try {
			f.CorrectionManqueCursus(id, inputstream1, m1, "annee1");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
			
		}if(filePart3!=null)	{
			String  mannee2 =request.getParameter("mannee2");
			 double m2= Double.valueOf(mannee2);
			inputstream2  = filePart3.getInputStream();
			try {
				f.CorrectionManqueCursus(id, inputstream2, m2, "annee2");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}if(filePart4!=null)	{	
			String  mannee3 =request.getParameter("mannee3");
			 double m3= Double.valueOf(mannee3);
			inputstream3  = filePart4.getInputStream();
			try {
				f.CorrectionManqueCursus(id, inputstream3, m3, "annee3");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		
		}if(filePart5!=null)	{	
			String  mannee4 =request.getParameter("mannee4");
			 double m4= Double.valueOf(mannee4);
			inputstream4  = filePart5.getInputStream();
			try {
				f.CorrectionManqueCursus(id, inputstream4, m4, "annee4");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		
		}if(filePart6!=null)	{	
		
			inputstream5  = filePart6.getInputStream();
			try {
				f.CorrectionManquePap(id, inputstream5,"diplomel");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}if(filePart7!=null)	{	
		
			inputstream6  = filePart7.getInputStream();
			try {
				f.CorrectionManquePap(id, inputstream6,"attcla");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}if(filePart8!=null)	{	
		
			inputstream7  =filePart8.getInputStream() ;
			try {
				f.CorrectionManquePap(id, inputstream7,"bonne");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
			/******************************************/

		// Dans le cas ou il y a de modification je corrige ^^"  aussi l'identité
		
		response.sendRedirect("index.jsp");
			
			
		
		
			

		
			

		}
	}

}