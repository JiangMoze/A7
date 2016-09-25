<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/25
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:useBean id="p" class="com.weikun.vo.Perfect"/>
    <jsp:setProperty name="p" property="values" value="news"/>

    ${p.news[0]}
    ${p.news[1]}
    ${p.news[2]}

    <jsp:setProperty name="p" property="values" value="game"/>
    ${p.games.CS}
    ${p["games"].CF}
    ${p.games["LOL"]}

</body>
</html>
