
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

<dsp:importbean bean="/quickstart/RepositoryFormHanlder/VehicleFormHandler"/>
<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler"/>


		<div class="col-sm-9">
		<div class="row">
		<div class="col-sm-3">  </div>
		<div class="col-sm-9">
		<!-- column 2 -->	
       <h3><i class="glyphicon glyphicon-dashboard"></i> Add vehicule</h3>  
            
       <hr>


	<dsp:form  method="post"  >
	
		<div class="form-group">
            <label class="col-lg-3 control-label">Vehicle Registration Number :</label>
            <div class="col-lg-8">
               <dsp:input class="form-control"  type="text" bean="VehicleFormHandler.value.mat"/>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-lg-3 control-label">Brand vehicle :</label>
            <div class="col-lg-8">
               <dsp:input class="form-control"  type="text"  bean="VehicleFormHandler.value.mark" />
            </div>
          </div>
          
		
		
        <dsp:input bean="VehicleFormHandler.value.users.repositoryIds" type="hidden" beanvalue="ProfileFormHandler.repositoryId"  />
		
	
				
		
		
		 <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
            <div class=" row spacing-row"></div>
              <dsp:input bean="VehicleFormHandler.create" type="submit" class="btn btn-primary" value="Add Vehicule" />
               <dsp:input bean="VehicleFormHandler.cancel"  type="reset" class="btn btn-default" value="Cancel"/>
               <dsp:input bean="VehicleFormHandler.createSuccessURL" type="hidden" value="detailUser.jsp"/>
            </div>
		
        
	</dsp:form>


</body>
</html>
</dsp:page>





