import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import org.json.JSONException;
import org.json.JSONObject;

public class Weather_data {

	public static String Weather(String city)
	 {
		URL Weather_Url;
		try {
			Weather_Url=new URL("http://api.openweathermap.org/data/2.5/weather?APPID="
					+ Api_Key.Weather_Key() + "&q=" + URLEncoder.encode(city));
			BufferedReader br=new BufferedReader(new InputStreamReader(Weather_Url.openStream()));
			String input=br.readLine();
			JSONObject respObj = new JSONObject(input);
			String output = "Hi,\nThe weather in " + city;
			output += " is "
					+ respObj.getJSONArray("weather").getJSONObject(0)
							.getString("description") + ".\n";
			output += "The temperature is "
					+ (respObj.getJSONObject("main").getDouble("temp") - 273.15)
					+ " Celsius.";
			return output;
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e){
			e.printStackTrace();
		}
		return null;
	 }

}
