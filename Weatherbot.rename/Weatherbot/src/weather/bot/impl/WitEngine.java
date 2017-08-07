package weather.bot.impl;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import weather.bot.interfaces.NLPEngine;

public class WitEngine implements NLPEngine {
	
	private static final String APIKEY="H6ROTGW4H4ZUT24X2YLUOMXARB4RZHWW"; 
	@Override
	public String getResponse(String message) {
		StringBuilder urlstr = new StringBuilder(
				"https://api.wit.ai/message?q=" + URLEncoder.encode(message));

		// System.out.println("Making GET:" + urlstr.toString());
		HttpURLConnection conn = null;
		InputStream is = null;
		try {
			URL url = new URL(urlstr.toString());

			// (set connection and read timeouts on the connection)
			conn = (HttpURLConnection) url.openConnection();
			conn.setReadTimeout(30 * 1000);
			conn.setConnectTimeout(30 * 1000);
			
			conn.setRequestProperty("Authorization", "Bearer "+APIKEY);

			String resp = new String(
					ReadStream.readFully(conn.getInputStream()), "UTF-8");
			System.out.println("Response of NLP Engine : " + resp);

			return resp;

		} catch (Exception ex) {
			System.out.println("Making GET:" + urlstr.toString());
			ex.printStackTrace();
		} finally {
			if (is != null) {
				try {
					is.close();
				} catch (IOException e) {
				}
			}
		}
		return null;

	}

}
