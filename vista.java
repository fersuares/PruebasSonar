package mvc;

import java.util.Scanner;

public class vista {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

Scanner sc= new Scanner(System.in);
		
		System.out.print("Ingrese el primer número:");  
		int a= sc.nextInt();
		
		System.out.print("Ingrese el segundo número:");  
		int b= sc.nextInt();
		
		System.out.print("Ingrese la operación\n"); 
		System.out.print("Opción 1. Suma\n");
		System.out.print("Opción 2. Resta\n");
		System.out.print("Opción 3. Multiplicación\n");
		System.out.print("Opción 4. División\n");
		
		int c= sc.nextInt();
		sc.close();
		
		Controlador controller = new Controlador();
		System.out.print(controller.calculator(a, b, c));
		
		
	}

}
