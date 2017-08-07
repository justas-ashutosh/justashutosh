package Test_jdbc;

import java.util.ArrayList;
import java.util.Scanner;

public class Myjdbcapp {

	private static ArrayList<Employee> emps;

	public static void main(String[] args) {
    	Scanner sc = new Scanner(System.in);  
        Employee e = new Employee();    
       
        int n,f; 
        do
          {
      	  
      	  System.out.println("Enter a choice");
      	  System.out.println("1 : Insert a Value in Database");
      	  System.out.println("2 : Update code for an Employee");
      	  System.out.println("3 : Delete an Employee");
      	  System.out.println("4 : Display all records");
      	  n=sc.nextInt();
      	  switch(n)
      	    {
      	  case 1:
      		    System.out.println("Enter E_id");
      	        e.setE_id(sc.nextInt());
      	        System.out.println("Enter code");
      	        e.setCode(sc.next());
      	        System.out.println("Enter name");
      	        e.setName(sc.next());
      	        System.out.println("Enter city");
      	        e.setCity(sc.next());
      	        System.out.println("Enter salary");
      	        e.setSal(sc.nextDouble());
      	        EmployeeDAO edao = new EmployeeDAO();
      	        edao.Insert(e);
      	        break ;
      	  case 2:
      		  System.out.println("Enter the E_id and the new code");
      		  int e1=sc.nextInt();
      		  String s=sc.next();
      		  EmployeeDAO edao2 = new EmployeeDAO();
      		  edao2.updateEmp(e1,s);
      		  break;
      	  case 3:
      		  System.out.println("Enter the E_id of the Employee to be Deleted");
      		  int e2=sc.nextInt();
      		  EmployeeDAO edao1 = new EmployeeDAO();
      	      edao1.DeleteEmp(e2); 
        		  break;
      	  case 4:
      		  EmployeeDAO edao3 = new EmployeeDAO();
      		  System.out.println("List of all Employees");
      		  emps=edao3.displayEmployee();
      		  for(int i=0;i<emps.size();i++)
                {
               	System.out.println("E_id is " + emps.get(i).getE_id() + 
               			"Code is " + emps.get(i).getCode()+ "Name is " + 
               			emps.get(i).getName() + "City is " + emps.get(i).getCity()+ 
               			"Salary is " + emps.get(i).getSal());
                }
               
        		  break;
      	    }
      	  System.out.println("Do you want to Continue");
      	  System.out.println("if Yes press 0 else anything");
      	  f=sc.nextInt();
          }
        while(f==0);
        if(f!=0)
      	  System.out.println("Quiting the Program");
          
        sc.close();     
          

      }
      
  }

/*********************output*****************************

Enter a choice
1 : Insert a Value in Database
2 : Update code for an Employee
3 : Delete an Employee
4 : Display all records
4
List of all Employees
E_id is 4Code is sdwName is dwCity is wecwSalary is 2321.0
E_id is 5Code is dfName is reCity is efSalary is 333.0
E_id is 5Code is gfgName is grdgdCity is fthSalary is 5.0
E_id is 6Code is analystName is ashuCity is mumbaiSalary is 5.0
Do you want to Continue
if Yes press 0 else anything
0
Enter a choice
1 : Insert a Value in Database
2 : Update code for an Employee
3 : Delete an Employee
4 : Display all records
1
Enter E_id
8
Enter code
programmer
Enter name
ashutosh
Enter city
mumbai
Enter salary
50000
Inserted
Do you want to Continue
if Yes press 0 else anything
0
Enter a choice
1 : Insert a Value in Database
2 : Update code for an Employee
3 : Delete an Employee
4 : Display all records
2
Enter the E_id and the new code
4
analys
Updated
Do you want to Continue
if Yes press 0 else anything
0
Enter a choice
1 : Insert a Value in Database
2 : Update code for an Employee
3 : Delete an Employee
4 : Display all records
3
Enter the E_id of the Employee to be Deleted
6
Deleted
Do you want to Continue
if Yes press 0 else anything
0
Enter a choice
1 : Insert a Value in Database
2 : Update code for an Employee
3 : Delete an Employee
4 : Display all records
4
List of all Employees
E_id is 4Code is analysName is dwCity is wecwSalary is 2321.0
E_id is 5Code is dfName is reCity is efSalary is 333.0
E_id is 5Code is gfgName is grdgdCity is fthSalary is 5.0
E_id is 8Code is programmerName is ashutoshCity is mumbaiSalary is 50000.0
Do you want to Continue
if Yes press 0 else anything 
**************************************************/
