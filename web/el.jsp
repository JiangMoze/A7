<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/25
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:set var="grade" value="100"/>
    ${grade>100?"Good":"bad"}
    ${4>'7'}
    ${empty ""}
    ${empty null}
    ${empty junk}
    <c:set var="StrVar" value="false"></c:set>
    <%--		布尔表达式值--%>
    <c:if test="${!StrVar}">不相等</c:if>

    ${null==null}
    ${"null"==null}
</body>
</html>
