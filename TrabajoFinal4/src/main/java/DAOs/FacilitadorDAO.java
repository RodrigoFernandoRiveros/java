package DAOs;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import java.sql.Statement;

import modelo.Estudiante;
import modelo.Facilitador;
import DAOs.Conexion;

public class FacilitadorDAO {

	
	public List<Facilitador> Facilitadores;
	public void cargarFacilitadores(){
		
		String sql = "SELECT * FROM FACILITADOR";
      
        try {
            Statement declaracion = Conexion.getCon().createStatement();
            ResultSet Resultados = declaracion.executeQuery(sql);
            while(Resultados.next())
            {
            	
            this.Facilitadores.add(new Facilitador(Resultados.getInt("id"),Resultados.getString("rut"),Resultados.getString("nombre"),
                Resultados.getString("email"), Resultados.getString("telefono"),Resultados.getString("valorhora"),Resultados.getString("banco"),Resultados.getString("ctabancaria"), Resultados.getString("last_update")));
            } 
           } catch (SQLException e)
        {
            System.out.println("REVISA BIEN LA CONSULTA");    
            e.printStackTrace();
        } 
	}
	public Facilitador obtenerFacilitador(int id) {
	    
		
		   String sql= "SELECT * FROM FACILITADOR WHERE id =" + id;
		   Facilitador facilitador = null;
		   
	        try {
	            Statement declaracion = Conexion.getCon().createStatement();
	            ResultSet Resultados = declaracion.executeQuery(sql);
	            while(Resultados.next()){
	                facilitador = new Facilitador(Resultados.getInt("id"),Resultados.getString("rut"),Resultados.getString("nombre"),
	                        Resultados.getString("email"), Resultados.getString("telefono"),Resultados.getString("valorhora"),Resultados.getString("banco"),Resultados.getString("ctabancaria"), Resultados.getString("last_update"));
	            } 
	        } catch (SQLException e) {
	            System.out.println("REVISA BIEN LA CONSULTA");    
	            e.printStackTrace();
	        }
		return facilitador;
	}
	
	
}
