<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<%
String id = request.getParameter("id");
String email = request.getParameter("email");
String status="Delivered";
try
{
    Connection con = KoneksiDatabase.getCon();
    Statement st = con.createStatement();
    st.executeUpdate("update cart set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is not NULL");
    response.sendRedirect("adminpesanandiantar.jsp?msg=delivered");
}
catch(Exception e)
{
    System.out.println(e);
    response.sendRedirect("adminpesanandiantar.jsp?msg=wrong");}
%>