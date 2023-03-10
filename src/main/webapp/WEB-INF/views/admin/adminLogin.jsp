<%-- 
    Document   : adminLogin
    Created on : Mar 9, 2023, 2:08:12 AM
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
        <title>Login</title>
        <!-- Bootstrap CSS -->

        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/bootstrap/css/bootstrap.min.css"/>">
        <link href="<c:url value="/assets/admin/vendor/fonts/circular-std/style.css"/>" rel="stylesheet">
        <link rel="stylesheet" href="<c:url value="/assets/admin/libs/css/style.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/fonts/fontawesome/css/fontawesome-all.css"/>">
        <style>
            html,
            body {
                height: 100%;
            }

            body {
                display: -ms-flexbox;
                display: flex;
                -ms-flex-align: center;
                align-items: center;
                padding-top: 40px;
                padding-bottom: 40px;
            }
        </style>
    </head>

    <body>
        <!-- ============================================================== -->
        <!-- login page  -->
        <!-- ============================================================== -->
        <div class="splash-container">
            <div class="card ">
                <div class="card-header text-center badge-dark"><a href="./"><img class="logo-img" src="https://cs-wibu.phatnef.me/assets/img/logo/logo.webp" alt="logo"></a><span class="splash-description"></span></div>
                <div class="card-body badge-dark">
                    <form method="POST">
                        <c:if test="${not empty msg}">
                            <div class="form-group"><p>${msg}</p></div>
                                </c:if>
                        <div class="form-group">
                            <input class="form-control form-control-lg" id="username" name="username" type="text" placeholder="Username" autocomplete="off">
                        </div>
                        <div class="form-group">
                            <input class="form-control form-control-lg" id="password" name="password" type="password" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <label class="custom-control custom-checkbox">
                                <input class="custom-control-input" type="checkbox"><span class="custom-control-label">Remember Me</span>
                            </label>
                        </div>
                        <button type="submit" class="btn btn-outline-white btn-lg btn-block">Sign in</button>
                    </form>
                </div>

            </div>
        </div>

        <!-- ============================================================== -->
        <!-- end login page  -->
        <!-- ============================================================== -->
        <!-- Optional JavaScript -->
        <script src="<c:url value="/assets/admin/vendor/jquery/jquery-3.3.1.min.js"/>"></script>
        <script src="<c:url value="/assets/admin/vendor/bootstrap/js/bootstrap.bundle.js"/>"></script>
    </body>

</html>
