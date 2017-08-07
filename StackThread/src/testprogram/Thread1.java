package testprogram;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Thread1 extends Thread {
	BufferedReader br =new BufferedReader (new InputStreamReader(System.in));
	Mystack s1;
	int l;
	public Thread1(Mystack s,int l) {
		this.s1=s;
		this.l=l;
			}
	public void run()
		{
		for(int i=0;i<l;i++)
		{
		  System.out.println("Enter a string");
		  String s = null;
		try {
			s = br.readLine();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		   s1.push(s);
			
		  }
		}

}
