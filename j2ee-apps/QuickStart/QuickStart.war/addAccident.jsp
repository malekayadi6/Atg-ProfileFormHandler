<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1"
	prefix="dsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<dsp:page>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/mycss.css">
</head>
<body>
<dsp:importbean bean="/quickstart/RepositoryFormHanlder/AccidentFormHandler"/>
<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler"/>



	
	
		<div class="col-sm-9">
		<div class="row">
		<div class="col-sm-3">  </div>
		<div class="col-sm-9">
		<!-- column 2 -->	
       <h3><i class="glyphicon glyphicon-dashboard"></i> Add Accident</h3>  
            
       <hr>
	
      <dsp:form action="<%=request.getRequestURI()%>" method="post">
          <div class="form-group">
            <label class="col-lg-3 control-label">Date :</label>
            <div class="col-lg-8">
           <dsp:input type="text" bean="AccidentFormHandler.value.dateAccident"/>
           </div>
           </div>
 <div class="form-group">
            <label class="col-lg-3 control-label">Description :</label>
            <div class="col-lg-8">
 <dsp:input type="text" bean="AccidentFormHandler.value.description"/><br>
          </div>
                       </div> 
                        <dsp:input type="hidden" bean="AccidentFormHandler.value.user.repositoryId" beanvalue="ProfileFormHandler.repositoryId" />
                        <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
           <dsp:input bean="AccidentFormHandler.create" type="submit" value="Add "  class="btn btn-primary"/>
            <dsp:input bean="AccidentFormHandler.cancel" type="reset" value="Cancel" class="btn btn-primary"/>
            <dsp:input bean="AccidentFormHandler.createSuccessURL" type="hidden" value="detailUser.jsp"/>

    </dsp:form>
    
     </div></div></div>

 
 
 
 
 
 
 
 
 
 
 
 <%-- 	${idUser}
      <dsp:form action="<%=request.getRequestURI()%>" method="post">
      <div class="form-group">
      
       <label class="col-lg-3 control-label">Date :</label>
       <div class="col-lg-8">
          <dsp:input type="text" bean="ProfileFormHandler.value.accidents" beanvalue=""/><br>
            </div>
          </div>
           <div class="form-group">
                       <label class="col-lg-3 control-label">Description :</label>
       <dsp:input type="text" bean="ProfileFormHandler.value.accidents" beanvalue=""/><br>
         <dsp:input type="hidden"
   bean="ProfileFormHandler.value.accidents.updateMode" value="append"/>
                        <dsp:input type="text" bean="ProfileFormHandler.value.accidents.repositoryIds" beanvalue="ProfileFormHandler.repositoryId" />
                        
           <dsp:input bean="ProfileFormHandler.update" type="submit" value="Add " />
            <dsp:input bean="ProfileFormHandler.cancel" type="reset" value="Cancel"/>
            <dsp:input bean="ProfileFormHandler.createSuccessURL" type="hidden" value="detailUser.jsp"/>

    </dsp:form> --%>
</body>
</html>
</dsp:page>