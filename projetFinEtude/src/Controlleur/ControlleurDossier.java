package Controlleur;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modele.Find;
import modele.etudiant;
/**
 * Servlet implementation class ControlleurDossier
 */
@WebServlet("/ControlleurDossier")
public class ControlleurDossier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControlleurDossier() {
        super();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Blob photo = null;
		   Connection conn = null;
		   Statement stmt = null;
		   ResultSet rs = null;
		   String id_etudiant = request.getParameter("idEtudiant");
		   String nom_etudiant = request.getParameter("nomEtudiant"); 
		   String fichier =request.getParameter("fichier");
		   System.out.println(id_etudiant);
		   System.out.println(nom_etudiant);
		   HttpSession session = request.getSession();
		   id_etudiant = String.valueOf(id_etudiant); 
		   
		        System.out.println("EXECUTE IMAGE ");
		   //String query = "SELECT `relevet_bac` FROM `etudiant` WHERE `id_etudiant`="+id_etudiant;
		   String query = "SELECT "+fichier+" FROM `etudiant` WHERE `id_etudiant`="+id_etudiant;
		   System.out.println("EXECUTED IMAGE ");
		   ServletOutputStream out = response.getOutputStream();

		   try {
		     conn = new Find().con() ;
		   } catch (Exception e) {
		     response.setContentType("text/html");
		     out.println("<html><head><title>Person Photo</title></head>");
		     out.println("<body><h1>Database Connection Problem.</h1></body></html>");
		     return;
		   }

		   try {
		     stmt = conn.createStatement();
		     rs = stmt.executeQuery(query);
		     if (rs.next()) {
		       photo = rs.getBlob(1);
		     } else {
		       response.setContentType("text/html");
		       out.println("<html><head><title>Person Photo</title></head>");
		       out.println("<body><h1>No photo found for id= 001 </h1></body></html>");
		       return;
		     }

		     response.setContentType("image/gif");
		     InputStream in = photo.getBinaryStream();
		     int length = (int) photo.length();

		     int bufferSize = 1024;
		     byte[] buffer = new byte[bufferSize];

		     while ((length = in.read(buffer)) != -1) {
		       System.out.println("writing " + length + " bytes");
		       out.write(buffer, 0, length);
		     }

		     in.close();
		     out.flush();
		   } catch (SQLException e) {
		     response.setContentType("text/html");
		     out.println("<html><head><title>Error: Person Photo</title></head>");
		     out.println("<body><h1>Error=" + e.getMessage() + "</h1></body></html>");
		     return;
		   } finally {
		     try {
		       rs.close();
		       stmt.close();
		       conn.close();
		     } catch (SQLException e) {
		       e.printStackTrace();
		     }
		   }
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);		
	}

}