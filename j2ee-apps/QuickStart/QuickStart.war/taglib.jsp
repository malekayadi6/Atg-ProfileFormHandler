<%@ taglib uri="http://www.atg.com/taglibs/daf/dspjspELTaglib1_0" prefix="dspel"%>
<%@ taglib uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1" prefix="dsp"%>
<%@ taglib uri="http://www.atg.com/taglibs/daf/coreTaglib1_0" prefix="core"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	
<dsp:page>

	<dsp:importbean bean="/atg/dynamo/Configuration" />
	
	<fmt:setBundle basename="com.quickstart.MessagesBundle" />

	<html>
	
		<head>
			<title><fmt:message key="page.title"/></title>
		</head>

		<body>
		
			<H1>Simple usage of DSP and JSTL in JSP Pages </H1>
		
			<fmt:message key="format.date" var="dateFormat"/>
		
			<ul>
				   <h4>DSP simple tests</h4>
				<li>Context Path From DSP   : <b><dsp:valueof bean="/OriginatingRequest.contextPath">DSP does not Work, please check your configuration !</dsp:valueof></b>
				<li>Context Path From DSPEL : <b><dspel:valueof bean="/OriginatingRequest.contextPath">DSPEL does not Work, please check your configuration !</dspel:valueof></b>			
				<li>DSP Core IFEQUAL Test   : <b><core:ifEqual int1="${1}" int2="1" >DSP Core IFEQUAL works ...</core:ifEqual></b>
			</ul>	
			<ul>
				    <h4>Expression lanquage tests</h4>
				    
				<dsp:getvalueof id="uriFromDsp"  bean="/OriginatingRequest.requestURI"/>
				<c:set var="uriFromJstl" value="${pageContext.request.requestURI}"></c:set>
			
				<li>Test EL and DSP  : <b><c:if test="${not uriFromDsp}" > DSP and EL work fine! </c:if></b>
				<li>Test EL and JSTL : <b><c:if test="${not uriFromJstl}"> DSP and EL work too !</c:if></b>
				<li>Test EL EQ Test  : <b><c:if test="${uriFromJstl eq uriFromDsp}"> Well, Thanks to JSP 2.0 !</c:if></b>
			</ul>	
			<ul>
				    <h4>Standard FMT tests </h4>
				<li> FSMT Message Test : <fmt:message key="msg.welcome"/>
				<li> FSMT Date Format  : <fmt:formatDate value="<%=new java.util.Date()%>" pattern="${dateFormat}"/>
			</ul>			
				
		
		</body>
		
	</html>

</dsp:page>
