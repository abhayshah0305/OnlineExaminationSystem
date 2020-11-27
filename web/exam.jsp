<%-- 
    Document   : exam
    Created on : 18 Nov, 2020, 4:21:33 AM
    Author     : Abhay Shah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>OES | Home</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
        <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/carousel/">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    nav {
        font-family: sans-serif;
    }

    .navbar-brand {
        font-size: 20px;
        font-family: Georgia, 'Times New Roman', Times, serif;
    }
    </style>
</head>
        
    <c:set var="selectedexam" value="${param.selectedexam}" scope="session" />
    <body>
         <header>
            <!--Navigation Bar-->
            <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                <a class="navbar-brand" href="#"><b>ONLINE EXAMINATION SYSTEM</b></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav ml-auto">
		    <li class="nav-item">
			<a class="nav-link"><b><span id="timer" style="color:white;"></span></b></a>
		    </li>
                    </ul>
                </div>    
            </nav>
        </header><br/>
    <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ejproj" user="root" password="root"></sql:setDataSource>
        <sql:query var="mcq">
            select * from ${selectedexam};
        </sql:query>
           
        <br/><br/><br/>    
        <form action="evaluate" method="POST">
            
            <center><h1>${selectedexam} Examination</h1></center> 
            <c:set var="questioncnt" value="0" />
            <c:forEach var="mcqexam" items="${mcq.rows}" >
                    <c:set var="questioncnt" value="${questioncnt+1}" scope="page" />
                    <ol id="${questioncnt}">

                        <h3><span>Q<c:out value="${questioncnt}"></c:out>.&nbsp;</span><c:out value="${mcqexam.question}"></c:out></h3>
                        <input type="radio" name="${mcqexam.qno}" value="${mcqexam.a1}" required="">&nbsp;<c:out value="${mcqexam.a1}"></c:out><br>
                        <input type="radio" name="${mcqexam.qno}"value="${mcqexam.a2}" required="">&nbsp;<c:out value="${mcqexam.a2}"></c:out><br>
                        <input type="radio" name="${mcqexam.qno}" value="${mcqexam.a3}" required="">&nbsp;<c:out value="${mcqexam.a3}"></c:out><br>
                        <input type="radio" name="${mcqexam.qno}" value="${mcqexam.a4}" required="">&nbsp;<c:out value="${mcqexam.a4}"></c:out>

                        <br>
                        </ol>
                        <br>

                </c:forEach>
 
            <center> 
            <button>Submit Exam</button>
            </center>
            <br><br>
        </form>
    </body>

   

    
    <script type="text/javascript">
var count = 1000;
 
function countDown(){
    var timer = document.getElementById("timer");
    if(count > 0){
        count--;
        timer.innerHTML = "Examinations ends in: "+count;
        setTimeout("countDown()", 1000)
    }else{
        window.location.href = "logout";
    }
}
countDown();

</script>
</html>

