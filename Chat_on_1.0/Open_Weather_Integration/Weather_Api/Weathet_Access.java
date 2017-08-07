package Weather_Api;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

public class Weathet_Access {
	
	@SuppressWarnings("deprecation")
	public static void main(String []args)
	 {
		URL Weather_Url;
		String city="delhi";
		try {
			Weather_Url=new URL("http://api.openweathermap.org/data/2.5/weather?APPID="
					+ Weather_Api_Key.Weather_Key() + "&q=" + URLEncoder.encode(city));
			BufferedReader br=new BufferedReader(new InputStreamReader(Weather_Url.openStream()));
			String input=br.readLine();
			System.out.println(input);
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e){
			e.printStackTrace();
		}
		
	 }

}
