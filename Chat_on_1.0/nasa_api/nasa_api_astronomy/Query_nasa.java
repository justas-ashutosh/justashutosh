package nasa_api_astronomy;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.json.JSONObject;

public class Query_nasa {

	private static URL nasa;
	static HttpURLConnection conn = null;
	private static String build;
	public static void main(String args [])
	{
		
		try {
		nasa= new URL("https://api.nasa.gov/planetary/apod?&api_key="+Nasa_api_key.Return());
		conn = (HttpURLConnection) nasa.openConnection();
		conn.setReadTimeout(30 * 1000);
		conn.setConnectTimeout(30 * 1000);
		BufferedReader br=new BufferedReader(new InputStreamReader(conn.getInputStream()));
		String line;
			while ((line = br.readLine()) != null) {
             build+=line;
            System.out.println(line);
			}
			System.out.println(build);
		    build=build.substring(4);
			System.out.println(build);
			JSONObject json1=new JSONObject(build);
			String url=json1.getString("url");
			System.out.println(url);
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static String apod()
		{
		String apod=build;
		return apod;
		}
}
