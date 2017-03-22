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

<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler"/>



	<dsp:getvalueof var="idDriver" param="id" vartype="java.lang.String">

	</dsp:getvalueof>
<dsp:setvalue bean="ProfileFormHandler.extractDefaultValuesFromProfile"
value="true"/>
<dsp:setvalue bean="ProfileFormHandler.extractDefaultValuesFromProfile"
value="true"/>

 

		<div class="col-sm-9">
		<div class="row">
		<div class="col-sm-3">  </div>
		<div class="col-sm-9">
		<!-- column 2 -->	
       <h3><i class="glyphicon glyphicon-dashboard"></i> Add Destination</h3>  
            
       <hr>

	
      <dsp:form action="<%=request.getRequestURI()%>" method="post">
      			                          <dsp:input type="hidden"  bean="ProfileFormHandler.value.destinations.updateMode"  value="append"/>
      
		<div class="form-group">
            <label class="col-lg-3 control-label">destination</label>
            <div class="col-lg-8">
          <dsp:input type="text"
       bean="ProfileFormHandler.value.destinations[2].destinationCity"  value="rrtrtsde" />
       </div>
       </div>
<dsp:input type="hidden"
  bean="ProfileFormHandler.value.destinations.numNewValues" value="2"/>   
  
                        
		 <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
            <div class=" row spacing-row"></div>
               <dsp:input bean="ProfileFormHandler.update"  class="btn btn-primary" type="submit" value="Add " />
                <dsp:input bean="ProfileFormHandler.cancel" class="btn btn-default" type="submit" value="cancel"/>
                <dsp:input bean="ProfileFormHandler.updateSuccessURL" type="hidden" value="detailUser.jsp"/>
                </div>

    </dsp:form>
    
    </div>
    </div>
    </div>
    
  
</body>
</html>
</dsp:page>