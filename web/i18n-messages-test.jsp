<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="theLocale" value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${theLocale}" />
<fmt:setBundle basename="com.marvintdawson.i18n.resources.mylables" />
<html>
<head>
    <title>Languages</title>
</head>
<body>

<a href="i18n-messages-test.jsp?theLocale=en_US">English (US)</a>
<a href="i18n-messages-test.jsp?theLocale=en_ES">Spanish (ES)</a>
<a href="i18n-messages-test.jsp?theLocale=en_DE">German (DE)</a>
<fmt:message key="label.greeting" /> <br><br>

<hr>

<fmt:message key="label.firstname" /> <i>John</i> <br><br>

<fmt:message key="label.lastname" /> <i>Doe</i> <br><br>

<fmt:message key="label.welcome" />

<hr>

Selected language: ${theLocale}

</body>
</html>
