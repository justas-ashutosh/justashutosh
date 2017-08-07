package weather.bot.endpoint;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import weather.bot.impl.ReadStream;
import weather.bot.impl.SendMessageImpl;
import weather.bot.impl.WeatherEngineImpl;
import weather.bot.impl.WitEngine;
import weather.bot.interfaces.NLPEngine;
import weather.bot.interfaces.SendMessage;
import weather.bot.interfaces.WeatherEngine;

/**
 * Servlet implementation class HttpHandler
 */
@WebServlet("/handler")
public class HttpHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String FB_VERIFY_TOKEN = "ashutosh.240697";
	private static final String FB_PAGE_ID = "1092777240809450";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HttpHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String verifyToken = request.getParameter("hub.verify_token");
		String mode = request.getParameter("hub.mode");
		String challenge = request.getParameter("hub.challenge");

		System.out.println("verifyToken : " + verifyToken + " ; mode : " + mode
				+ " ; challenge :  " + challenge);

		if (verifyToken.equals(FB_VERIFY_TOKEN)) {
			response.getWriter().append(challenge);
		} else {
			response.getWriter().append("Error, wrong validation token");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String input = new String(
				ReadStream.readFully(request.getInputStream()), "UTF-8");
		System.out.println(input);
		
		JSONObject message= new JSONObject(input);
		
		if (message.getJSONArray("entry").getJSONObject(0).has("messaging")
				&& message.getJSONArray("entry").getJSONObject(0)
						.getJSONArray("messaging").getJSONObject(0).has("message")) {
			String userid = message.getJSONArray("entry").getJSONObject(0)
					.getJSONArray("messaging").getJSONObject(0)
					.getJSONObject("sender").getString("id");

			String text = message.getJSONArray("entry").getJSONObject(0)
					.getJSONArray("messaging").getJSONObject(0)
					.getJSONObject("message").getString("text");
			if (!FB_PAGE_ID.equals(userid)) {
				System.out.println("Got message : " + text);

				String botResponse = "";

				NLPEngine nlpEngine = new WitEngine();
				String resp = nlpEngine.getResponse(text);

				JSONObject wit = new JSONObject(resp);
				if (wit.getJSONObject("entities").has("location")) {
					WeatherEngine weatherEngine = new WeatherEngineImpl();
					botResponse = weatherEngine.getWeatherDetails(wit
							.getJSONObject("entities").getJSONArray("location")
							.getJSONObject(0).getString("value"));
				} else if (wit.getJSONObject("entities").has("response")) {
					botResponse = wit.getJSONObject("entities")
							.getJSONArray("response").getJSONObject(0)
							.getString("value");
				} else {
					botResponse = "Sorry, I didn't get that.";
				}

				SendMessage sendMessage = new SendMessageImpl();
				sendMessage.sendMessage(botResponse, userid);
			}
			
		}
		
		

	}

}
