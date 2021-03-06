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
		<dsp:setvalue bean="AccidentFormHandler.repositoryId" paramvalue="id"/>
		
	
<dsp:valueof bean="AccidentFormHandler.repositoryId"> empty</dsp:valueof>


		<div class="col-sm-9">
		<div class="row">
		<div class="col-sm-3">  </div>
		<div class="col-sm-9">
		<!-- column 2 -->	
       <h3><i class="glyphicon glyphicon-dashboard"></i> Edit Accident</h3>  
            
       <hr>

        <dsp:form action="<%=request.getRequestURI()%>" method="post">
        <div class="form-group">
            <label class="col-lg-3 control-label">Date : :</label>
            <div class="col-lg-8">
           <dsp:input type="text" bean="AccidentFormHandler.value.dateAccident" /><br>
           </div>
           </div>
           <div class="form-group">
            <label class="col-lg-3 control-label">Description :</label>
            <div class="col-lg-8">
          <dsp:input type="text" bean="AccidentFormHandler.value.description"/><br>
          </div>
          </div>
          
                   <dsp:input type="hidden" bean="AccidentFormHandler.value.user.repositoryId"/><br>
        
                   <dsp:input type="hidden"  bean="AccidentFormHandler.repositoryId"  paramvalue="id" name="id"/>
                   
		 <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
            <div class=" row spacing-row"></div>
                           <dsp:input bean="AccidentFormHandler.update" type="submit" value="update" class="btn btn-primary"></dsp:input>
                                  <dsp:input bean="AccidentFormHandler.cancel"  type="reset" class="btn btn-default" value="Cancel"/>
                   
                   </div>
             
       
  <dsp:input
bean="AccidentFormHandler.updateSuccessURL" type="hidden" value="detailUser.jsp"/>
      
  <dsp:input   bean="AccidentFormHandler.cancelSuccessURL" type="hidden" value="detailUser.jsp"/>


    </dsp:form>
    </div>
    </div>
    </div>
    

</body>
</html>
</dsp:page>