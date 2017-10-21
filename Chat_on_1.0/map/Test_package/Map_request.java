package Test_package;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

import org.json.JSONException;
import org.json.JSONObject;


public class Map_request {
	
	public static String location(String a) 
	 {
		
       try {
			URL Geo_Url =new URL("https://maps.googleapis.com/maps/api/geocode/"
					+ "json?address="+a+"&key="+Map_geo_key.API_KEY_geo_map());

			String resp = new String(
					ReadStream.readFully(Geo_Url.openStream()), "UTF-8");
			//System.out.println("Response of Google: " + resp);
			 //System.out.println(wit_input);
			JSONObject json=new JSONObject(resp);
			String lat=(String) json.getJSONArray("results").getJSONObject(0).getJSONObject("geometry").getJSONObject("location").getString("lat");
            System.out.println(lat);
            String lng=(String) json.getJSONArray("results").getJSONObject(0).getJSONObject("geometry").getJSONObject("location").getString("lng");
            System.out.println(lng);
			return resp;
			
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

      return null;
	 }

}
