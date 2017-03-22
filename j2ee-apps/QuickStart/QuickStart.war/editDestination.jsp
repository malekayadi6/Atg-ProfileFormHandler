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
</head>
<body>
<dsp:importbean bean="/quickstart/RepositoryFormHanlder/DestinationFormHandler"/>
  	    <dsp:getvalueof var="driverId" param="driverId" vartype="java.lang.String"></dsp:getvalueof>
  	    ${driverId }
  
		<dsp:setvalue bean="DestinationFormHandler.repositoryId" paramvalue="destinationId"/>
	
	
      <dsp:form action="<%=request.getRequestURI()%>" method="post">
         Destination  : <dsp:input type="text" bean="DestinationFormHandler.value.destinationCity"/><br>
        
             <dsp:input type="hidden"  bean="DestinationFormHandler.repositoryId" paramvalue="destinationId" />
           <dsp:input bean="DestinationFormHandler.update" type="submit" value="update" ></dsp:input>

            <dsp:input bean="DestinationFormHandler.cancel" type="reset" value="Cancel"/>
            <dsp:input bean="DestinationFormHandler.delete" type="submit" value="delete"></dsp:input>
<dsp:input
bean="DestinationFormHandler.updateSuccessURL" type="hidden" value="detailDriver.jsp?id=${driverId }"/>
<dsp:input
bean="DestinationFormHandler.deleteSuccessURL" type="hidden" value="detailDriver.jsp?id=${driverId }"/>
    </dsp:form>

</body>
</html>
</dsp:page>