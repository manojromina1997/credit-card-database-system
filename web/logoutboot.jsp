<%-- 
    Document   : logoutboot
    Created on : Mar 29, 2016, 7:45:12 PM
    Author     : manoj
--%>

<%
        session.invalidate();
        
        response.sendRedirect("loginboot.jsp");
        
    
%>