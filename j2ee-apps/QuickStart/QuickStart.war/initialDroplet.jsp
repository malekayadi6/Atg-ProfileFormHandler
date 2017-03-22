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
 
  
  <dsp:droplet name="/quickstart/dropletsProperties/SimpleServlet">
       
        <dsp:oparam name="aff">
         <H1>  affichage  </H1>
         <dsp:valueof param="key"> empty </dsp:valueof>       
        </dsp:oparam>  
          <dsp:oparam name="aff2">
         <H1>  affichage  </H1>
         <dsp:valueof param="key2"> empty2 </dsp:valueof>       
        </dsp:oparam> 
  </dsp:droplet>

</body>
</html>
</dsp:page>