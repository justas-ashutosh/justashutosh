package testprogram;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Thread2 extends Thread {
	BufferedReader br =new BufferedReader (new InputStreamReader(System.in));
	Mystack s3;
	int l;
	public Thread2(Mystack s,int l) {
		this.s3=s;
		this.l=l;
			}
	public void run()
		{
		for(int i=0;i<l;i++)
		  {
			Object o= s3.pop();
			System.out.println("poped item is " + o);
		  }
		}

}
