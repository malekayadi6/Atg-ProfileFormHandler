<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1"
	prefix="dsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="atg.servlet.*"%>
<c:set var="language"
	value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
	scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="com.bundles" var="resourceBundle" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<dsp:page>
	<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler" />
	<dsp:importbean bean="/atg/userprofiling/Profile" />

	<HTML>
<HEAD>
<TITLE>Registration Form</TITLE>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
body {
	background-color: #eee;
}

*[role="form"] {
	max-width: 530px;
	padding: 15px;
	margin: 0 auto;
	background-color: #fff;
	border-radius: 0.3em;
}

*[role="form"] h2 {
	margin-left: 5em;
	margin-bottom: 1em;
}
</style>
</HEAD>
<BODY>
<fmt:bundle basename="com.bundles.text">
	<dsp:form  method="post"
	class="form-horizontal" role="form" action="detailUser.jsp">
		<h2> <fmt:message key="Modification" />	</h2>
					
	
	
	
		<div class="form-group">
									 
									 <label for="firstName" class="col-sm-3 control-label">
									<fmt:message key="FirstName" /></label>
									<div class="col-sm-9">
									<dsp:input bean="ProfileFormHandler.value.firstName"
											maxsize="30" size="30" type="text" />
											</div>
											</div>
	
	
									
							<div class="form-group">
									<label for="lastName" class="col-sm-3 control-label">			
								<fmt:message key="LastName" /></label>
									<div class="col-sm-9">
									<dsp:input bean="ProfileFormHandler.value.lastName"
											maxsize="30" size="30" type="text" /></td>
								</div>
											</div>			
									
									
									

	
								
 
 
 							
				  <div class="form-group">
                    <label class="control-label col-sm-3"><fmt:message key="Gender" /></label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <dsp:input
											bean="ProfileFormHandler.value.gender" type="radio"
											value="female" />
										<fmt:message key="female" />
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                   <dsp:input bean="ProfileFormHandler.value.gender"
											type="radio" value="male" /><fmt:message key="Male" />
                                </label>
                            </div>
                          
                        </div>
                    </div>
                </div>
                
                
                
                <div class="form-group">
									<label for="email" class="col-sm-3 control-label">Email</label>
									<div class="col-sm-9">
								<dsp:input bean="ProfileFormHandler.value.email"
											maxsize="30" size="30" type="text" />
								</div>
								</div>
								
								
                
                
                
                	<div class="form-group">
									<label for="Motdepasse" class="col-sm-3 control-label">
									<fmt:message key="login.label.password" /></label>
									<div class="col-sm-9">
									<dsp:a href="editPassword.jsp">
								<span  class="glyphicon glyphicon-edit btn btn-primary btn-xs"></span>
                                           </dsp:a>

											</div>
											</div>
											
					
							<div class="form-group">
									<label for="License" class="col-sm-3 control-label">License:</label>	
						<div class="col-sm-9">
						 <div class="row">
                            <div class="col-sm-3">
                              
											<dsp:select bean="ProfileFormHandler.value.type" 
                                                       nodefault="true" priority="10">
                                                         <dsp:option value="Type A">Type A</dsp:option>
                                                         <dsp:option value="Type B">Type B</dsp:option>
                                                         <dsp:option value="Type C">Type C</dsp:option>
                                                         
                                                       
                                                       
                                                       </dsp:select>
                            </div>
                          
                              		
									<label for="num" class="col-sm-3 control-label">Num</label>
							 <div class="col-sm-3">
									
									<dsp:input bean="ProfileFormHandler.value.num"
											maxsize="30" size="20" type="text" /> 
                            </div> <div class="col-sm-3"></div>
                            
                        </div><!--  row -->
                        </div>
                
                


<div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                      <fmt:message key="Update"
											var="buttonValue" />
										<dsp:input bean="ProfileFormHandler.update" type="submit"
											value="${buttonValue}" class="btn btn-primary btn-block" />
                    </div>
                </div>



  

	
					</dsp:form> 
	</fmt:bundle>	
</BODY>
	</HTML>
</dsp:page>
