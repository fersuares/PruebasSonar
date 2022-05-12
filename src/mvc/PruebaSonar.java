package mvc;

import java.util.ArrayList;
import java.util.List;


public class PruebaSonar {

	public static void main(String[] args) {
		
		String dato="";
		
		
		//Primero se debe validar la constante y luego la variable
		if(dato.equalsIgnoreCase("any")) {
			
			//No se debería usar System.err ni System.out sino un Logger
			System.err.println("System.err");
		}
		
		//No es Necesario Poner el tipo de objeto en la instancia del Array ya que este es inferido 
		List<String> ltStrings = new ArrayList<String>();
		
		String dato2="";
		
		//No se debería usar rl toString() ya que la variable es String
		ltStrings.add(dato2.toString());
		
		
		//Para validar si una lista esta vacia no se debe usar el .size() sino el isempty
		if(ltStrings.size()>0) {
			
			//No se debería usar System.err ni System.out sino un Logger 
			System.out.println("System.out");
		}		
	
		
	}
	
}
