package Wit_Classes;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;


public class Wit_Connection {

		@SuppressWarnings("deprecation")
		public static void main(String args[]){
		 URL Wit_Url;
		 HttpURLConnection conn = null;
		 String text="hi";
		try {
			Wit_Url = new URL("https://api.wit.ai/message?v=02/07/2017&q="+URLEncoder.encode(text));
			conn = (HttpURLConnection) Wit_Url.openConnection();
			conn.setReadTimeout(30 * 1000);
			conn.setConnectTimeout(30 * 1000);
			
			conn.setRequestProperty("Authorization", "Bearer "+Wit_Api_key.Return_api());
			String resp = new String(
					ReadStream.readFully(conn.getInputStream()), "UTF-8");
			System.out.println("Response of Wit: " + resp);
			 //System.out.println(wit_input);
			 //return wit_input;
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
			//return null;
		 
		}
	}