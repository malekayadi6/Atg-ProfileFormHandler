package com.quickstart.email;

import atg.userprofiling.email.TemplateEmailException;
import atg.userprofiling.email.TemplateEmailInfoImpl;
import atg.userprofiling.email.TemplateEmailSender;

/**
 * This component contain method to send mail with ATG service mail  
 * Copyright (C) Axeleate Services. - www.acceleate.com
 * @Date        Oct 10, 2016  4:44:09 PM
 * @Project	AxeleateCommerce
 * @author      Sadok Limam - slimam@acceleate.com
 * @File 	atg.userprofiling.email/EmailAFriendEmailSender.java
 */
public class EmailAFriendEmailSender extends TemplateEmailInfoImpl {

    private static final long serialVersionUID = -920949517640119794L;
    private TemplateEmailSender emailSender; 
   

    /**
     * @param Recipient
     */
    public void sendEmail() {
	String pRecipients[] = {"jawherkodhai91@gmail.com"} ;
	try {
	    getEmailSender().sendEmailMessage(this, pRecipients);
	    vlogInfo(" success !" );
	} catch (TemplateEmailException e) {
	    logInfo("the mail deosn't send",e);
	}
    }
    
    

    /**
     * @return
     */
    public TemplateEmailSender getEmailSender() {
	return emailSender;
    }

    
     
	/**
     * @param emailSender
     */
    public void setEmailSender(TemplateEmailSender emailSender) {
	this.emailSender = emailSender;
    }

}