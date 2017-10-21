package NYTimes_Configuration;

import org.json.JSONException;
import org.json.JSONObject;

public class test_nyt {
	
	public static String input=NYT_Caller.file();
	public static String getTitle(int i) {
		String title;
		try {
			JSONObject json=new JSONObject(input);
			title = (String) json.getJSONArray("results").getJSONObject(i).get("title");
			System.out.println(title);
			return title;
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}
	
	public static String getBody(int i) {
		String body;
		try {
			JSONObject json=new JSONObject(input);
			body = (String) json.getJSONArray("results").getJSONObject(i).get("abstract");
			System.out.println(body);
			return body;
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	
	public static String getImg(int i) throws JSONException {
		JSONObject json=new JSONObject(input);
		String img=(String) json.getJSONArray("results").getJSONObject(i).get("thumbnail_standard");
		System.out.println(img);
		return img;
	}
	
	public static String getField(int i) throws JSONException {
		JSONObject json=new JSONObject(input);
		String field=(String) json.getJSONArray("results").getJSONObject(i).get("section");
		System.out.println(field);
		return field;
	}
	public static String getUrl(int i) throws JSONException {
		JSONObject json=new JSONObject(input);
		String url=(String) json.getJSONArray("results").getJSONObject(i).get("url");
		System.out.println(url);
		return url;
	}
	
}
