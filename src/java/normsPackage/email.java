package normsPackage;

import java.util.*; 
import javax.mail.*; 
import javax.mail.PasswordAuthentication;
import javax.mail.internet.*;

public class email {
    
public static void sendEmail(String email, String code) {
    final String username = "normsdormteam@gmail.com";
    final String password = "normsDorm96";
    Properties props = new Properties();
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.port", "587");
    Session session = Session.getInstance(props,
        new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(username, password);
            }
        });
    try {
	Message message = new MimeMessage(session);
	message.setFrom(new InternetAddress("normsdormteam@gmail.com"));
	message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
	message.setSubject("Activate your Norm's Dorm Account");
	message.setText("Hello");
	Transport.send(message);
			System.out.println("Done");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
    }
}