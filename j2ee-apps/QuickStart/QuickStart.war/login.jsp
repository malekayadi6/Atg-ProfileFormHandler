<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ taglib uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1"
	prefix="dsp"%>



<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="com.bundles" var="resourceBundle" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<dsp:page>

<HTML lang="${language}">
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<TITLE>login Form</TITLE>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
.wrapper {    
	margin-top: 80px;
	margin-bottom: 20px;
}

.form-signin {
  max-width: 420px;
  padding: 30px 38px 66px;
  margin: 0 auto;
  background-color: #eee;
  border: 3px dotted rgba(0,0,0,0.1);  
  }

.form-signin-heading {
  text-align:center;
  margin-bottom: 30px;
}

.form-control {
  position: relative;
  font-size: 16px;
  height: auto;
  padding: 10px;
}

input[type="text"] {
  margin-bottom: 0px;
  border-bottom-left-radius: 0;
  border-bottom-right-radius: 0;
}

input[type="password"] {
  margin-bottom: 20px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}

.colorgraph {
  height: 7px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
</style>
</HEAD>
<body>
<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler"/>

	<dsp:importbean bean="/atg/dynamo/droplet/Switch" />


<dsp:droplet name="Switch">
			<dsp:param bean="ProfileFormHandler.profile.transient" name="value" />
			<dsp:oparam name="false">
    <dsp:droplet name="/atg/dynamo/droplet/Redirect">
  <dsp:param name="url" value="detailUser.jsp"/>
</dsp:droplet>
   </dsp:oparam>
 </dsp:droplet>


<fmt:bundle basename="com.bundles.text">

            
      
<div class = "container">

	<div class="wrapper">
	<center>
	<form>
            <select id="language" name="language" onchange="submit()">
                <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
           
                <option value="fr" ${language == 'fr' ? 'selected' : ''}>Francais</option>
            </select>
        </form></center>
	
		<dsp:form method="post" name="Login_Form" class="form-signin"  action="detailUser.jsp" >   
		   
		
	
           
		    <h3 class="form-signin-heading"><h1 class="text" id="welcome">
			 <label for="Welcome"><fmt:message key="login.label.Welcome"  /></label>  
		</h1></h3>
		
		
			  <hr class="colorgraph"><br>
			
			 <label for="username"><fmt:message key="login.label.username"  />:</label> 
			 
			  <dsp:input type="text" class="form-control" name="Username"   bean="/atg/userprofiling/ProfileFormHandler.value.login" />
			    <label for="password"><fmt:message key="login.label.password"  />:</label>
			  <dsp:input type="password" class="form-control" name="Password"  bean="/atg/userprofiling/ProfileFormHandler.value.password"/>     		  
			 
			 
			 
			 
			    <dsp:droplet name="/atg/dynamo/droplet/ErrorMessageForEach">
				<dsp:oparam name="output">
					<li><strong><span style="color: red;"><dsp:valueof param="message" /></span></strong></li>
				</dsp:oparam>
				<dsp:oparam name="outputStart">

				</dsp:oparam>
				<dsp:oparam name="outputEnd">

				</dsp:oparam>
			</dsp:droplet> 
			 
			 <dsp:input
				bean="/atg/userprofiling/ProfileFormHandler.loginSuccessURL"
				type="hidden" value="detailUser.jsp" />
			 <fmt:message key="login.button.submit" var="buttonValue" />
			<dsp:input class="btn btn-lg btn-primary btn-block" bean="/atg/userprofiling/ProfileFormHandler.login"
				type="Submit" value="${buttonValue}" />
			 
			 
			 
			 <div> <center><dsp:a href="registration.jsp"> <label for="register">
			 <fmt:message key="login.label.register"  /></label> </dsp:a> </center></div>
			  	
		</dsp:form>	
				
	</div>
</div>
		
	</fmt:bundle>	
</BODY>
	</HTML>
</dsp:page>