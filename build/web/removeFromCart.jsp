<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<%
    String email = session.getAttribute("email").toString();
    String product_id=request.getParameter("id");
    try
    {
        Connection con = KoneksiDatabase.getCon();
        Statement st=con.createStatement();
        st.executeUpdate("delete from cart where email = '"+email+"' and product_id ='"+product_id+"' and address is NULL ");
        response.sendRedirect("keranjang.jsp?msg=removed");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    %>