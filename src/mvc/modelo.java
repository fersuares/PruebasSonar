package mvc;

public class modelo {

	public double calculator(int a, int b, int op){
		if(op==1) {
			return (a+b);
		}
		else if(op==2) {
			return (a-b);
		}
		else if(op==3) {
			return (a*b);
		}
		else {
			return (a/b);
		}
	}
}
