package com.quickstart;

import java.io.IOException;

import javax.servlet.ServletException;

import atg.droplet.DropletException;
import atg.droplet.GenericFormHandler;
import atg.repository.MutableRepository;
import atg.repository.MutableRepositoryItem;
import atg.repository.Repository;
import atg.repository.RepositoryException;
import atg.servlet.*;

public class FormHandler extends GenericFormHandler {
	private String fName,sName;
	private static String ERR_F_NOM ="le nom doit être supérieure 2 caractère ";
	private static String ERR_S_NOM ="le prenom doit être supérieure 2 caractère ";
	
	
	private Repository myRep;

	
	
	
	
	public Repository getMyRep() {
		return myRep;
	}




	public void setMyRep(Repository myRep) {
		this.myRep = myRep;
	}




	public Boolean handleSubmit(DynamoHttpServletRequest request,DynamoHttpServletResponse response) throws IOException{
		if(getfName().length()<2){
			addFormException(new DropletException(ERR_F_NOM));
			return true;
		}else{
			
		    try {
		    	MutableRepositoryItem item = ((MutableRepository)myRep).createItem("axeleate");
			    item.setPropertyValue("nom", fName);
			    item.setPropertyValue("prenom", sName);
			      // Persist to the repository
				((MutableRepository)myRep).addItem(item);
			} catch (RepositoryException e) {
				logError("Error",e);
			}
			response.sendLocalRedirect("index.jsp", request);
		}
		if(getsName().length()<2){
			addFormException(new DropletException(ERR_S_NOM));
			return true;
		}
			
		
		return false;
	}
		

	
	
	public boolean handleCancel(DynamoHttpServletRequest request,DynamoHttpServletResponse response) throws ServletException, IOException{

		       resetMyFormData();
		     return super.handleCancel(request, response);
		
	}
	public void resetMyFormData(){
		setfName(""); 
		setsName("");
	}
	
	
	
	
	
	
	

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}
	

}
