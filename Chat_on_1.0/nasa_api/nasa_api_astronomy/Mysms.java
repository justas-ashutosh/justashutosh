package nasa_api_astronomy;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class Mysms {


		public static void main(String[] args) {
			
		
			String recipient = "+918898931136";
			String message = "Hello World";
			String username = "admin";
			String password = "ashutosh2461997";
			String originator = "+917021818408";
			
		
			try {
				String requestUrl = "http://192.168.43.112:9501/api?action=sendmessage&" +
	            "username=" + URLEncoder.encode(username, "UTF-8") +
	            "&password=" + URLEncoder.encode(password, "UTF-8") + 
	            "&recipient=" + URLEncoder.encode(recipient, "UTF-8") + 
	            "&messagetype=SMS:TEXT" +
	            "&messagedata=" + URLEncoder.encode(message, "UTF-8") +
	            "&originator=" + URLEncoder.encode(originator, "UTF-8") +
	            "&serviceprovider=HTTPClient3" +
	            "&responseformat=html";
				
				
				
			  URL url = new URL(requestUrl);		  
			  HttpURLConnection uc = (HttpURLConnection)url.openConnection();
			  
			  System.out.println(uc.getResponseMessage());

			  uc.disconnect();
			  
			  
			} catch(Exception ex) {
				System.out.println(ex.getMessage());
				
			}
			 

		}

	

}
