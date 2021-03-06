<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin - Tables</title>

  <!-- Custom fonts for this template-->
  <link href="<c:url value="/sale/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="<c:url value="/sale/vendor/datatables/dataTables.bootstrap4.css"/>" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<c:url value="/sale/css/sb-admin.css"/>" rel="stylesheet">
  <script>
    $(document).ready(function () {
      // Activate tooltip
      $('[data-toggle="tooltip"]').tooltip();

      // Select/Deselect checkboxes
      var checkbox = $('table tbody input[type="checkbox"]');
      $("#selectAll").click(function () {
        if (this.checked) {
          checkbox.each(function () {
            this.checked = true;
          });
        } else {
          checkbox.each(function () {
            this.checked = false;
          });
        }
      });
      checkbox.click(function () {
        if (!this.checked) {
          $("#selectAll").prop("checked", false);
        }
      });
    });
    function ConfirmDelete(id)
    {
      var x = confirm("Are you sure you want to delete?");
      if (x == true){
        window.location.href = 'delete?id='+id
      }

    }
  </script>
</head>

<body id="page-top">

<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

  <a class="navbar-brand mr-1" href="index.html">Sale</a>

  <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
    <i class="fas fa-bars"></i>
  </button>

  <!-- Navbar Search -->
  <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
    <div class="input-group">
      <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
      <div class="input-group-append">
        <button class="btn btn-primary" type="button">
          <i class="fas fa-search"></i>
        </button>
      </div>
    </div>
  </form>

  <!-- Navbar -->
  <ul class="navbar-nav ml-auto ml-md-0">
    <li class="nav-item dropdown no-arrow mx-1">
      <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fas fa-bell fa-fw"></i>
        <span class="badge badge-danger">9+</span>
      </a>
      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
        <a class="dropdown-item" href="#">Action</a>
        <a class="dropdown-item" href="#">Another action</a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="#">Something else here</a>
      </div>
    </li>
    <li class="nav-item dropdown no-arrow mx-1">
      <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fas fa-envelope fa-fw"></i>
        <span class="badge badge-danger">7</span>
      </a>
      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
        <a class="dropdown-item" href="#">Action</a>
        <a class="dropdown-item" href="#">Another action</a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="#">Something else here</a>
      </div>
    </li>
    <li class="nav-item dropdown no-arrow">
      <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fas fa-user-circle fa-fw"></i>
      </a>
      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
        <a class="dropdown-item" href="#">Settings</a>
        <a class="dropdown-item" href="#">Activity Log</a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
      </div>
    </li>
  </ul>

</nav>

<div id="wrapper">

  <!-- Sidebar -->
  <ul class="sidebar navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="/shopfuniture/manager/home">
        <i class="fas fa-fw fa-tachometer-alt"></i>
        <span>Dashboard</span>
      </a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fas fa-fw fa-folder"></i>
        <span>Pages</span>
      </a>
      <div class="dropdown-menu" aria-labelledby="pagesDropdown">
        <h6 class="dropdown-header">Login Screens:</h6>
        <a class="dropdown-item" href="login.html">Login</a>
        <a class="dropdown-item" href="register.html">Register</a>
        <a class="dropdown-item" href="forgot-password.html">Forgot Password</a>
        <div class="dropdown-divider"></div>
        <h6 class="dropdown-header">Other Pages:</h6>
        <a class="dropdown-item" href="404.html">404 Page</a>
        <a class="dropdown-item" href="blank.html">Blank Page</a>
      </div>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="tables.html">
        <i class="fas fa-fw fa-table"></i>
        <span>Order</span></a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="/shopfuniture/manager/list_product">
        <i class="fas fa-fw fa-table"></i>
        <span>Product</span></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/shopfuniture/manager/list_feedback">
        <i class="fas fa-fw fa-table"></i>
        <span>Feedback</span></a>
    </li>
  </ul>

  <div id="content-wrapper">

    <div class="container-fluid">

      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Tables</li>
      </ol>

      <!-- DataTables Example -->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fas fa-table"></i>
          Data Table Example</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
              <tr>
                <th>Product image</th>
                <th>Product ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>actions</th>
              </tr>
              </thead>
              <tfoot>
              <tr>
                <th><a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a></th>
              </tr>
              </tfoot>
              <tbody>
              <c:forEach items="${listP}" var="o">
                <tr>
                  <td><img class="table-responsive" src="<c:url value="${o.getP_image()}"/>"/></td>
                  <td>${o.getPid()}</td>
                  <td>${o.getP_name()} </td>
                  <td>${o.getPrice()}</td>
                  <td>

                    <a href="/shopfuniture/manager/deleteP?pid=${o.getPid()}"  onclick="ConfirmDelete(${o.getPid()})" class="fas fa-trash-alt"/>
                    <a href="" class="fas fa-edit" style="margin-left: 10px"/>

                  </td>
                </tr>
              </c:forEach>

              </tbody>
            </table>
          </div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
      </div>



    </div>
    <!-- /.container-fluid -->
    <!-- Sticky Footer -->
    <footer class="sticky-footer">
      <div class="container my-auto">
        <div class="copyright text-center my-auto">
          <span>Copyright ?? Your Website 2019</span>
        </div>
      </div>
    </footer>

  </div>
  <!-- /.content-wrapper -->

</div>
<!-- /#wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
  <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">??</span>
        </button>
      </div>
      <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
        <a class="btn btn-primary" href="login.html">Logout</a>
      </div>
    </div>
  </div>
</div>
<div id="addEmployeeModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <form action="add" method="post">
        <div class="modal-header">
          <h4 class="modal-title">Add Product</h4>
        </div>
        <div class="modal-body">
          <div class="form-group">
            <label>ID</label>
            <input value="" name="id" type="text" class="form-control" readonly required>
          </div>
          <div class="form-group">
            <label>Name</label>
            <input value="" name="name" type="text" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Image</label>
            <input value="" name="image" type="text" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Price</label>
            <input value="" name="price" type="text" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Description</label>
            <textarea name="description" class="form-control" required></textarea>
          </div>
          <div class="form-group">
            <label>Category</label>
            <select name="category" class="form-select" aria-label="Default select example">
              <c:forEach items="${listC}" var="o">
                <option value="${o.getCid()}">${o.getC_name()}</option>
              </c:forEach>
            </select>
          </div>
          <div class="form-group">
            <label>Inventory</label>
            <select name="inventory" class="form-select" aria-label="Default select example">
              <c:forEach items="${listI}" var="o">
                <option value="${o.getIn_id()}">${o.getI_name()}(${o.getLocation()})</option>
              </c:forEach>
            </select>
          </div>

        </div>
        <div class="modal-footer">
          <input type="submit" class="btn btn-success" value="Add">
        </div>
      </form>
    </div>
  </div>
</div>
<!-- Bootstrap core JavaScript-->
<script src="<c:url value="/sale/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="/sale/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

<!-- Core plugin JavaScript-->
<script src="<c:url value="/sale/vendor/jquery-easing/jquery.easing.min.js"/>"></script>

<!-- Page level plugin JavaScript-->
<script src="<c:url value="/sale/vendor/chart.js/Chart.min.js"/>"></script>
<script src="<c:url value="/sale/ vendor/datatables/jquery.dataTables.js"/>"></script>
<script src="<c:url value="/sale/vendor/datatables/dataTables.bootstrap4.js"/>"></script>

<!-- Custom scripts for all pages-->
<script src="<c:url value="/sale/js/sb-admin.min.js"/>"></script>

<!-- Demo scripts for this page-->
<script src="<c:url value="/sale/js/demo/datatables-demo.js"/>"></script>

</body>

</html>
