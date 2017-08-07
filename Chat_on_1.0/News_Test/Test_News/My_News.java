package Test_News;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;

public class My_News {

		public static String read_rss(String S_Url)
		{
			try {
				URL rssurl= new URL(S_Url);
				BufferedReader br= new BufferedReader(new InputStreamReader(rssurl.openStream()));
				String Code="";
				String line ;
				while((line= br.readLine())!=null)
					{
					if (line.contains("<title><![CDATA"))
					{
						int sub1=line.indexOf("<title><![CDATA[");
						String temp1=line.substring(sub1);
						temp1=temp1.replace("<title><![CDATA[","");
						int last1=temp1.indexOf("]]></title>");
						temp1=temp1.substring(0, last1);
						Code="\t"+Code+"\t"+temp1+"\n"+"\n"+"\t";
					}
	/*				else	if (line.contains("<link><![CDATA"))
					{
					int sub2=line.indexOf("<link><![CDATA[");
					String temp2=line.substring(sub2);
					temp2=temp2.replace("<link><![CDATA[","");
					int last2=temp2.indexOf("]]></link>");
					temp2=temp2.substring(0, last2);
					Code+="\t"+temp2+"\n"+"\n";					
					}*/
				/*	else if(line.contains("<title>"))
						{
						int sub=line.indexOf("<title>");
						String temp=line.substring(sub);
						temp=temp.replace("<title>","");
						int last=temp.indexOf("</title>");
						temp=temp.substring(0, last);
						Code+=temp+"\n";
						}*/			
					}
				br.close();
				return Code;
			} catch (MalformedURLException e) {
				e.printStackTrace();
			}
			catch (IOException ioe) {
				ioe.printStackTrace();
			}				
			return null;
		}
}
