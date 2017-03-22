<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1"
	prefix="dsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<dsp:page>
<html lang="en">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Modern Business</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">

   


</head>

<body>


    <div class="container">

        <div class="row" >
            <div class="col-lg-12">
                <h1 class="page-header">
                Show the driver's details
                </h1>
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


	<dsp:importbean bean="/atg/dynamo/droplet/ItemLookupDroplet" />
	<dsp:setvalue bean="ItemLookupDroplet.useParams" value="true" />
	<dsp:droplet name="ItemLookupDroplet">
		<dsp:param name="id" value="${id }" />
    <dsp:param name="repository"
				bean="/atg/userprofiling/ProfileAdapterRepository" />
   <dsp:param name="itemDescriptor" value="user" />
	<dsp:oparam name="output">
			<div class="panel panel-default">
                    <div class="panel-heading">
                     first name :    <dsp:valueof
				param="element.firstName" />
			<br>
				
               last name: <dsp:valueof param="element.lastName" />
			<br>

			<h1>license</h1>
			<br>


			<dsp:valueof param="element.type" />
			<br>

			<dsp:valueof param="element.num" />
			<br>
			<dsp:a href="editDriver.jsp" class="btn btn-default"> Edit driver
						 <dsp:param name="id" param="element.repositoryId" />

			</dsp:a>
			</div></div>
		</dsp:oparam>                      
       </dsp:droplet>                 
                     
                    </div>
                </div>
            </div>
            <div class="col-md-3" >
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i> Destinations</h4>
                    </div>
                    <div class="panel-body">
                    
	<dsp:getvalueof var="id" param="id" vartype="java.lang.String">

	</dsp:getvalueof>


	<dsp:importbean bean="/atg/dynamo/droplet/ItemLookupDroplet" />
	<dsp:setvalue bean="ItemLookupDroplet.useParams" value="true" />
	<dsp:droplet name="ItemLookupDroplet">
		<dsp:param name="id" value="${id }" />
		<dsp:param name="repository" bean="/quickstart/repository/NewRep" />
		<dsp:param name="itemDescriptor" value="driver" />
        <dsp:oparam name="output">
			
		</dsp:oparam> 

		<dsp:importbean
			bean="/quickstart/RepositoryFormHanlder/DestinationFormHandle" />

		<dsp:droplet name="/atg/dynamo/droplet/ForEach">

			<dsp:param name="array" param="element.destinations" />
			<dsp:oparam name="outputStart">
            
			</dsp:oparam>
			<dsp:oparam name="output">

				<b>destination </b> :  <dsp:valueof param="element.destinationCity" />

				<dsp:a href="editDestination.jsp" class="btn btn-default"> Edit 
							 <dsp:param name="id" param="element.repositoryId" />


				</dsp:a>


					<dsp:getvalueof var="destID" param="element.repositoryId" vartype="java.lang.String"></dsp:getvalueof>
	             
	             <dsp:getvalueof var="driverId" param="id" vartype="java.lang.String"></dsp:getvalueof>
	
				<dsp:setvalue bean="DestinationFormHandler.repositoryId"
					paramvalue="destinationId" />
				<dsp:form action="<%=request.getRequestURI()%>" method="post"  style="padding-left:120px" >

					<dsp:input type="hidden" bean="DestinationFormHandler.repositoryId"
						paramvalue="element.repositoryId" />
					<dsp:input class="btn btn-default" bean="DestinationFormHandler.delete" type="submit"
						value="delete"></dsp:input>
					<dsp:input bean="DestinationFormHandler.deleteSuccessURL"
						type="hidden"
						value="detailDriver.jsp?idD=${driverId }" />
				</dsp:form>

					<br>
					
					
						
                     <br>   

				</dsp:oparam>
				<dsp:oparam name="outputEnd">
				
					

				</dsp:oparam>
			
		</dsp:droplet>



			</dsp:droplet>
			
		
		
		
			
                    </div>
                </div>
            </div>
            
        
           <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i> Cars</h4>
                    </div>
                    <div class="panel-body">
                    
	<dsp:getvalueof var="id" param="id" vartype="java.lang.String">

	</dsp:getvalueof>


	<dsp:importbean bean="/atg/dynamo/droplet/ItemLookupDroplet" />
	<dsp:setvalue bean="ItemLookupDroplet.useParams" value="true" />
	<dsp:droplet name="ItemLookupDroplet">
		<dsp:param name="id" value="${id }" />
		<dsp:param name="repository" bean="/quickstart/repository/NewRep" />
		<dsp:param name="itemDescriptor" value="driver" />
        <dsp:oparam name="output">
			
		</dsp:oparam> 
