import java.io.IOException;
import java.util.*;
/**
 * IMPORTANT: 
 *      O nome da classe deve ser "Main" para que a sua solução execute
 *      Class name must be "Main" for your solution to execute
 *      El nombre de la clase debe ser "Main" para que su solución ejecutar
 */
public class Main {
 
    public static void main(String[] args) throws IOException {
 
       
		// your code goes here
		int x=0;
		int y=0;
		int x1=0; 
		int y1=0;
		int d;
		Scanner sc = new Scanner(System.in);
		int n=sc.nextInt();
		for(int i=0;i<n;++i){
			int N1=sc.nextInt();
			char div1=sc.next().charAt(0);
			int D1=sc.nextInt();
			char op=sc.next().charAt(0);
			int N2=sc.nextInt();
			char div2=sc.next().charAt(0);
			int D2=sc.nextInt();
			
			if(op=='+'){
				x= (N1*D2 + N2*D1) ;
				y= (D1*D2);
			
				
			}
			else if(op=='*'){
				x= (N1*N2) ;
				y= (D1*D2);
			
				
			}
			else if(op=='-'){
				x= (N1*D2 - N2*D1) ;
				y= (D1*D2);
				
				
			}
			else {
				x=  (N1 * D2) ;
				y= (N2 * D1);
				
				
			}
			d=gcd(x,y);
			if(d<0){
			d*=-1;
			}
			x1=x/d;
			y1=y/d;
			System.out.println( x + "/" + y + " = "+ x1 + "/" + y1);
		}
 
    }
    public static int gcd(int a, int b){
		if(b == 0)
            return a;
        else
            return gcd(b, a%b);
    }
 
}
