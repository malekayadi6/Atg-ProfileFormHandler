package com.quickstart.custom.formhandler;

import java.io.IOException;

import javax.servlet.ServletException;

import com.quickstart.email.EmailSender;

import atg.repository.servlet.RepositoryFormHandler;
import atg.service.email.SMTPEmailSender;
import atg.servlet.DynamoHttpServletRequest;
import atg.servlet.DynamoHttpServletResponse;

public class AccidentCustomFormHandler extends RepositoryFormHandler{
	private final static String EMAIL="user.email";
	private final static String FIRST_NAME="user.firstName";
	
	
    private EmailSender emailSender ;
    private String email;
    private String firstName;

	@Override
	protected void postDeleteItem(DynamoHttpServletRequest pRequest, DynamoHttpServletResponse pResponse)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.postDeleteItem(pRequest, pResponse);
		emailSender.sendEmail("delete accident" ,email,firstName);
	}

	@Override
	protected void preDeleteItem(DynamoHttpServletRequest pRequest, DynamoHttpServletResponse pResponse)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.preDeleteItem(pRequest, pResponse);
		this.email=(String) super.getValueProperty(EMAIL);
		this.firstName=(String) super.getValueProperty(FIRST_NAME);
	}
	
	
	
	
	
	
	

	@Override
	protected void postUpdateItem(DynamoHttpServletRequest pRequest, DynamoHttpServletResponse pResponse)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.postUpdateItem(pRequest, pResponse);
		this.email=(String) super.getValueProperty(EMAIL);
		this.firstName=(String) super.getValueProperty(FIRST_NAME);
		emailSender.sendEmail("update accident" ,email,firstName);
	}

	@Override
	protected void preUpdateItem(DynamoHttpServletRequest pRequest, DynamoHttpServletResponse pResponse)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.preUpdateItem(pRequest, pResponse);
	}

	public EmailSender getEmailSender() {
		return emailSender;
	}

	public void setEmailSender(EmailSender emailSender) {
		this.emailSender = emailSender;
	}
    
    
    
    
    
    
    

}
