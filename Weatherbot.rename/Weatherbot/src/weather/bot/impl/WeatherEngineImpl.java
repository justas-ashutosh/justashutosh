package weather.bot.impl;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.JSONObject;

import weather.bot.interfaces.WeatherEngine;

public class WeatherEngineImpl implements WeatherEngine {

	private static final String APIKEY = "fb9e4a26abfd4805757337b29e9035db";
	@Override
	public String getWeatherDetails(String city) {
		StringBuilder urlstr = new StringBuilder(
				"http://api.openweathermap.org/data/2.5/weather?APPID="
						+ APIKEY + "&q=" + URLEncoder.encode(city));

		// System.out.println("Making GET:" + urlstr.toString());
		HttpURLConnection conn = null;
		InputStream is = null;
		try {
			URL url = new URL(urlstr.toString());

			// (set connection and read timeouts on the connection)
			conn = (HttpURLConnection) url.openConnection();
			conn.setReadTimeout(30 * 1000);
			conn.setConnectTimeout(30 * 1000);

			String resp = new String(
					ReadStream.readFully(conn.getInputStream()), "UTF-8");
			System.out.println("Response of Weather Engine : " + resp);

			JSONObject respObj = new JSONObject(resp);

			String output = "Hi,\nThe weather in " + city;
			output += " is "
					+ respObj.getJSONArray("weather").getJSONObject(0)
							.getString("description") + ".\n";
			output += "The temperature is "
					+ (respObj.getJSONObject("main").getDouble("temp") - 273.15)
					+ " Celsius.";
			return output;
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
