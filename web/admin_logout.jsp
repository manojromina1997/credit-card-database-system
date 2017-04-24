<%-- 
    Document   : admin_logout
    Created on : Mar 29, 2016, 8:24:38 PM
    Author     : manoj
--%>
<%
        session.invalidate();
        
        response.sendRedirect("admin.jsp");
        
    
%>