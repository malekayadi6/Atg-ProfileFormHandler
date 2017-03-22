package com.quickstart.custom.formhandler;

import com.quickstart.email.EmailSender;

import atg.repository.servlet.RepositoryFormHandler;

public class PoliceFineCustomFormHandler extends RepositoryFormHandler {
	private final static String EMAIL="user.email";
	private final static String FIRST_NAME="user.firstName";
	
	
    private EmailSender emailSender ;
    private String email;
    private String firstName;
}
