<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1"
	prefix="dsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<dsp:page>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">

<style type="text/css">
.box-set {
	background: #eaeaed;
}

.box {
	float: left;

}
.dltbtn {

    width: auto;
    padding: 10px 18px;
    background-color: #f2f2f2;
    
}
</style>
</head>
<body>


<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler"/>

<dsp:valueof bean="ProfileFormHandler.value.firstName">cc</dsp:valueof>
 <div class="container">

        <div class="row" >
            <div class="col-lg-12">
                <div class="page-header">
               <h2>Show the driver's details</h2>
       <dsp:form method="post" class="box">
             <dsp:input bean="ProfileFormHandler.logout" type="submit" value="logout" class="dltbtn"/>
                          <dsp:input bean="ProfileFormHandler.value.firstName" type="text" />
             
             <dsp:input bean="ProfileFormHandler.logoutSuccessURL" type="hidden" value="login.jsp"/>      
             <dsp:input  bean="ProfileFormHandler.logoutErrorURL" type="hidden" value="login_failed.jsp"/>
       </dsp:form>
                </div>
                
 
 
             </div>
           
             <div class="col-md-3" style="padding-right: 100px">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i> Driver</h4>
                    </div>
                    <div class="panel-body">
                    <p>hello</p>
                  

	<dsp:getvalueof var="id" param="id" vartype="java.lang.String">

	</dsp:getvalueof>
	 <dsp:getvalueof var="userId" param="id" vartype="java.lang.String"></dsp:getvalueof>

					<dsp:importbean bean="/quickstart/ProfileFormHandler/UserProfileFormHandler"/>
	
		<dsp:importbean bean="/atg/dynamo/droplet/ItemLookupDroplet" />
		<dsp:setvalue bean="ItemLookupDroplet.useParams" value="true" />
		<dsp:droplet name="ItemLookupDroplet">
			<dsp:param name="id" value="${id }" />
			<dsp:param name="repository"
				bean="/atg/userprofiling/ProfileAdapterRepository" />
			<dsp:param name="itemDescriptor" value="user" />
			
			<dsp:oparam name="output">
			
                     first name :    <dsp:valueof param="element.firstName" />
				<br>
				
                     last name : <dsp:valueof param="element.lastName" />
				<br>
				<br>


				<dsp:valueof param="element.type" />
				<br>

				<dsp:valueof param="element.num" />
				<br>
				<dsp:a href="editUser.jsp"> Edit 
						 <dsp:param name="id" param="element.repositoryId" />

				</dsp:a>



 
       </div>
                    </div>
                    </div>
                    
			</dsp:oparam> 
  
			<dsp:droplet name="/atg/dynamo/droplet/ForEach">

				<dsp:param name="array" param="element.destinations" />
				<dsp:oparam name="outputStart">
				<dsp:importbean bean="/quickstart/RepositoryFormHanlder/userFormHandler"/>

					  <div class="col-md-3" style="padding-right: 100px">
                                   <div class="panel panel-default">
                                         <div class="panel-heading">
                                      <h4><i class="fa fa-fw fa-check"></i> Destination</h4>
                                        </div>
                                      <div class="panel-body">
                  

					 <dsp:a href="AddDestination.jsp"> ajouter destination
					<dsp:param name="id" value="${id }" />
					</dsp:a>
				</dsp:oparam>
				<dsp:oparam name="output">

					<b>destination </b> :  <dsp:valueof param="element.destinationCity" /> <br>
					
					<dsp:a href="editDestination.jsp"> Edit 
								 				 <dsp:param name="userId" param="element.user.repositoryId"/>
					
							 <dsp:param name="destinationId" param="element.repositoryId" />

					</dsp:a>
			 <dsp:form action="<%=request.getRequestURI()%>" method="post"> 
			                          <dsp:input type="hidden"  bean="UserProfileFormHandler.value.destinations.updateMode"  value="remove"/>
			        
                         <dsp:input type="hidden"  bean="UserProfileFormHandler.repositoryId"  paramvalue="element.repositoryId"/>
                         
                         <dsp:input bean="UserProfileFormHandler.delete" type="submit" value="delete" class="btn btn-danger"></dsp:input>
                         <dsp:input bean="UserProfileFormHandler.deleteSuccessURL" type="hidden" value="detailuser.jsp?id=${userId }"/>
           </dsp:form>
	
					<br>
                        

				</dsp:oparam>
				<dsp:oparam name="outputEnd">
   </div>
   </div>
   </div>

				</dsp:oparam>



			</dsp:droplet>
				 <br><br>
			<dsp:droplet name="/atg/dynamo/droplet/ForEach">
				<dsp:param name="array" param="element.accidents" />
				<dsp:oparam name="outputStart">
				<dsp:importbean bean="/quickstart/RepositoryFormHanlder/AccidentFormHandler"/>				
					  <div class="col-md-3" style="padding-right: 100px">
                                   <div class="panel panel-default">
                                         <div class="panel-heading">
                                      <h4><i class="fa fa-fw fa-check"></i> Accidents</h4>
                                        </div>
                                      <div class="panel-body">
				   <dsp:a href="addAccident.jsp"> ajouter accident
					<dsp:param name="id" value="${id }" />
					</dsp:a>
					<br>
				</dsp:oparam>
				<dsp:oparam name="output">

					<b> date accident </b>
					<dsp:valueof param="element.dateAccident" />
					<br>
					<b> description </b>
					<dsp:valueof param="element.description" />
					<br>
					<dsp:a href="editAccident.jsp"> Edit 
			 				 <dsp:param name="id" param="element.repositoryId" />
			 				 <dsp:param name="userId" param="element.user.repositoryId"/>
					</dsp:a>
					
					 <dsp:form action="<%=request.getRequestURI()%>" method="post">
        
                               <dsp:input type="hidden"  bean="AccidentFormHandler.repositoryId"  paramvalue="element.repositoryId"/>
                              <dsp:input bean="AccidentFormHandler.delete" type="submit" value="delete" class="btn btn-danger"></dsp:input>
                              <dsp:input bean="AccidentFormHandler.deleteSuccessURL" type="hidden" value="detailuser.jsp?id=${userId }"/>

                  </dsp:form>
                     <br>

				</dsp:oparam>
				<dsp:oparam name="outputEnd">
					</div>
					</div>
					</div>

				</dsp:oparam>



			</dsp:droplet>
								
			
			<dsp:droplet name="/atg/dynamo/droplet/ForEach">
				<dsp:param name="array" param="element.vehicules" />
				<dsp:oparam name="outputStart">
					  <div class="col-md-3" style="padding-right: 100px">
                                   <div class="panel panel-default">
                                         <div class="panel-heading">
                                      <h4><i class="fa fa-fw fa-check"></i> Vehicules</h4>
                                        </div>
                                      <div class="panel-body">
	   <dsp:a href="AddVehicule.jsp"> ajouter vehicule
					<dsp:param name="id" value="${id }" />
					</dsp:a>				</dsp:oparam>
				<dsp:oparam name="output">
					<b>num</b>
					<dsp:valueof param="element.num" />
					<br>
					<b>marque</b>
					<dsp:valueof param="element.mark" />
				
					<dsp:a href="editVehicule.jsp"> Edit 
					<dsp:param name="userId" param="element.user.repositoryId"/>
					
						 <dsp:param name="id" param="element.repositoryId" />
					</dsp:a>
			
				
       
                       <br>

				</dsp:oparam>
				<dsp:oparam name="outputEnd">
					</div>
					</div>
					</div>

				</dsp:oparam>



			</dsp:droplet>

		</dsp:droplet>

</div>
</div>



</body>
</html>
</dsp:page>