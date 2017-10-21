package Mail_Test_package;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

//import com.sun.xml.internal.stream.buffer.sax.Properties;

public class Main {

    private static String USER_NAME = "egas.sewa24@gmail.com";  // GMail user name (just the part before "@gmail.com")
    private static String PASSWORD = "ashutosh@egas"; // GMail password
    private static String RECIPIENT = "just.ashutoshmishra@gmail.com";

    public static void Mail(String n, String e, String a, String s, String m) {
      /*  String from = USER_NAME;
        String pass = PASSWORD;
        String[] to = { RECIPIENT }; // list of recipient email addresses
        String subject = "Java send mail example";
        String body = "Welcome to JavaMail!";*/
    	String[] to = { RECIPIENT }; 
        sendFromGMail(to, n,e ,s,a,m);
    }

    private static void sendFromGMail( String[] to, String n, String e, String a, String s, String m) {
        java.util.Properties props = System.getProperties();
        String host = "smtp.gmail.com";
       
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.user", USER_NAME);
        props.put("mail.debug", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.ssl.trust","*");
        props.put("mail.smtp.password", PASSWORD);
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");

        Session session = Session.getDefaultInstance(props);
        MimeMessage message = new MimeMessage(session);

        try {
            message.setFrom(new InternetAddress(USER_NAME));
            InternetAddress[] toAddress = new InternetAddress[to.length];

            // To get the array of addresses
            for( int i = 0; i < to.length; i++ ) {
                toAddress[i] = new InternetAddress(to[i]);
            }

            for( int i = 0; i < toAddress.length; i++) {
                message.addRecipient(Message.RecipientType.TO, toAddress[i]);
            }

            message.setSubject("[ALERT FROM E-GAS]");
            message.setText("Name of the Sender is :"+n+"\n"+"His Email is :"+e+"\n"+
            		"Address is: "+s+"\n"+"State is :"+a+"\n"+"\n"+"And Message is: "+m);
            Transport transport = session.getTransport("smtp");
            transport.connect(host, USER_NAME, PASSWORD);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
        }
        catch (AddressException ae) {
            ae.printStackTrace();
        }
        catch (MessagingException me) {
            me.printStackTrace();
        }
    }
}



