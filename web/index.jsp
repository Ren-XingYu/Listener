<%@ page import="x.y.bean.BeanOne" %>
<%@ page import="x.y.bean.BeanTwo" %><%--
  Created by IntelliJ IDEA.
  User: RenXingYu
  Date: 2018/12/26
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    session.setAttribute("session","session");
    request.setAttribute("request","request");
    application.setAttribute("application","application");
  %>
  <hr>

  <%
    BeanOne beanOne=new BeanOne();
    beanOne.setName("abc");
    session.setAttribute("beanOne",beanOne);
    session.removeAttribute("beanOne");
  %>

  <%
    BeanTwo beanTwo=new BeanTwo();
    beanTwo.setName("xyz");
    session.setAttribute("beanTwo",beanTwo);
  %>

  </body>
</html>
