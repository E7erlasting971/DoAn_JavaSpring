<%-- 
    Document   : adminDetailsInvoices
    Created on : Mar 9, 2023, 2:06:13 AM
    Author     : truongthanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->

        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/bootstrap/css/bootstrap.min.css"/>">
        <link href="<c:url value="/assets/admin/vendor/fonts/circular-std/style.css"/>" rel="stylesheet">
        <link rel="stylesheet" href="<c:url value="/assets/admin/libs/css/style.css"/>">

        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/fonts/simple-line-icons/css/simple-line-icons.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/bootstrap-select/css/bootstrap-select.css"/>">

        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/fonts/fontawesome/css/fontawesome-all.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/charts/chartist-bundle/chartist.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/charts/morris-bundle/morris.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/charts/c3charts/c3.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/fonts/flag-icon-css/flag-icon.min.css"/>">

        <title>Wibu Cosplay</title>
    </head>

    <body>
        <!-- ============================================================== -->
        <!-- main wrapper -->
        <!-- ============================================================== -->
        <div class="dashboard-main-wrapper">
            <!-- ============================================================== -->
            <!-- navbar -->
            <!-- ============================================================== -->
            <div class="dashboard-header">
                <nav class="navbar navbar-expand-lg bg-white fixed-top">
                    <a class="navbar-brand" href="./adminIndex">Concept</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto navbar-right-top">
                            <li class="nav-item">
                                <div id="custom-search" class="top-search-bar">
                                    <input class="form-control" type="text" placeholder="Search..">
                                </div>
                            </li>
                            <!--admin image-->
                            <li class="nav-item dropdown nav-user">
                                <a class="nav-link nav-user-img" href="" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="<c:url value="/assets/admin/images/avatar-1.jpg"/>" alt="" class="user-avatar-md rounded-circle"></a>
                                <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                    <div class="nav-user-info">
                                        <h5 class="mb-0 text-white nav-user-name">John Abraham </h5>
                                        <span class="status"></span><span class="ml-2">Available</span>
                                    </div>
                                    <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Account</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Setting</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-power-off mr-2"></i>Logout</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <!-- ============================================================== -->
            <!-- end navbar -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- left sidebar -->
            <!-- ============================================================== -->
            <div class="nav-left-sidebar sidebar-dark">
                <div class="menu-list">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <%@include file ="menu.jsp"%> 
                    </nav>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end left sidebar -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- wrapper  -->
            <!-- ============================================================== -->\
            <div class="dashboard-wrapper">
                <div class="container-fluid  dashboard-content py-0" style="padding-bottom:0px;">
                    <!-- ============================================================== -->
                    <!-- pageheader -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                                <h2 class="pageheader-title">Form Validations </h2>
                                <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce
                                    sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Forms</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Form Validations</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end pageheader -->
                    <!-- ============================================================== -->

                    <div class="row" style="">
                        <div class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12 position-relative" style="margin-left: 325px;">
                            <div class="card " style="margin-left: 70px;">
                                <div class="card-header p-4">
                                    <h2 class="pt-2 d-inline-block">H??a ????n</h2>

                                    <div class="float-right">
                                        <h3 class="mb-0">M?? #1</h3>
                                        <span>Ng??y: 16/02/2003</span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row mb-4">
                                        <div class="col-sm-6">
                                            <h5 class="mb-3">T???:</h5>
                                            <h3 class="text-dark mb-1">C???a h??ng cho thu?? ????? cosplay</h3>

                                            <div>Ung V??n Khi??m, qu???n B??nh Th???nh, tp H??? Ch?? Minh</div>

                                            <div>Email: tt@gmail.com</div>
                                            <div>Phone: 09232840924</div>
                                        </div>
                                        <div class="col-sm-6">
                                            <h5 class="mb-3">?????n:</h5>
                                            <h3 class="text-dark mb-1">Nguy???n V??n A</h3>
                                            <div>Nguy???n Th??? ?????nh, qu???n 2, th??nh ph??? H??? Ch?? Minh</div>

                                            <div>Email: a@gmail.com</div>
                                            <div>Phone: 01230912309</div>
                                        </div>
                                    </div>
                                    <div class="table-responsive-sm">
                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th class="center">#</th>
                                                    <th>S???n ph???m</th>
                                                    <th>????n gi??</th>
                                                    <th class="right">S??? l?????ng</th>
                                                    <th class="center">S??? ti???n</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="center">1</td>
                                                    <td class="left strong">Phi ti??u Naruto</td>
                                                    <td class="left">20.000</td>
                                                    <td class="right">3</td>
                                                    <td class="right">150.000</td>
                                                </tr>
                                                <tr>
                                                    <td class="center">2</td>
                                                    <td class="left">Phi ti??u Naruto</td>
                                                    <td class="left">20.000</td>
                                                    <td class="right">2</td>
                                                    <td class="right">150.000</td>
                                                </tr>
                                                <tr>
                                                    <td class="center">3</td>
                                                    <td class="left">??o ch??ng Harry Potter</td>
                                                    <td class="left">60.000</td>
                                                    <td class="right">23</td>
                                                    <td class="right">150.000</td>
                                                </tr>
                                                <tr>
                                                    <td class="center">4</td>
                                                    <td class="left">??o ch??ng Harry Potter</td>
                                                    <td class="left">80.000</td>
                                                    <td class="right">2</td>
                                                    <td class="right">200.000</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4 col-sm-5">
                                        </div>
                                        <div class="col-lg-4 col-sm-5 ml-auto mt-5" style="margin-right: 60px;">
                                            <table class="table table-clear">
                                                <tbody>
                                                    <tr>
                                                        <td class="left">
                                                            <strong class="text-dark">T???m t??nh:</strong>
                                                        </td>
                                                        <td class="right">60.000</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="left">
                                                            <strong class="text-dark">Ph?? giao h??ng</strong>
                                                        </td>
                                                        <td class="right">20.000</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="left ">
                                                            <strong class="text-dark">Ph?? ?????m b???o t??i s???n (20%)</strong>
                                                        </td>
                                                        <td class="right">10.000</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="left" style="">
                                                            <strong class="text-dark">T???ng ti???n</strong>
                                                        </td>
                                                        <td class="right">
                                                            <strong class="text-dark "> <span
                                                                    class="d-inline position-relative mr-2">2.000.000</span>
                                                                <span class="position-absolute">vn??</span> </strong>

                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="card position-absolute" style="top: 0px;
                                 width: 35%;
                                 left: -210px;">
                                <h5 class="card-header">Horizontal Form</h5>
                                <div class="card-body" style="width: 200%;">
                                    <form id="form" data-parsley-validate="" novalidate="">
                                        <div class="col-sm-6 pl-0">
                                            <p class="text-right d-flex flex-xl-column">
                                                <button type="submit" class="btn btn-space btn-dark mt-3">In ????n</button>
                                                <button class="btn btn-space btn-secondary mt-3 mdi mdi-check"> ????nh d???u
                                                    ch??a thanh to??n</button>
                                                <button class="btn btn-space btn-secondary mt-3 mdi mdi-check"> ????nh d???u ????
                                                    tr??? h??ng</button>
                                                <button class="btn btn-space btn-secondary mt-3 mdi mdi mdi-check"> ????nh d???u
                                                    ???? thanh to??n</button>
                                                <button type="submit"
                                                        class="btn btn-outline-dark btn-primary mt-3 mdi mdi-checkbox-marked-circle ">
                                                    H???y ????n</button>


                                            </p>
                                            <p>Khi ch???n Hu??? ????n h??ng, s??? kh??ng th??? ?????i tr???ng th??i ????n h??ng ???????c n???a (Ch???nh
                                                s???a t???i CSDL).</p>
                                        </div>
                                    </form>
                                </div>

                            </div>
                        </div>

                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">

                        </div>
                    </div>


                    <!-- ============================================================== -->
                    <!-- footer -->
                    <!-- ============================================================== -->
                    <div class="footer">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                                    . All rights reserved. Dashboard by Wibu
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                                    <div class="text-md-right footer-links d-none d-sm-block">
                                        <a href="javascript: void(0);">About</a>
                                        <a href="javascript: void(0);">Support</a>
                                        <a href="javascript: void(0);">Contact Us</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end footer -->
                    <!-- ============================================================== -->
                </div>

                <!-- ============================================================== -->
                <!-- end wrapper  -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- end main wrapper  -->
            <!-- ============================================================== -->
            <!-- Optional JavaScript -->
            <!-- jquery 3.3.1 -->
            <script src="<c:url value="/assets/admin/vendor/jquery/jquery-3.3.1.min.js"/>"></script>
            <!-- bootstap bundle js -->
            <script src="<c:url value="/assets/admin/vendor/bootstrap/js/bootstrap.bundle.js"/>"></script>
            <!-- slimscroll js -->
            <script src="<c:url value="/assets/admin/vendor/slimscroll/jquery.slimscroll.js"/>"></script>
            <!-- main js -->
            <script src="<c:url value="/assets/admin/libs/js/main-js.js"/>"></script>
            <!-- chart chartist js -->
            <script src="<c:url value="/assets/admin/vendor/charts/chartist-bundle/chartist.min.js"/>"></script>
            <!-- sparkline js -->
            <script src="<c:url value="/assets/admin/vendor/charts/sparkline/jquery.sparkline.js"/>"></script>
            <!-- morris js -->
            <script src="<c:url value="/assets/admin/vendor/charts/morris-bundle/raphael.min.js"/>"></script>
            <script src="<c:url value="/assets/admin/vendor/charts/morris-bundle/morris.js"/>"></script>
            <!-- chart c3 js -->
            <script src="<c:url value="/assets/admin/vendor/charts/c3charts/c3.min.js"/>"></script>
            <script src="<c:url value="/assets/admin/vendor/charts/c3charts/d3-5.4.0.min.js"/>"></script>
            <script src="<c:url value="/assets/admin/vendor/charts/c3charts/C3chartjs.js"/>"></script>
            <script src="<c:url value="/assets/admin/libs/js/dashboard-ecommerce.js"/>"></script>

            <script src="<c:url value="/assets/admin/vendor/bootstrap-select/js/bootstrap-select.js"/>"></script>
    </body>

</html>
