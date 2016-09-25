<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/25
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%

        String [] ns=request.getParameterValues("name");
        for( String  s:ns){
            out.println(s);
        }
    %>
    <c:forEach items="${paramValues.name}" var="i">
        ${i}

    </c:forEach>
</body>
</html>
