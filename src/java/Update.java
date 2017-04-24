

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author manoj
 */
public class Update extends HttpServlet {

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
            out.println("<title>Servlet Update</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Update at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
             try
       {
           PrintWriter out=response.getWriter();
              int id=Integer.parseInt(request.getParameter("id"));
           String firstname=request.getParameter("firstname");
           String lastname=request.getParameter("lastname");
           String dob=request.getParameter("dob");
             String address=request.getParameter("address");
            String city=request.getParameter("city");
                  String occupation=request.getParameter("occupation");
            String qualification=request.getParameter("qualification");
            String annualincome=request.getParameter("annualincome");
             String emailid=request.getParameter("emailid");
            String mobile=request.getParameter("mobile");
                String username=request.getParameter("username");
            String password=request.getParameter("password");
           Customer s=new Customer();
           
               s.setId(id);
           s.setFirstname(firstname);
           s.setLastname(lastname);
           s.setDob(dob);
            s.setAddress(address);
           s.setCity(city);
              s.setOccupation(occupation);
           s.setQualification(qualification);
           s.setAnnualincome(annualincome);
            s.setEmailid(emailid);
           s.setMobile(mobile);
           s.setUsername(username);
           s.setPassword(password);

       
          // out.println("<h2>USer Created</h2>");
           Application_customer.Update(s);
          response.sendRedirect("ad_showuser.jsp?msg=User Updated Succesfully");
          
       }catch(Exception e)
       {
           System.out.println("exception ::: "+e.getMessage());
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
