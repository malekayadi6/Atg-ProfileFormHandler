
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1"
  prefix="dsp"%>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<dsp:page>
<html lang="${language}">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler"/>
<dsp:importbean bean="/quickstart/RepositoryFormHanlder/VehicleFormHandler"/>


  <ul class="list-group">
            							<li style="padding-bottom: 20px" class="list-group-item text-muted "><i class="glyphicon glyphicon-tags"> vehicle Items </i>   
									 				<dsp:a href="../AddVehicule.jsp"> 
													 
									 	<button type="button" class="btn btn-info pull-right"  ><span  class="glyphicon glyphicon-plus-sign"></span></button></dsp:a></li>
              <dsp:droplet name="/atg/dynamo/droplet/ForEach">
        <dsp:param name="array" bean="ProfileFormHandler.value.vehicules" />
        <dsp:oparam name="outputStart">
            						
	
										<li class="list-group-item ">
								
								 <div class="spacing-row"></div>
								
								<div class="table-responsive">
			  					<table id="mytable" class="table table-bordred table-striped table-hover">
			  					<thead>
									<tr>
              <th>registration number</th>
              <th>mark</th>
              <th>Action</th>
            </tr>
              </thead>
              <tbody>
               </dsp:oparam>
               <dsp:oparam name="output">

               <tr onclick="input" data-toggle="modal"
                href="#the name for my modal windows">
                <td><dsp:valueof param="element.mat" /> </td>
                <td><dsp:valueof param="element.mark" /> </td>

                <td>
                  
          <dsp:a href="../editVehicule.jsp">
             <dsp:param name="id" param="element.repositoryId" />
              <p data-placement="top" data-toggle="tooltip" title="Edit">
									<button style="font-size: 18px" class="btn btn-primary btn-xs" data-title="Edit" > 
									<span  class="glyphicon glyphicon-edit"></span></button></p>
          </dsp:a>
               
                   
                 
                                    </td>
                                    <td>
                                    
					 <dsp:form action="<%=request.getRequestURI()%>" method="post">
        
                               <dsp:input type="hidden"  bean="VehicleFormHandler.repositoryId"  paramvalue="element.repositoryId"/>
                              <dsp:input bean="VehicleFormHandler.delete" type="submit" value="delete" class="btn btn-danger"></dsp:input>
                              <dsp:input bean="VehicleFormHandler.deleteSuccessURL" type="hidden" value="detailUser.jsp"/>

                  </dsp:form>
                                    </td>
               </tr>      
</dsp:oparam>
        <dsp:oparam name="outputEnd">
              </tbody>
           </table>
           </div>
           </li>
           </ul>
</dsp:oparam>
 <dsp:oparam name="empty">
          empty

        </dsp:oparam>



      </dsp:droplet>

</body>
</html>
</dsp:page>