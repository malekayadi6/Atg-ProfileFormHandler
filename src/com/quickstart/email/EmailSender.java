package com.quickstart.email;


import java.io.IOException;
 
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.servlet.ServletException;

import atg.nucleus.GenericService;
import atg.repository.servlet.RepositoryFormHandler;
import atg.service.email.ContentPart;
import atg.service.email.EmailEvent;
import atg.service.email.EmailException;
import atg.service.email.MimeMessageUtils;
import atg.service.email.SMTPEmailSender;
import atg.servlet.DynamoHttpServletRequest;
import atg.servlet.DynamoHttpServletResponse;

public class EmailSender extends GenericService implements IEmailSender{

    private SMTPEmailSender sender ;
       
    @Override
	public void sendEmail(String message, String sendTo, String name) {
		 try {
	         final Message msg = MimeMessageUtils.createMessage(getSender().getDefaultFrom(), "Registration");
	         MimeMessageUtils.setRecipient(msg, Message.RecipientType.TO, sendTo);
	         ContentPart[] content = {
	                 new ContentPart("Hi"+name, "text/plain"),
	                 new ContentPart(message, "text/html")
	         };
	         MimeMessageUtils.setContent(msg, content);

	         final EmailEvent em = new EmailEvent(msg);
	         getSender().sendEmailEvent(em);

	         logDebug("Registraion email has been sent successfully !");

	     } catch (MessagingException | EmailException e) {
	     	logDebug("Error when sending registraion email !", e);
	     }		
		
	}
  

   
	

	/*

	public void deleteItem()
			throws IOException {
		// TODO Auto-generated method stub
		 try {
	            final Message msg = MimeMessageUtils.createMessage(getSender().getDefaultFrom(), "Registration");
	            MimeMessageUtils.setRecipient(msg, Message.RecipientType.TO, "malek1505@gmail.com");
	            ContentPart[] content = {
	                    new ContentPart("3aslemaa", "text/plain"),
	                    new ContentPart("<b>you  molka hahahaha.</b>", "text/html")
	            };
	            MimeMessageUtils.setContent(msg, content);

	            final EmailEvent em = new EmailEvent(msg);
	            getSender().sendEmailEvent(em);

	            logDebug("Registraion email has been sent successfully !");

	        } catch (MessagingException | EmailException e) {
	        	logDebug("Error when sending registraion email !", e);
	        }
	}*/

	/************************* Getters and Setters *************************/
    public SMTPEmailSender getSender() {
        return sender;
    }

    public void setSender(SMTPEmailSender sender) {
        this.sender = sender;
    }

	

}