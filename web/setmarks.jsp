<%-- 
    Document   : setmarks
    Created on : 18 Nov, 2020, 4:52:44 AM
    Author     : Abhay Shah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/ejproj"
                           user="root"
                           password="root"></sql:setDataSource>
        <sql:query var="userscore">
            select marks from login where email='${email}'  
        </sql:query>
        <c:set var="newscore" value="${param.newscore}"/>
      
     <c:forEach  var="user" items="${userscore.rows}">
 
      
 <c:set var="newscore" value="${newscore + user.score}"/>
       <sql:update>
          Update login set marks='${newscore}' where email='${email}'
      </sql:update>
          
      </c:forEach>
      <c:redirect url="examscreen.jsp"></c:redirect>
    </body>
</html>
