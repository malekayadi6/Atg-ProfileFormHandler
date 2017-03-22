<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1"
	prefix="dsp"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<dsp:page>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.cancelbtn {
    float: left;

    width: auto;
    padding: 10px 18px;
    background-color: #f2f2f2;
    
}
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

.center {
	text-align: center;
}

.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
	margin: 0 4px;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border: 1px solid #4CAF50;
}

.pagination a:hover:not (.active ) {
	background-color: #ddd;
}
</style>
</head>
						<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler"/>


      <dsp:form method="post">
       <dsp:input bean="ProfileFormHandler.logout" type="submit" value="logout" class="cancelbtn"/>
             <dsp:input bean="ProfileFormHandler.logoutSuccessURL" type="hidden" value="login.jsp"/>
      
      <dsp:input  bean="ProfileFormHandler.logoutErrorURL" type="hidden" value="login_failed.jsp"/>
    </dsp:form>

	<table>
						<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler"/>

		<dsp:droplet name="/atg/dynamo/droplet/RQLQueryRange">
			<dsp:param name="queryRQL" value="all" />
			<dsp:param name="repository"
				value="/atg/userprofiling/ProfileAdapterRepository" />
			<dsp:param name="itemDescriptor" value="user" />
			<dsp:param name="howMany" value="3" />
			<dsp:getvalueof var="pr" param="index" vartype="java.lang.Integer" />
			

			<dsp:oparam name="output">

				<tr>
					<td><dsp:valueof param="element.firstName"></dsp:valueof></td>
					<td><dsp:valueof param="element.lastName" /></td>
										<td><dsp:valueof param="element.email" /></td>
					
					<td><dsp:a href="detailDriver.jsp" >
						Detail 
						    <dsp:param name="id" param="element.repositoryId"/>
						</dsp:a>
						</td>
						<td>
						
	
      <dsp:form action="<%=request.getRequestURI()%>" method="post">
        
             <dsp:input type="text"  bean="ProfileFormHandler.repositoryId" paramvalue="element.repositoryId" />
            
            <dsp:input bean="ProfileFormHandler.delete" type="submit" value="delete"></dsp:input>
               <dsp:input bean="ProfileFormHandler.deleteSuccessURL" type="hidden" value="affichage.jsp"/>

    </dsp:form>
						</td>
				</tr>
				
			</dsp:oparam>
			<dsp:oparam name="outputStart">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th> Email </th>
				</tr>
			</dsp:oparam>
			<dsp:oparam name="outputEnd">
	</table>
								<dsp:getvalueof var="pr" param="size" vartype="java.lang.Integer" />
	
	<div class="center">
		<div class="pagination">
			<dsp:droplet name="/atg/dynamo/droplet/Switch">
				<dsp:param name="value" param="hasPrev" />
				<dsp:oparam name="true">
					<dsp:getvalueof var="a27" bean="/OriginatingRequest.pathInfo"
						idtype="java.lang.String">
						<dsp:a href="${a27}">
							<dsp:param name="start" param="prevStart" />
                                   &laquo; 
                                  </dsp:a>
					</dsp:getvalueof>
				</dsp:oparam>
			</dsp:droplet>
			prrr${pr }
			<dsp:getvalueof var="idx" param="count" vartype="java.lang.Integer" />
			${idx }
			
			<dsp:getvalueof var="a27" bean="/OriginatingRequest.pathInfo"
				idtype="java.lang.String"/>
				
				
               <c:forEach var="i" begin="1" end="6" step="1">
                <c:set var="idx" value="${idx}"></c:set> 
              
               <dsp:a href="${a46}">
				<dsp:param name="start" value="${idx }" />
                        ${idx} 
                           
                           </dsp:a>
              </c:forEach>
			
			

			<dsp:droplet name="/atg/dynamo/droplet/Switch">
				<dsp:param name="value" param="hasNext" />
				<dsp:oparam name="true">
					<dsp:getvalueof var="a46" bean="/OriginatingRequest.pathInfo"
						idtype="java.lang.String">
						<dsp:a href="${a46}">
							<dsp:param name="start" param="nextStart" />
                           &raquo; 
                           
                           </dsp:a>
					</dsp:getvalueof>



				</dsp:oparam>
			</dsp:droplet>
		</div>
	</div>
	</dsp:oparam>

	</dsp:droplet>
	<c:set var="idx" value="${idx }"></c:set> 
              
               <dsp:a href="${a46}" class="active">
				<dsp:param name="start" value="${idx }" />
                        ${idx} 
                 </dsp:a>

</body>
	</html>
</dsp:page>