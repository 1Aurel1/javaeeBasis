<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello</title>
</head>
<body>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
	<!-- String Functions -->
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
 
	<!-- Formatting Tags -->
	<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
 

	<h1>Thank you for the info!</h1>
	<label>First name: </label>
	${cust.fName }
	<label>Last name: </label>
	${cust.lName }
	<label>Phone number: </label>
	${cust.phone }
	<label>State :</label>
	${cust.state }
	<label>City :</label>
	${cust.city }
	<label>Street :</label>
	${cust.street }
	<label>Zip Code :</label>
	${cust.zipcode }
	<label>Email :</label>
	${cust.email }
	
	
	
	<c:if test="${cust.fName.equals('Aurel')}">
		<p> Hi Aurel </p>
	</c:if>
	
	<c:out value="Calculate"/><br>
	5+4= <c:out value="${5+4}"/><br>
	<c:out value="${cust.fName }"></c:out><br>
	
	<c:set var="dogName" scope="session" value="bufi" ></c:set>
	<c:out value="${dogName }"></c:out>
	<c:remove var="dogName"/>
	
	<c:set var="age" scope="session" value="10" ></c:set>
	
	<c:choose>
	  	<c:when test="${(age > 4) && (age < 6) } ">
	  		o cerr
	  	</c:when>
	  	<c:otherwise>
	  		ppp
	  	</c:otherwise>
	</c:choose>
	
	
	
	<c:forEach var="i" begin="1" end="5" step="2" >
		<c:out value="${i }"></c:out> <br>
	</c:forEach>
	
	<c:forTokens items="Mon, Tue, Wen" delims="," var="x">
		<c:out value="${x }"></c:out>
	</c:forTokens>
	
	<%-- exceptions handling --%>
	
	<c:catch var="devideByZeroException" >
		<% int a = 2/0; %>
	</c:catch>
	
	<c:if test="${devideByZeroException != null }">
		<p> Exception Catched </p>
		Exe: ${devideByZeroException }<br>
		${devideByZeroException }<br>
		
		
 	</c:if>
	
	<c:url value="index.jsp" var="theURL" >
		<c:param name="passedParameter" value="pased param" ></c:param>
	</c:url>
	
	<c:import url="${theURL }"/> <br>
	
	<%-- Manipulimi i stingjeve --%>
	
	<c:set var="str1" value="fa futa kot" />
	
	<c:set var="arr1" value="${fn:split(str1,  ' ') }" />
	
	<c:set var="str2" value="${fn:join(arr1, ' ') }" ></c:set>
	
	Length: ${fn:length(str2) } <br>
	
	<c:if test="${fn:contains(str2, 'kot') }">
		<p> the string contains "kot" </p>
	</c:if>
	
	<c:set var="str2" value="${fn:replace(str2, 'kot', 'plot') }" /> <br>
	
	${str2 }<br>
	
	
	<c:set var="str3" value="${fn:substring(str1, 5, 10) }" />
	<c:set var="str3" value="${fn:toUpperCase(str3) }" />
	
	<p> ${str3 } </p>
	
	<fmt:requestEncoding value="UTF-8" />
	
	<fmt:setLocale value="en_US"/>
	<c:set var="nowTime" value="<%= new java.util.Date() %>"/>
	Date: <fmt:formatDate value="${nowTime }" type="BOTH" timeStyle="lONG" /> <br>
	
	<fmt:setTimeZone value="GMT"/>
	<c:set var="nowTime" value="<%= new java.util.Date() %>"/>
	Date: <fmt:formatDate value="${nowTime }" type="BOTH" timeStyle="lONG" /> <br>
	
	Custume date:
	
	<fmt:formatDate pattern="hh:mm:ss:SS a z E MMMM dd yyyy G" value="${nowTime}" timeStyle="LONG" /><br>
	
	<%-- Number formating --%>
	
	<c:set var="val1" value="400.54" />
	<fmt:parseNumber var="val2" type="NUMBER" value="${val1 }"/> <br>
	Number Value: <c:out value="${val2 }" /> <br>
	
	<fmt:setLocale value="fr_FR"/>
	<fmt:formatNumber value="${val2 }" type="CURRENCY" /><br>
	<fmt:formatNumber value="${val2 }" type="PERCENT" /><br>
	
	
	
	
</body>
</html>