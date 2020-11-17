<%-- 
    Document   : adminhome
    Created on : 17 Nov, 2020, 4:00:35 PM
    Author     : Abhay Shah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
    </style>

</head>
<body>
    <form id="form1">
        <jsp:include page="adminnavbar.jsp" />

         <main role="main">

  <div class="jumbotron">
    <div class="container">
      <h1 class="display-4">About TTGS</h1>
      <p>Welcome to TTGS!, a timetable management system for colleges and universities to schedule their organization's timetable. TTGS started off as a company that formed strong relationships with schools, colleges and universities to help them generate their timetable with
         ease and maximum efficiency and saving the organization's valuable time.
      </p>
      <p><a class="btn btn-primary btn-lg" href="{% url 'contact' %}" role="button">Contact Us &raquo;</a></p>
    </div>
  </div>

  <div class="container">

    <div class="row">
      <div class="col-md-4">
        <h2>User</h2>
        <p>TTGS provides User accounts which gives the user the privelage to create, manipulate or delete the organization's timetable.</p>
        <p><a class="btn btn-secondary" href="{% url 'login' %}" role="button">Sign Up &raquo;</a></p>
      </div>
      <div class="col-md-4">
        <h2>How does it Work?</h2>
        <p>TTGS makes use of a Genetic Algorithm that helps generate the most optimal and suited timetable for your organization's needs.</p>
        <p><a class="btn btn-secondary" href="{% url 'login' %}" role="button">Generate Timetable &raquo;</a></p>
      </div>
      <div class="col-md-4">
        <h2>Terms & Conditions</h2>
        <p>If your organization has any concerns regarding the system please click below to read our Terms and Conditions.</p>
        <p><a class="btn btn-secondary" href="{% url 'terms' %}" role="button">Terms & Conditions &raquo;</a></p>
      </div>
    </div>

    <hr>

  </div>

</main>

<footer class="container">
  <p>&copy; ttgs. All Rights Reserved</p>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.js"></script>

    </form>
</body>
</html>