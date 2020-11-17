<%-- 
    Document   : test
    Created on : 17 Nov, 2020, 11:35:27 PM
    Author     : Abhay Shah
--%>

<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload Quiz</title>
    </head>
    
    <body><center><br><br>
                <div id="fileupload" style="width: 900px;height: 100px; background-color: peachpuff;border: solid;margin-top: 30px;">
                    <center><form method="POST" action="uploadquiz.jsp"> 
        <select name="uploadquiztype">
            <option name="java" value="Java">Java</option>          
            <option name="html" value="Html">Html</option>
            <option name="angular" value="Angular">Angular</option>
            <option name="php" value="Php">Php</option>
            <option name="randoms" value="Random">Randoms</option>
        </select>
                        <input class="btn btn-success" type="submit" value="Set"> 
                        </center>
       </form>
           <%
           String uploadquiztypesetter = (String)request.getParameter("uploadquiztype");
           
           session.setAttribute("adminquiztype", uploadquiztypesetter);
           
           %>         
                    
        </div>
<!--        <div id="fileupload" style="width: 500px;height: 320px; background-color: peachpuff;border: solid;display: inline-block;margin-top: 30px;margin-left: 150px;">
            <p> Click below to upload quiz in a xls document</p>
            <a href="csvupload"><button>Upload</button></a>
        </div>-->
        
<div id="manualupload" style="width: 900px;height: 100px; background-color: peachpuff;border: solid;margin-top: 30px;"><center><p> Click below to Insert Question in the quiz</p>
        <a href="insertquizquestions.jsp"><button class="btn btn-success">Insert</button></a></center></div>
        </center>
    </body>
   
</html>
