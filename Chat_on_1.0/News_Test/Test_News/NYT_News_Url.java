package Test_News;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;



import org.json.JSONObject;

public class NYT_News_Url {

	private static String input_json;
    
	public static void main(String args[])
	 {
		
        try {
			URL NYT_Url =new URL("http://api.nytimes.com/svc/news/v3/content/nyt/all.json?&limit=19&api-key="+News_api_key.Api_Key());
			BufferedReader br=new BufferedReader(new InputStreamReader(NYT_Url.openStream()));
			 input_json = br.readLine();
			JSONObject json=new JSONObject(input_json);
			json.getJSONArray("results").getJSONObject(1).get("abstract");
			json.getJSONArray("results").getJSONObject(2).get("abstract");
			json.getJSONArray("results").getJSONObject(3).get("abstract");
			json.getJSONArray("results").getJSONObject(4).get("abstract");
			for (int i=0;i<15;i++)
				{
				System.out.println(i+1+"\t"+"Section :"+json.getJSONArray("results").getJSONObject(i).get("section"));
				System.out.println("title :"+"\t"+json.getJSONArray("results").getJSONObject(i).get("title"));
				System.out.println("-*-"+"\t"+json.getJSONArray("results").getJSONObject(i).get("abstract"));
				System.out.println("link :"+"\t"+json.getJSONArray("results").getJSONObject(i).get("url"));			
				}	
			//System.out.println(json);
			br.close();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
    	JSONObject json1 =new JSONObject(input_json);
    	String s1=(String) json1.getJSONArray("results").getJSONObject(1).getJSONArray("multimedia")
    			.getJSONObject(1).get("url");
    	System.out.println(s1);
    	Test_Image_Extracting.help_media(s1);
		
        
	 }
	
	}
