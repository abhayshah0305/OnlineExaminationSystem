<%-- 
    Document   : addquestions
    Created on : 18 Nov, 2020, 12:22:39 AM
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
	<title>TTGS | About Us</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>	
        <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/carousel/">

    <style>
        body {
    padding-top: 3.5rem;
}

nav {
    font-family: sans-serif;
}

.navbar-brand {
    font-size: 20px;
    font-family: Georgia, 'Times New Roman', Times, serif;
}
 #logreg-forms{
    width:412px;
    margin:10vh auto;
    background-color:#f3f3f3;
    box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
    transition: all 0.3s cubic-bezier(.25,.8,.25,1);
}
#logreg-forms form {
    width: 100%;
    max-width: 410px;
    padding: 15px;
    margin: auto;
}
#logreg-forms .form-control {
    position: relative;
    box-sizing: border-box;
    height: auto;
    padding: 10px;
    font-size: 16px;
}
#logreg-forms .form-control:focus { z-index: 2; }
#logreg-forms .form-signin input[type="text"] {
    margin-bottom: -1px;
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
    
}
#logreg-forms .form-signin input[type="password"] {
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}

#logreg-forms a{
    display: block;
    padding-top:10px;
    color:grey;
}


#logreg-forms input[type="submit"]{ margin-top:10px;  background-color: #4a4747}

#logreg-forms .form-reset, #logreg-forms .form-signup{ display: none; }

#logreg-forms .form-signup input { margin-bottom: 2px;}

/* Mobile */

@media screen and (max-width:500px){
    #logreg-forms{
        width:300px;
    }
    
}
    </style>

    </head>
    <body>
        
            <jsp:include page="adminnavbar.jsp" /><br/>
            <h1 style="text-align: center;"><u>Add Questions</u></h1>
            <h5 style="text-align: center;">Add Questions to ${examsubject} Examination</h5><br/>
                        
            <form class="form-signin" action="addquestionDB.jsp" method="POST">
               
                <input type="text" class="form-control" placeholder="Question Number" required="" autofocus="" name="questno" />
                <input type="text" class="form-control" placeholder="Question" required="" name="question" />
                <input type="text" class="form-control" placeholder="Choice 1" required="" name="ans1" />
                <input type="text" class="form-control" placeholder="Choice 2" required="" name="ans2" />
                <input type="text" class="form-control" placeholder="Choice 3" required="" name="ans3" />
                <input type="text" class="form-control" placeholder="Choice 4" required="" name="ans4" />
                <input type="text" class="form-control" placeholder="Correct Choice" required="" name="answer" /><br>
                
                <input class="btn btn-success btn-block" type="submit" value="Add Question" style="color:white;"><br/>
                
                <c:if test="${tbl>=1}">
                    <font size="5" color='green' style="text-align: center;">Question Added Successfully</font>
                </c:if>
            </form>
    </body>
</html>
