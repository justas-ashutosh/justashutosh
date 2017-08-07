package testprogram;

import java.util.Scanner;

public class Demostack {
	private static int no;
	public static void main(String[] args) {
		int temp;
		System.out.println("Enter no of terms");
		Scanner s=new Scanner(System.in);
		setNo(s.nextInt());
		temp=no;
		Mystack s9=new Mystack(no);
		Thread t1=new Thread1(s9,temp);
		Thread t2=new Thread2(s9,temp);
		t1.start();
		t2.start();
	}

	public static int getNo() {
		return no;
	}

	public static void setNo(int no) {
		Demostack.no = no;
	}

}
