package testprogram;

public class Mystack {
	public Object [] stk;
	public int top;
	boolean t=false;
	public Mystack(int capacity) {
		stk= new Object[capacity];
	    top = -1;
	}
public synchronized  void push (Object obj)
		{
		try{
			if(t)
				wait();
		}
		catch(Exception e)
		 {}
		if(top>=stk.length-1)
			 System.out.println("Stack full");
		else
		 {
			 top++;
			 try{
				 Thread.sleep(250);
			 }
			 catch(Exception e)
			  {
				 System.out.println("Sleep Exception");
			  }
			 stk[top]=obj;
			 t=true;
			 notify();
		 }
	}
public synchronized  Object pop()
		{
		try{
			if(!t)
				wait();
		}
		catch(Exception e)
		{}
		if (top==-1)
			System.out.println("Stack Underflow");
		else{
			t=false;
		notify();
		Object obj1 =null;
		obj1=stk[top];
		top--;
		try {
			Thread.sleep(250);
		}
		catch(Exception e)
		{
			System.out.println("Sleep Exception");
		}
		return obj1;
	  }
		return stk;
		}

}
