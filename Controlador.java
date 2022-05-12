package mvc;

public class Controlador {
	public double calculator(int a, int b, int op){
		modelo model = new modelo();
		return model.calculator(a, b, op);
	}
}
