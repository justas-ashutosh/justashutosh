package testpackage;

import java.util.Scanner;

public class Patterns {
	static int n;
	private static Scanner sc;
	public Patterns() {
		n=0;
	}

	public static void main(String[] args) {
		sc = new Scanner(System.in);
		System.out.println("Enter No of Lines");
		n=sc.nextInt();
		for(int i=0;i<n;i++)
		{
			
			for(int j=0;j<=i;j++)
			{
				System.out.print(" * ");
			}System.out.println("");
			
		}
	
	}

}