<dsp:importbean
			bean="/quickstart/RepositoryFormHanlder/VehiculeFormHandler" />
			<dsp:droplet name="/atg/dynamo/droplet/ForEach">
				<dsp:param name="array" param="element.vehicules" />
				<dsp:oparam name="outputStart">
                                
                     
				</dsp:oparam>
				<dsp:oparam name="output">
					<b>matricule</b>
					<dsp:valueof param="element.mat" />
					<br>
					<b>marque</b>
					<dsp:valueof param="element.mark" />
					<br>
					<dsp:a href="editVehicule.jsp" class="btn btn-default"> Edit 
					
						 <dsp:param name="id" param="element.repositoryId" />
					</dsp:a>
                       <br>
                       <dsp:getvalueof var="id" param="element.repositoryId" vartype="java.lang.String"></dsp:getvalueof>
	             
<%-- 	             <dsp:getvalueof var="driverId" param="id" vartype="java.lang.String"></dsp:getvalueof> --%>
	
				
				<dsp:form  method="post">

					<dsp:input type="hidden" bean="VehiculeFormHandler.repositoryId"
						paramvalue="element.repositoryId" />
					<dsp:input bean="VehiculeFormHandler.delete" type="submit"
						value="delete" class="btn btn-default"></dsp:input>
					<dsp:input bean="VehiculeFormHandler.deleteSuccessURL"
						type="hidden"
						value="affichage.jsp" />
				</dsp:form>

					<br>

				</dsp:oparam>
		

					
				<dsp:oparam name="outputEnd">
				

				</dsp:oparam>
			
		</dsp:droplet>



			</dsp:droplet>
			
		
			
					
	
		
			
                    </div>
                </div>
            </div>
            
            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i> Accidents</h4>
                    </div>
                    <div class="panel-body">
                    
	<dsp:getvalueof var="id" param="id" vartype="java.lang.String">

	</dsp:getvalueof>


	<dsp:importbean bean="/atg/dynamo/droplet/ItemLookupDroplet" />
	<dsp:setvalue bean="ItemLookupDroplet.useParams" value="true" />
	<dsp:droplet name="ItemLookupDroplet">
		<dsp:param name="id" value="${id }" />
		<dsp:param name="repository" bean="/quickstart/repository/NewRep" />
		<dsp:param name="itemDescriptor" value="driver" />
        <dsp:oparam name="output">
			
		</dsp:oparam> 

					
				<dsp:importbean
			bean="/quickstart/RepositoryFormHanlder/AccidentFormHandler" />
		<dsp:droplet name="/atg/dynamo/droplet/ForEach">
				<dsp:param name="array" param="element.accidents" />
				<dsp:oparam name="outputStart">
         
					
				</dsp:oparam>
				<dsp:oparam name="output">

					<b> date accident </b>
					<dsp:valueof param="element.dateAccident" />
					<br>

					<b> description </b>
					<dsp:valueof param="element.description" />
					<br>
					<dsp:a href="editAccident.jsp" class="btn btn-default"> Edit 
			 				 <dsp:param name="id" param="element.repositoryId" />
					</dsp:a>
                     <br>
                     
                     <dsp:getvalueof var="accID" param="element.repositoryId" vartype="java.lang.String"></dsp:getvalueof>
	             
	             <dsp:getvalueof var="driverId" param="id" vartype="java.lang.String"></dsp:getvalueof>
	
				
				<dsp:form action="<%=request.getRequestURI()%>" method="post">

					<dsp:input type="hidden" bean="AccidentFormHandler.repositoryId"
						paramvalue="element.repositoryId" />
					<dsp:input bean="AccidentFormHandler.delete" type="submit"
						value="delete" class="btn btn-default"></dsp:input>
					<dsp:input bean="AccidentFormHandler.deleteSuccessURL"
						type="hidden"
						value="successDeleteAccident.jsp" />
				</dsp:form>

					<br>
						
                     <br>   

				</dsp:oparam>
				<dsp:oparam name="outputEnd">
				
				</dsp:oparam>

				
		</dsp:droplet>



			</dsp:droplet>
			
		
			
					
	
		
			
                    </div>
                </div>
            </div>
            
       
        <hr>

         <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row" >
             <div class="col-lg-20">
        <div class="well">
            <div class="row" style="padding-left: 240px">
              
                <div class="col-md-4">
                    <a class="btn btn-lg btn-default btn-block" href="affichage.jsp">Go back</a>
                </div>
            </div>
        </div>
        </div>

        <hr>

        <!-- Footer -->
        <footer >
            <div class="row" style="padding-right: 300px" >
                <div class="col-lg-12">
                    <p > Copyright &copy; Malek  2017</p>
                </div>
            </div>
        </footer>

    </div>

 
</body>

</html>
</dsp:page>
