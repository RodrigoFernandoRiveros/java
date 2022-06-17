package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAOs.FacilitadorDAO;
import modelo.Facilitador;

/**
 * Servlet implementation class ControladorEstudiante
 */
@WebServlet("/ControladorFacilitador")
public class ControladorFacilitador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorFacilitador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	    FacilitadorDAO fDAO = new FacilitadorDAO();
	    String op = (String)request.getParameter("op"); 
	     
	   
	    if(op==null) {
	    	fDAO.Facilitadores= new ArrayList<Facilitador>();	    	
	        fDAO.cargarFacilitadores();
	    	request.setAttribute("Facilitadores", fDAO.Facilitadores);
	    	request.getRequestDispatcher("views/facilitadores.jsp").forward(request, response);  
	    	
	    }
	    if(op.equalsIgnoreCase("actualizar")) {
	       int id = Integer.parseInt(request.getParameter("id"));
	       System.out.println(id);
	  	   request.setAttribute("facilitador", fDAO.obtenerFacilitador(id));
	       request.getRequestDispatcher("views/modificarfacilitador.jsp").forward(request, response);    
	    	
	    }        
	    			
	}
    
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}