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
   <dsp:importbean bean="/quickstart/properties/Person"/>
   <dsp:valueof bean="Person.name">  erreur </dsp:valueof>
   <dsp:setvalue bean="Person.age" value="1444" />
      <dsp:valueof bean="Person.age">  erreur </dsp:valueof> 
      <br>
      
      
      /*************** droplet **********************/
      <br>
      
      <dsp:droplet name="/atg/dynamo/droplet/ForEach">
         <dsp:param name="array" bean="Person.tab"/>    
         <dsp:oparam name="outputStart">
                    out put start 
                    <br>
         
         </dsp:oparam>  
         <dsp:oparam name="output">
            
              <dsp:valueof param="element"></dsp:valueof> from droplet  <br>
         </dsp:oparam>
           
          <dsp:oparam name="empty">
                empty array 
          </dsp:oparam>
      
      
      
      </dsp:droplet>
      
      
      <br>
      
      
      /************************ Switch *********************************/
      <br>
      <br>
      
      
      
      <dsp:droplet name="/atg/dynamo/droplet/Switch">
 <dsp:param name="value" bean="Person.language"/>
 <dsp:oparam name="fr">
     Display French content
</dsp:oparam>
 <dsp:oparam name="de">
   Display German content
</dsp:oparam>
 <dsp:oparam name="en">
   Display English content
</dsp:oparam>
 <dsp:oparam name="default">
   Display "default" content
 </dsp:oparam>
</dsp:droplet>
      
      
      
      
</body>
</html>
</dsp:page>