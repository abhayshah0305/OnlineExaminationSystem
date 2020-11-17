<%-- 
    Document   : addquestionDB
    Created on : 18 Nov, 2020, 1:44:32 AM
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
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ejproj" 
        user="root" password="root"></sql:setDataSource>
        
        <sql:update var="tbl">
                    INSERT INTO ${examsubject}(qno,question,a1,a2,a3,a4,ans) VALUES (?,?,?,?,?,?,?)
                    <sql:param value="${param.questno}" /> 
                    <sql:param value="${param.question}" />
                    <sql:param value="${param.ans1}" />
                    <sql:param value="${param.ans2}" />
                    <sql:param value="${param.ans3}" />
                    <sql:param value="${param.ans4}" />
                    <sql:param value="${param.answer}" />
                </sql:update>
        <c:if test="${tbl>=1}">
            <c:redirect url="addquestions.jsp"></c:redirect>
        </c:if>  
    </body>
</html>
