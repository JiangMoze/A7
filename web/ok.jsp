<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/25
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:include page="head.jsp"/>
    <c:import url="head.jsp"/>
    <%

        response.sendRedirect("http://www.baidu.com");
        //<c:redirect url="http://www.baidu.com"></c:redirect>
    %>

</body>
</html>
