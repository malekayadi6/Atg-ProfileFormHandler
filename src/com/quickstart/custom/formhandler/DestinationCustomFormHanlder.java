package com.quickstart.custom.formhandler;

import java.io.IOException;

import javax.servlet.ServletException;

import com.quickstart.email.EmailSender;

import atg.repository.servlet.RepositoryFormHandler;
import atg.servlet.DynamoHttpServletRequest;
import atg.servlet.DynamoHttpServletResponse;

public class DestinationCustomFormHanlder extends RepositoryFormHandler {

	
	
    private EmailSender emailSender ;
	private final static String EMAIL="user.email";
	private final static String FIRST_NAME="user.firstName";
    
    
    
    
    
    
    
    
    
    
    
    
    
	@Override
	protected void postUpdateItem(DynamoHttpServletRequest pRequest, DynamoHttpServletResponse pResponse)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.postUpdateItem(pRequest, pResponse);
		emailSender.sendEmail("delete destination" ,(String) super.getValueProperty(EMAIL),(String)super.getValueProperty(FIRST_NAME));

	}
	public EmailSender getEmailSender() {
		return emailSender;
	}
	public void setEmailSender(EmailSender emailSender) {
		this.emailSender = emailSender;
	}
    
    
    
    
    
    
    

}
