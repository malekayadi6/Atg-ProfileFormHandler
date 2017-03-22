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
<dsp:importbean bean="/quickstart/RepositoryFormHanlder/PersonFormHandler"/>
<dsp:form action="<%=request.getRequestURI()%>" method="post">
<dsp:input type="text" bean="PersonFormHandler.value.name"/>
<dsp:input type="text" bean="PersonFormHandler.value.age"/><br>
<dsp:input bean="PersonFormHandler.create" type="submit" value="ajouter"></dsp:input>

<dsp:input bean="PersonFormHandler.cancel" type="reset" value="Cancel"/>
<dsp:input
bean="PersonFormHandler.createSuccessURL" type="hidden" value="index.jsp"/>



</dsp:form>



<br> <br> <br> mm

<dsp:importbean bean="/quickstart/RepositoryFormHanlder/DriverFormHandler"/>
<dsp:form action="<%=request.getRequestURI()%>" method="post">
nom : <dsp:input type="text" bean="DriverFormHandler.value.nom"/><br>
prenom : <dsp:input type="text" bean="DriverFormHandler.value.prenom"/><br>
id :<dsp:input type="text" bean="DriverFormHandler.value.license.value.type"/><br>



<dsp:input bean="DriverFormHandler.create" type="submit" value="ajouterr"></dsp:input>

<dsp:input bean="DriverFormHandler.cancel" type="reset" value="Cancel"/>
<dsp:input bean="DriverFormHandler.createSuccessURL" type="hidden" value="index.jsp"/>

</dsp:form>

<dsp:importbean bean="/atg/dynamo/droplet/ItemLookupDroplet"/>
<dsp:setvalue bean="ItemLookupDroplet.useParams" value="true"/>
<dsp:droplet name="ItemLookupDroplet">
  <dsp:param name="id" value="1"/>
   <dsp:param name="MyRepository" bean="/quickstart/myRepository/MyRepository"/>
   <dsp:param name="itemDescriptor" value="driver"/>
     <dsp:oparam name="output">
       Name: <dsp:valueof param="element.nom"/><br>
Body: <dsp:valueof param="element.prenom">empty</dsp:valueof><br>
</dsp:oparam>
</dsp:droplet>

</body>
</html>
</dsp:page>