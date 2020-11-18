/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Abhay Shah
 */
@WebServlet(name = "evaluate", urlPatterns = {"/evaluate"})
public class evaluate extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection con = null;
            String url = "jdbc:mysql://localhost:3306/ejproj";
            String dbusername = "root";
            String dbpassword = "root";
            Statement statement = null;
            ResultSet resultset = null;
         response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
            }
            con = DriverManager.getConnection(url, dbusername, dbpassword);
            Enumeration paramNames = request.getParameterNames();
            statement = con.createStatement();
            HttpSession session = request.getSession();
            String quiztype = (String) session.getAttribute("selectedexam");
            //out.println(quiztype);
            int displaycounter = 0;
            int scorecounter = 0;
            
           while(paramNames.hasMoreElements()){
               displaycounter++;
           String paramName = (String)paramNames.nextElement();
           resultset = statement.executeQuery("select question,ans from "+quiztype+" where qno="+paramName+"");
           
           String [] paramValues = request.getParameterValues(paramName);
           
           for(String paraval:paramValues){
               
                  while (resultset.next()) // Until next row is present otherwise it return false
            { 
                      
                    //we also have equals igonre case which will ignore casae sensitive data. 
                     // out.println("param names:"+paramName+"<br>");
                     // out.println("param values:"+paraval+"<br>");
                    String ropt = resultset.getString("ans");
                      String question = resultset.getString("question");

                    if(paraval.equals(ropt)){
                        scorecounter++;
                        
                       // out.println("<h2 style='color:hotpink;'>Correct Answer</h2>");
                        out.println("<center>\n" +
"<div  style=\"border: solid; border-color: green;background-color:lemon;width:800px;height:auto;padding:8px;\">\n" +
"	<h1 align=\"left\">\n" +
"		<span>"+displaycounter+"</span> \n" +
"		"+question+"<span style=\"float:right;\">+1</span></h1>\n" +
"<div align=\"left\">\n" +
"	<ul >\n" +
"		<li>Your answer: "+paraval+"</li>\n" +
"		<li>Correct answer: "+ropt+"</li>\n" +
"		\n" +
"	</ul>\n" +
"	</div>\n" +
"\n" +
"	<br>\n" +
"</div><br>\n" +
"</center>");
                    }else{
                           out.println("<center>\n" +
"<div  style=\"border: solid; border-color: red;background-color:;width:800px;height:auto;padding:8px;\">\n" +
"	<h1 align=\"left\">\n" +
"		<span>"+displaycounter+"</span> \n" +
"		"+question+"<span style=\"float:right;\">0</span></h1>\n" +
"<div align=\"left\">\n" +
"	<ul >\n" +
"		<li>Your answer: "+paraval+"</li>\n" +
"		<li>Correct answer: "+ropt+"</li>\n" +
"		\n" +
"	</ul>\n" +
"	</div>\n" +
"\n" +
"	<br>\n" +
"</div><br>\n" +
"</center>");
                    }
                     
                      
                      
                  }
         
           }
           }
           out.println("    <center><form method=\"POST\" action=\"setmarks.jsp\">\n" +
"            \n" +
"            <input type=\"hidden\" name=\"newscore\" value="+scorecounter+">\n" +
"            <input class=\"btn btn-success\" type=\"submit\" value=\"Submit Result\">\n" +
"        </form>\n" +
"    </center>");
           
//System.out.println(scorecounter);
        } catch (SQLException ex) {
            Logger.getLogger(evaluate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
