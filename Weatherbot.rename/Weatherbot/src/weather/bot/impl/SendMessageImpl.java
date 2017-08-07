package weather.bot.impl;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONObject;

import weather.bot.interfaces.SendMessage;

public class SendMessageImpl implements SendMessage {
	
	public static final String accessToken="EAAEMEpXrhl8BADG8849rXqkyHaUoeNuyXJAZCfRVLtFH2y0QohKc6uVcwRJ2Vmzcvp1yUZAXr8ztzk8iN6NZAK0F04kOKFhhiMpXadEA6ZCG8BCyShiDjxori0zZA9EXxwbkiXMpY1aqeTNe9qTFrAzEbZB7x1cYoTI7H2nDrKywZDZD";

	@Override
	public void sendMessage(String message, String userid) {
		
			JSONObject messageObj=new JSONObject();
			messageObj.put("text", message);
			
			JSONObject user=new JSONObject();
			user.put("id", userid);
			JSONObject data=new JSONObject();
			data.put("message", messageObj);
			data.put("recipient", user);
			HttpURLConnection conn = null;
			InputStream is = null;
			try {
			    URL url = new URL("https://graph.facebook.com/v2.6/me/messages?access_token="+accessToken);

			    // (set connection and read timeouts on the connection)
			    conn = (HttpURLConnection)url.openConnection();
			    conn.setRequestMethod("POST");
			    conn.setReadTimeout(30 * 1000);
			    conn.setConnectTimeout(30 * 1000);
			    
			    conn.setRequestProperty("Content-Type", "application/json");
			    conn.setRequestProperty("Content-Length", "" + Integer.toString(data.toString().getBytes().length));
			    
			    conn.setDoInput(true);
			    conn.setDoOutput(true);
			    
			    OutputStreamWriter connwriter = new OutputStreamWriter(conn.getOutputStream());
			    connwriter.write(data.toString());
			    connwriter.flush();
			    connwriter.close();

			    String resp = new String(ReadStream.readFully(conn.getInputStream()), "UTF-8");
			    System.out.println("Response of send Message : "+resp);

			} catch (Exception ex) {
				ex.printStackTrace();
			} finally {
			    if (is != null) {
			        try {
			            is.close();
			        } catch (IOException e) {
			        }
			    }
			}
		}

}
