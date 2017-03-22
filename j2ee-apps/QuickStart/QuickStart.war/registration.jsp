<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1"
	prefix="dsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="atg.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="language"
	value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
	scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="com.Bundles" var="resourceBundle" />
<dsp:page>

	<HTML lang="${language}">
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

<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler" />
<dsp:importbean bean="/atg/userprofiling/ProfileErrorMessageForEach" />
<dsp:importbean bean="/atg/dynamo/droplet/Switch" />
<dsp:importbean bean="/atg/dynamo/droplet/ForEach" />

<%-- The next line sets the Profile Form Handler's extractDefaultValuesFromProfile
     property to false, to ensure that the fields in the form are blank when the
     user accesses the page.  --%>
<dsp:setvalue bean="ProfileFormHandler.extractDefaultValuesFromProfile"
	value="false" />

<BODY>


	<div class="container">

		<fmt:bundle basename="com.bundles.text">
			
		<dsp:droplet name="Switch">
			<dsp:param bean="ProfileFormHandler.profile.transient" name="value" />
			<dsp:oparam name="false">
			false
			 <dsp:droplet name="/atg/dynamo/droplet/Redirect">
                 <dsp:param name="url" value="detailUser.jsp"/>
             </dsp:droplet> 
	 	</dsp:oparam>
             

				<dsp:oparam name="default">

					

					<dsp:form class="form-horizontal" role="form" action="registration.jsp"
						method="post">


						<dsp:input bean="ProfileFormHandler.createSuccessURL"
							type="hidden" value="detailUser.jsp" />

						<dsp:input bean="ProfileFormHandler.confirmPassword" type="hidden"
							value="true" />

						<h2>
							<fmt:message key="Register" />
						</h2>


						<dsp:droplet name="Switch">
							<dsp:param bean="ProfileFormHandler.formError" name="value" />
							<dsp:oparam name="true">
								<UL>
									<dsp:droplet name="ProfileErrorMessageForEach">
										<dsp:param bean="ProfileFormHandler.formExceptions"
											name="exceptions" />
										<dsp:oparam name="output">
											<LI><dsp:valueof param="message" /></LI>
											 </p>
										</dsp:oparam>
									</dsp:droplet>
								</UL>
							</dsp:oparam>
						</dsp:droplet>


						<dsp:input bean="ProfileFormHandler.value.member" type="hidden"
							value="true" />


						<div class="form-group">
							<label for="firstName" class="col-sm-3 control-label"> 
							<fmt:message key="login.label.username" /></label>
									
							<div class="col-sm-9">
								<dsp:input bean="ProfileFormHandler.value.login" maxsize="20"
									size="30" type="text" />
							</div>
						</div>



						<div class="form-group">
							<label for="password" class="col-sm-3 control-label"> 
							<fmt:message key="login.label.password" /></label>
									
								<div class="col-sm-9">
								<dsp:input bean="ProfileFormHandler.value.password"
										maxsize="30" size="30" type="password" /></div>
						</div>






						<div class="form-group">
							<label for="passwordConfirmation" class="col-sm-3 control-label"> 	
							<fmt:message key="passwordConfirmation" /></label>
									<div class="col-sm-9">
									<dsp:input
											bean="ProfileFormHandler.value.confirmpassword" maxsize="35"
											size="30" type="password" />
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
                    <div class="col-sm-9 col-sm-offset-3">
                      <fmt:message key="login.button.submit"
											var="buttonValue" />
										<dsp:input bean="ProfileFormHandler.create" type="submit"
											value="${buttonValue}" class="btn btn-primary btn-block" />
                    </div>
                     
			 <div> <center><dsp:a href="login.jsp"> <label for="register">
			 Login <%-- <fmt:message key="login.label.register"  />--%></label> </dsp:a> </center></div>
			  	
                </div>
							
		
			
							
											
	
										
								
									
									
						
					</dsp:form>
				</dsp:oparam>
			</dsp:droplet>
		</fmt:bundle>
		</div>
</BODY>
	</HTML>
</dsp:page>