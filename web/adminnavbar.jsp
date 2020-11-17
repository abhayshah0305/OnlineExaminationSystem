<%-- 
    Document   : adminnavbar
    Created on : 17 Nov, 2020, 6:13:12 PM
    Author     : Abhay Shah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<header>
            <!--Navigation Bar-->
            <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                <a class="navbar-brand" href="#"><b>ONLINE EXAMINATION SYSTEM</b></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="adminhome.jsp">Home</a>
                    </li>
                    <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Set Examination</a>
			    <div class="dropdown-menu" aria-labelledby="dropdown03">
			        <a class="dropdown-item" href="#">Add Questions</a>
				<a class="dropdown-item" href="#">Update Questions</a>
                                <a class="dropdown-item" href="#">Delete Questions</a>
			    </div>
		    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Check Scores</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Logout</a>
                    </li>
                    </ul>
                </div>
            </nav>
</header>