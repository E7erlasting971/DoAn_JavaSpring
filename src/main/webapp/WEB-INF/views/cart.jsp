<%@page import="com.mycompany.model.User"%>
<%
    User user = (User) session.getAttribute("user");
%>
<%@page import="com.mycompany.config.Utils"%>
<%@page import="com.mycompany.database.DBQuery"%>

<jsp:include page="header.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Wibu Shop - Giỏ Hàng</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/user/img/favicon.ico">

        <!-- CSS 
        ========================= -->


        <!-- Plugins CSS -->
        <link rel="stylesheet" href="./assets/user/css/plugins.css">

        <!-- Main Style CSS -->
        <link rel="stylesheet" href="./assets/user/css/style.css">

    </head>

    <body>

        <!--header area start-->
        <%--<%@include file="header.jsp" %>--%>
        <!--header area end-->

        <!--breadcrumbs area start-->
        <div class="breadcrumbs_area">
            <div class="container">   
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="index.html">Trang Chủ</a></li>
                                <li>Giỏ Hàng</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>         
        </div>
        <!--breadcrumbs area end-->

        <!--shopping cart area start -->
        <div class="shopping_cart_area mt-60">
            <div class="container">  
                <form action="#"> 
                    <div class="row">
                        <div class="col-12">
                            <div class="table_desc">
                                <div class="cart_page table-responsive">
                                    <table>
                                        <thead>
                                            <tr>
                                                <th class="product_remove">Delete</th>
                                                <th class="product_thumb">Image</th>
                                                <th class="product_name">Product</th>
                                                <th class="product-price">Price</th>
                                                <th class="product_quantity">Quantity</th>
                                                <th class="product_total">Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${carts}" var="cart">
                                                <tr>
                                                    <td class="product_remove"><a href=""><i class="fa fa-trash-o"></i></a></td>
                                                    <td class="product_thumb"><a href=""><img src="${cart.image}" alt=""></a></td>
                                                    <td class="product_name"><a href="">${cart.productName}</a></td>
                                                    <td class="product-price">${cart.price}</td>
                                                    <td class="product_quantity"><label>${cart.cartProductQuantity}</label> <input min="0" max="100" value="1" type="number"></td>
                                                    <td class="product_total">${cart.price}*${cart.cartProductQuantity}</td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>   
                                </div>  
                                <div class="cart_submit">
                                    <button type="submit">update cart</button>
                                </div>      
                            </div>
                        </div>
                    </div>
                    <!--coupon code area start-->
                    <div class="coupon_area">
                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <div class="coupon_code left">
                                    <h3>Coupon</h3>
                                    <div class="coupon_inner">   
                                        <p>Enter your coupon code if you have one.</p>                                
                                        <input placeholder="Coupon code" type="text">
                                        <button type="submit">Apply coupon</button>
                                    </div>    
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="coupon_code right">
                                    <h3>Cart Totals</h3>
                                    <div class="coupon_inner">
                                        <div class="cart_subtotal">
                                            <p>Subtotal</p>
                                            <p class="cart_amount">£215.00</p>
                                        </div>
                                        <div class="cart_subtotal ">
                                            <p>Shipping</p>
                                            <p class="cart_amount"><span>Flat Rate:</span> £255.00</p>
                                        </div>
                                        <a href="#">Calculate shipping</a>

                                        <div class="cart_subtotal">
                                            <p>Total</p>
                                            <p class="cart_amount">£215.00</p>
                                        </div>
                                        <div class="checkout_btn">
                                            <a href="./checkout.html">Proceed to Checkout</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--coupon code area end-->
                </form> 
            </div>     
        </div>
        <!--shopping cart area end -->   

        <!--footer area start-->
        <%@include file="footer.jsp" %>
        <!--footer area end-->

        <!-- JS
        ============================================ -->

        <!-- Plugins JS -->
        <script src="assets/user/js/plugins.js"></script>

        <!-- Main JS -->
        <script src="assets/user/js/main.js"></script>



    </body>

</html>