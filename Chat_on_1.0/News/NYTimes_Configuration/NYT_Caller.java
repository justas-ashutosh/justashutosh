package NYTimes_Configuration;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;

public class NYT_Caller {
 
    
	public static String file()
	 {
		
        try {
			URL NYT_Url =new URL("http://api.nytimes.com/svc/news/v3/content/nyt/all.json?&section=Business&limit=20&api-key=" 
									+Nytimes_Key.API_KEY());
			BufferedReader br=new BufferedReader(new InputStreamReader(NYT_Url.openStream()));
			  String input_json = br.readLine();	
			  System.out.println(input_json);
			  return input_json;
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

        return null;
	 }
	
}
