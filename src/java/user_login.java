/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Student
 */
@WebServlet(urlPatterns = {"/user_login"})
public class user_login extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet admin_login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet admin_login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }catch(Exception e){
            
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
        //processRequest(request, response);
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
    protected void doPost(HttpServletRequest request , HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
  
    response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

    if(request.getParameter("username") !=null)
    {
        String username,newpassword;
        username=request.getParameter("username");
        newpassword=request.getParameter("newpassword");
        try
        {
            int flag=0;
        Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/creditcard","root","12345");
            String sql="select * from user";
            PreparedStatement pst=conn.prepareStatement(sql);
            ResultSet rs=pst.executeQuery();
            PrintWriter out=response.getWriter();
            while(rs.next())
            {
                if(username.equals(rs.getString("username")) && newpassword.equals(rs.getString("newpassword")))
                {
                    flag=1;
                }
            }
                if(flag==1)
                {
                    //when username is admin it will generate a session utnil the log out is press
                    //when logout is press the session get close 
                   // HttpSession session=request.getSession();//it will generate the session
                    //session.setAttribute("username","admin");
                        HttpSession session=request.getSession();  
                        session.setAttribute("username",username);  
                      request.getRequestDispatcher("mainuser.jsp").include(request, response);                
                   // request.getRequestDispatcher("mainuser.jsp").include(request,response);
                }
                else
                {
                   response.sendRedirect("loginboot.jsp?msg=username or password is incorrect");
                }
            
                    conn.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
            System.out.println("sql"+e);
        }

    }
       else
    {
          response.sendRedirect("loginboot.jsp");
    }
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
