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
<fmt:setBundle basename="com.Bundles" var="resourceBundle" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<dsp:page>
	<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler" />
	<dsp:importbean bean="/atg/userprofiling/Profile" />

	<!-------------------------------------------------------------
  Dynamusic Site Mockup
  
  UPDATE PROFILE
  
  Allows updating of an existing user profile
  
  ------------------------------------------------------------->
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
	class="form-horizontal" role="form" >
	
	<h2>
							<fmt:message key="passwordchange" />
						</h2>
	
	



<div class="form-group">
									<label for="oldpassword" class="col-sm-3 control-label">
									<fmt:message key="oldpassword" /></label>
									<div class="col-sm-9">
									<dsp:input bean="ProfileFormHandler.value.oldpassword" maxsize="30" size="30"
                                     type="password" />
											</div>
											</div>


		
							<div class="form-group">
									<label for="Newpassword" class="col-sm-3 control-label">			
								<fmt:message key="NewPassword" /></label>
									<div class="col-sm-9">
									<dsp:input bean="ProfileFormHandler.value.password" type="password"  maxsize="30" size="30"  />
								</div>
											</div>	



<div class="form-group">
									<label for="Newpassword" class="col-sm-3 control-label">			
								<fmt:message key="passwordConfirmation" /></label>
									<div class="col-sm-9">
									<dsp:input bean="ProfileFormHandler.value.confirmpassword" type="password"  maxsize="30" size="30"  />
								</div>
											</div>	




<div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                      <fmt:message key="SavePassword"
											var="buttonValue" />
										<dsp:input bean="ProfileFormHandler.changePassword" type="submit"
											value="${buttonValue}" class="btn btn-primary btn-block" />
                    </div>
                </div>

				
	
					</dsp:form> 
	</fmt:bundle>	
</BODY>
	</HTML>
</dsp:page>
