
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1"
  prefix="dsp"%>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />

<dsp:page>
<html lang="${language}">

<head>
  <title> Detial user</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  <link rel="stylesheet" href="css/bootstrap.min.css">
   <link rel="stylesheet" href="css/mycss.css">
 

</head>
<body>
  	<center>
</center>
<dsp:importbean bean="/quickstart/RepositoryFormHanlder/AccidentFormHandler"/>
<dsp:importbean bean="/quickstart/RepositoryFormHanlder/PoliceFineFormHandler"/>
<dsp:importbean bean="/quickstart/RepositoryFormHanlder/VehicleFormHandler"/>

<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler"/>



	<dsp:importbean bean="/atg/dynamo/droplet/Switch" />

<dsp:droplet name="Switch">
			<dsp:param bean="ProfileFormHandler.profile.transient" name="value" />
			<dsp:oparam name="true">
    <dsp:droplet name="/atg/dynamo/droplet/Redirect">
  <dsp:param name="url" value="login.jsp"/>
</dsp:droplet>
   </dsp:oparam>
 </dsp:droplet>
    <fmt:bundle basename="com.bundles.text">
    			 <fmt:message key="login.label.Welcome"  />
    
 </fmt:bundle>
   <fmt:bundle basename="com.bundles.text">
   	<form>
            <select id="language" name="language" onchange="submit()">
                <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
           
                <option value="fr" ${language == 'fr' ? 'selected' : ''}>Francais</option>
            </select>
        </form>
 
<div class="container">
<h1>

			 <fmt:message key="login.label.Welcome"  />
		 <dsp:valueof bean="ProfileFormHandler.value.firstName" /></h1>
</div>
<div class="container-fluid">
<div class="row">
 <div class="col-md-3">
    <form class="form-horizontal">
      <fieldset class="tab-content">
        <legend>Basic Details 
         <div class="editUser">
          <dsp:a href="editUser.jsp">
								<span  class="glyphicon glyphicon-edit btn btn-primary btn-xs"></span>
          </dsp:a>
        
       
       
          </div>
        </legend>
      
        
         <div class="con">
   
          <div class="form-group">
            <label class="col-md-4 control-label"><fmt:message key="FirstName" /></label>
            <div class="col-md-4">
              <h5>
                <dsp:valueof bean="ProfileFormHandler.value.firstName" />
              </h5>
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label"><fmt:message key="LastName" /></label>
            <div class="col-md-4">
              <h5>
                <dsp:valueof bean="ProfileFormHandler.value.lastName" />
              </h5>
            </div>
          </div>
             <div class="form-group">
            <label class="col-md-4 control-label">Email</label>
            <div class="col-md-4">
              <h5>
                <dsp:valueof bean="ProfileFormHandler.value.email" />
              </h5>
            </div>
          </div>
          </div>
          
  </fieldset>
<fieldset class="tab-content">
          <legend>Licence Details</legend>
   <div class="con">
             <div class="form-group">
               <label class="col-md-4 control-label">Licence Type</label>
                    <div class="col-md-4">
                          <h5> <dsp:valueof bean="ProfileFormHandler.value.type" /> </h5>
                    </div>
               </div>

          <div class="form-group">
            <label class="col-md-4 control-label">Licence Num</label>
            <div class="col-md-4">
              <h5><dsp:valueof bean="ProfileFormHandler.value.num" /> </h5>
            </div>
          </div>
   </div>

</fieldset>
</form>
</div>
<div class="col-md-8">
  <div id="exTab1" class="container"> 
     <ul  class="nav nav-pills">
       <li class="active"><a  href="#1a" data-toggle="tab">Destination</a> </li>
      <li><a href="#2a" data-toggle="tab">Accidents</a></li>
      <li><a href="#3a" data-toggle="tab">Vehicle</a> </li>
      <li><a href="#4a" data-toggle="tab">Police fine</a></li>
      <li class="logout">   
        <fmt:message key="Logout" var="buttonValueLogout" />     
           <dsp:form method="post" >     
                    <dsp:input bean="ProfileFormHandler.logout" type="submit"
                              class="glyphicon glyphicon-log-out btn btn-primary" value="${buttonValueLogout}"> </dsp:input>                             
                 <dsp:input bean="ProfileFormHandler.logoutSuccessURL" type="hidden" value="login.jsp"/>      
          </dsp:form>
      </li>
     </ul>

      <div class="tab-content clearfix">
          <div class="tab-pane active" id="1a">        
         <%-- destinations include --%>
          <dsp:include page="inc/destinations.jsp" flush="false"/>       
         </div>

        <div class="tab-pane" id="2a">
         <%-- accidents include --%>
           <dsp:include page="inc/accidents.jsp" flush="false"/>          
        </div>
        
        <div class="tab-pane" id="3a">
                 <%-- vehicles include --%>        
              <dsp:include page="inc/vehicles.jsp" flush="false"/>   
        </div>  <!-- tab-pane"-->
         <div class="tab-pane" id="4a">
                       <%-- policeFines include --%>
                    <dsp:include page="inc/policeFines.jsp" flush="false"/>      
         </div>
        </div><!-- tab-content clearfix-->

</div><!-- exTab1 contianer -->



</div><!-- col-md-8 -->


</div><!-- row -->
</div> <!-- container-fluid -->

</fmt:bundle>
<script
  src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
</dsp:page>




