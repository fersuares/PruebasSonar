package mvc;

import java.util.Scanner;

public class vista {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

Scanner sc= new Scanner(System.in);
		
		System.out.print("Ingrese el primer n�mero:");  
		int a= sc.nextInt();
		
		System.out.print("Ingrese el segundo n�mero:");  
		int b= sc.nextInt();
		
		System.out.print("Ingrese la operaci�n\n"); 
		System.out.print("Opci�n 1. Suma\n");
		System.out.print("Opci�n 2. Resta\n");
		System.out.print("Opci�n 3. Multiplicaci�n\n");
		System.out.print("Opci�n 4. Divisi�n\n");
		
		int c= sc.nextInt();
		sc.close();
		
		Controlador controller = new Controlador();
		System.out.print(controller.calculator(a, b, c));
		
		
	}

}
