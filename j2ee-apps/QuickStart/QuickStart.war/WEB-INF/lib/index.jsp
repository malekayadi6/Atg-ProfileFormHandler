<%@ taglib uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1" prefix="dsp"%>
<%@ page import="atg.servlet.*"%>
<dsp:page>

	<dsp:importbean bean="/atg/dynamo/Configuration" />

	<html>
		<head>
			<title>Sample QuickStart Project Implemented on UNIX/LINUX</title>
		</head>
		
		<body>
		
			<H1>Sample QuickStart Project</H1>
			<p>
			malek ok wadha7 hahaha correctly created a new ATG module. Here is a link back to <dsp:a href="index.jsp">this page</dsp:a>.
			<p>
			<p>
				<dsp:a href="taglib.jsp">+Here+</dsp:a> you find a simple usage of taglibs and expressions in JSP Pages.
			<p>
			
				<%
					DynamoHttpServletRequest drequest = ServletUtil.getDynamoRequest(request);
					Object o = drequest.resolveName("/atg/userprofiling/Profile");
					if (o == null){
						out.print("DPS is not available!");
					}else {
						out.println("<B>Your profile is: </B> <U>" + o + "</U>");
					}
				%>			
			<ul>
				<li>Dynamo's document root is :: <dsp:valueof bean="Configuration.documentRoot">not set</dsp:valueof>
				<li>Your request's context path is: <dsp:valueof bean="/OriginatingRequest.contextPath">null</dsp:valueof>
				<li>The full request URI of this page: <dsp:valueof bean="/OriginatingRequest.requestURI">null</dsp:valueof>
				<%
				 	Integer count;
			 		synchronized (session) {
			 			count = (Integer) session.getAttribute("visitCounter");
			 			if (count == null)
			 				count = new Integer(0);
			 			else
			 				count = new Integer(count.intValue() + 1);
			 			session.setAttribute("visitCounter", count);
			 		}
				 %>
				 <!-- Test setting an object parameter -->
				 <dsp:setvalue param="testParam" value="3" />
				<li>You have visited this page: <%=count.intValue()%> times in this session.
				<li>Your session id is: <%=session.getId()%>
			</ul>
			<p>This response is being served with:
			<ul>
				<li>Encoding: <%=response.getCharacterEncoding()%>
				<li>Locale: <%=response.getLocale()%>
				<li>Buffer size: <%=response.getBufferSize()%>
			</ul>		
		
		</body>
	</html>


</dsp:page>
