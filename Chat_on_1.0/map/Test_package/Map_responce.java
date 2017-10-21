package Test_package;

import org.json.JSONException;
import org.json.JSONObject;



public class Map_responce {
 
	//public static void main(String args[]) throws JSONException{
	public static String getlat(String input) {
		//String input=Map_request.location("196+Masjid+Terrace+Reay+Road,+Mumbai-400010");
		JSONObject json;
		try {
			json = new JSONObject(input);
			String lat=(String) json.getJSONArray("results").getJSONObject(0).getJSONObject("geometry").getJSONObject("location").getString("lat");
	      	//System.out.println(lat);
			return lat;
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;	
	}
	public static String getlng(String input) {
		JSONObject json;
		try {
			json = new JSONObject(input);
			String lng=(String) json.getJSONArray("results").getJSONObject(0).getJSONObject("geometry").getJSONObject("location").getString("lng");
	      	//System.out.println(lng);
			return lng;
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;		
	 }
	//}
}
