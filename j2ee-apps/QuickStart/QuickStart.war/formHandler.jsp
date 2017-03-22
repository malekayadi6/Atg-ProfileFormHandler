<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1" prefix="dsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<dsp:page>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<dsp:droplet name="/atg/dynamo/droplet/ErrorMessageForEach">

 <dsp:param name="exceptions" param="FormHandler.formExceptions"/>
 <dsp:oparam name="output">
  <b> <dsp:valueof param="message"></dsp:valueof> </b>
 </dsp:oparam>

</dsp:droplet>


<dsp:importbean bean="/quickstart/formHandlerProperties/FormHandler"/>

<dsp:form name="myForm" method="POST">
      Nom :    <dsp:input bean="FormHandler.fName" name="fName" type="text"></dsp:input> </br>
      Prenom : <dsp:input bean="FormHandler.sName" name="sName" type="text"></dsp:input> </br>
                  <dsp:input type="submit" value="ok" bean="FormHandler.submit"></dsp:input>  
                  <dsp:input bean="FormHandler.Cancel" type="reset" value="Cancel" ></dsp:input>
</dsp:form>

</body>
</html>
</dsp:page>