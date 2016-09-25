<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/25
  Time: 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         import="java.util.*,com.weikun.vo.*,javax.servlet.http.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <% session.setAttribute("skey","session-value");%>
    <% request.setAttribute("rkey","request-value");%>

    <%out.print("你好吗");%>
    <c:out value="你好吗"/>

    <%=session.getAttribute("skey")%>
    <c:out value="${sessionScope.skey}"/>
    <c:out value="${requestScope.rkey}"/>

    <c:set var="sname" value="卫昆" scope="session"   />
    <c:out value="${sessionScope.sname}"/>

    <c:set var="sex">
      男
    </c:set>
    <c:out value="${sex}"/>

    <jsp:useBean id="ani" class="com.weikun.vo.Animal" />

    <%  ani.setName("狗");%>
    <%=ani.getName()%>

    <c:set target="${ani}" property="name" value="猫"/>
    <c:set target="${ani}" property="name">
      鹦鹉
    </c:set>
    <c:out value="${ani.name}"/>

    <% //session.removeAttribute("sname");%>
    <c:remove var="sname"/>
    <c:out value="${sessionScope.sname}"/>

    <c:set target="${ani}" property="age" value="1" />
    <c:if test="${ani.age>18}">
      你可以看网页
    </c:if>
    <c:if test="${ani.age<=18}">
      你不可以看网页
    </c:if>

    <c:choose>
      <c:when test="${ani.age>18}">
          你很帅！
      </c:when>
      <c:when test="${ani.age<=18 && ani.age>10}">
        你很Yong！
      </c:when>
      <c:otherwise>
        你狠幼稚
      </c:otherwise>
    </c:choose>

    <c:out value="${weikun}" default="不存在"/>
    <%
        ArrayList<Animal> list=new ArrayList<Animal>();
        list.add(new Animal(10,"狗"));
        list.add(new Animal(20,"猪"));
        list.add(new Animal(30,"羊"));
        pageContext.setAttribute("list",list);
    %>
    <br/>
   777
    <c:forEach items="${pageScope.list}"  var="a" varStatus="status" >
      <c:choose>
        <c:when test="${status.first}">
          <font color="blue">${status.count}:${a.name}</font>
        </c:when>
        <c:when test="${status.last}">
          <font color="red">${status.count}:${a.name}</font>

        </c:when>

        <c:otherwise>
          ${status.count}:${a.name}
        </c:otherwise>
      </c:choose>
    </c:forEach>
    <br/>
    <c:forEach begin="1" end="9" var="i" step="2">
      ${i}
    </c:forEach>
    <%
      int[] a={1,2,3,4,5,6};
      String [] a1={"YST","MS","Google"};
      Vector v=new Vector();
      v.add("A");
      v.add("B");
      v.add("C");
      v.add("D");

      Enumeration es=v.elements();
      request.setAttribute("v",v);
      request.setAttribute("es",es);

      request.setAttribute("a",a);
      request.setAttribute("a1",a1);

      Map<String,String> m=new HashMap<String,String>();

      m.put("A","亚洲");
      m.put("B","欧洲");
      m.put("C","非洲");

      request.setAttribute("m",m);

    %>
    <br/>
    555
    <c:forEach items="${requestScope.a}" var="i">

      ${i}

    </c:forEach>
    <c:forEach items="${requestScope.a1}" var="i">
      ${i}
    </c:forEach>

    <c:forEach items="${requestScope.v}" var="i">
      ${i}
    </c:forEach>

    <c:forEach items="${requestScope.es}" var="i">
      ${i}
    </c:forEach>


    <c:forEach items="${requestScope.m}" var="i">
      ${i.key}---->${i.value}
    </c:forEach>
  </body>
</html>

