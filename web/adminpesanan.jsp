<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Paris Fashion Admin</title>

    <!-- Custom fonts for this template -->
    <link href="css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="css/dataTables.bootstrap4.min.css" rel="stylesheet">
    <style>
        .bg-gradient-primary{background-color:#6d6875;background-image:linear-gradient(180deg,#f2709c 10%,#ff9472 100%);background-size:cover}
        .bg-gradient-secondary{background-color:#d62828;background-image:linear-gradient(180deg,#d62828 10%,#d62828 100%);background-size:cover}
        .text-primary{color:#d62828!important}
        body{margin:0;font-family:Nunito,-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";font-size:1rem;font-weight:400;line-height:1.5;color:#d62828;text-align:left;background-color:#fff}
        .table{width:100%;margin-bottom:1rem;color:#d62828}
        .table-bordered td,.table-bordered th{border:1px solid #e3e6f0}
        .card{position:relative;display:flex;flex-direction:column;min-width:0;word-wrap:break-word;background-color:white;background-clip:border-box;border:1px solid #e3e6f0;border-radius:.35rem}
    </style>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar" style="background-color: #d62828;">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-tshirt"></i>
                </div>
                <div class="sidebar-brand-text mx-3">ParisFashion</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">


        

            <!-- Nav Item - Tables -->
            <li class="nav-item active">
                <a class="nav-link" href="adminproduk.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Produk</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item active">
                <a class="nav-link" href="adminpesanan.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Pesanan</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item active">
                <a class="nav-link" href="adminpesanandiantar.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Pesanan Diantar</span></a>
            </li>
<li class="nav-item active">
                <a class="nav-link" href="adminuser.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>User</span></a>
            </li>
<li class="nav-item active">
                <a class="nav-link" href="adminperhitungan.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Perhitungan</span></a>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

                    <!-- Topbar Search -->
                    

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <%
            String email=session.getAttribute("email").toString();%>
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%out.println(email);%> </span>
                                <img class="img-profile rounded-circle"
                                    src="img/profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="logout.jsp" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">  Pesanan Customer </h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                         <tr>
                                                <th scope="col">Nomor HP</th>
                                                  <th scope="col">Nama Produk</th>
                                                  <th scope="col"><i class="fa fa-money"></i>Jumlah</th>
                                                  <th scope="col"><i class="fa fa-money"></i> Sub Total</th>
                                                  <th>Alamat</th>
            <th scope="col">Tanggal Pesan</th>
             <th scope="col">Perkiraan Pengiriman</th>
             <th scope="col">Metode Pembayaran</th>
              <th scope="col">Status</th>
              <th scope="col">Pesanan Dikirim <i class='fas fa-dolly'></i></th>
                                                </tr>
                                                
                                      </thead>
                                    <tbody>
                                   <% 
 try
 {
     Connection con = KoneksiDatabase.getCon();
     Statement st = con.createStatement();
     ResultSet rs = st.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.orderDate is not NULL and cart.status='processing'");
     while(rs.next())
     {
 %>       
                                        <tr>
          <td><%=rs.getString(10)%></td>
            <td><%=rs.getString(17)%></td>
            <td><%=rs.getString(3)%></td>
            <td><i class="fa fa-money"></i> <%=rs.getString(5)%> </td>
                <td><%=rs.getString(6)%></td>
             <td><%=rs.getString(11)%></td>
              <td><%=rs.getString(12)%></td>
               <td><%=rs.getString(13)%></td>
               <td><%=rs.getString(15)%></td>
                <td><a href="deliveredOrdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>&stok=kurang">Dikirim <i class='fas fa-dolly'></i></a></td>
            </tr>
                                        <%          
                                        }
}
                                    catch(Exception e)
{}
          %>

                                      </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; VN</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Siap untuk keluar?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">�</span>
                    </button>
                </div>
                <div class="modal-body">Klik button Logout jika ingin mengakhiri sesi</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
                    <a class="btn btn-primary" href="logout.jsp">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="jquery.min.js"></script>
    <script src="bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="jquery.dataTables.min.js"></script>
    <script src="dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="datatables-demo.js"></script>

</body>

</html>
