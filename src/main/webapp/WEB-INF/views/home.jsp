<%@page import="com.mycompany.config.Utils"%>
<%@page import="com.mycompany.database.DBProduct"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Wibu Shop</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/user/img/favicon.ico">

        <!-- CSS 
        ========================= -->

        <!-- Plugins CSS -->
        <link rel="stylesheet" href="./assets/user/css/plugins.css">

        <!-- Main Style CSS -->
        <link rel="stylesheet" href="./assets/user/css/styleHome.css">

    </head>

    <body>

        <!--header area start-->
        <%@include file="header.jsp" %>
        <!--header area end-->

        <!--slider area start-->
        <section class="slider_section slider_s_one mb-40">
            <div class="slider_area owl-carousel">
                <div class="single_slider d-flex align-items-center" data-bgimg="assets/user/img/slider/slider1.webp">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-md-7">
                                <div class="slider_content content_left">
                                    <h1> fashion sale preview</h1>
                                    <h2>50% off</h2>
                                    <p> Look good with fall's fresh take on white shirts with cool blue swaters </p>

                                    <a class="button" href="shop.html">shop Now <i
                                            class="zmdi zmdi-long-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="single_slider d-flex align-items-center" data-bgimg="assets/user/img/slider/slider2.webp">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 offset-lg-6 col-md-6 offset-md-6">
                                <div class="slider_content content_right">
                                    <h1> fashion sale preview</h1>
                                    <h2>50% off</h2>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
                                    <a class="button" href="shop.html">shop Now <i
                                            class="zmdi zmdi-long-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--slider area end-->

        <!--banner area start-->
        <div class="banner_area mb-66">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4">
                        <figure class="single_banner">
                            <div class="banner_thumb">
                                <a href="shop.html"><img src="assets/user/img/bg/banner1.webp" alt=""></a>
                                <div class="banner_conent">
                                    <h3>sale up to</h3>
                                    <h2>50%</h2>
                                    <p>Hoodies <span> & </span> Sweatshirts</p>
                                </div>
                            </div>
                        </figure>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <figure class="single_banner">
                            <div class="banner_thumb">
                                <a href="shop.html"><img src="assets/user/img/bg/banner2.webp" alt=""></a>
                                <div class="banner_conent">
                                    <h3>sale up to</h3>
                                    <h2>70%</h2>
                                    <p>Caps & Hats</p>
                                </div>
                            </div>
                        </figure>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <figure class="single_banner">
                            <div class="banner_thumb">
                                <a href="shop.html"><img src="assets/user/img/bg/banner3.webp" alt=""></a>
                                <div class="banner_conent">
                                    <h3>model & Trending</h3>
                                    <h2>2021</h2>
                                    <p>winter collections</p>
                                </div>
                            </div>
                        </figure>
                    </div>
                </div>
            </div>
        </div>
        <!--banner area end-->

        <!--product area start-->
        <div class="product_area mb-65">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section_title">
                            <h2>S???n Ph???m</h2>
                        </div>
                    </div>
                </div>
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="Men" role="tabpanel">
                        <div class="row">
                            <div class="product_carousel product_column4 owl-carousel">
                                <c:forEach items="${products}" var="product">
                                    <!--item product-->
                                    <div class="col-lg-3">
                                        <div class="product_items">

                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a class="primary_img" href="./productDetail?idProduct=${product.idProduct}"><img
                                                                src="${product.productUrlImage}" alt=""></a>
                                                        <a class="secondary_img" href="./productDetail?idProduct=${product.idProduct}"><img
                                                                src="${product.productUrlImage}" alt=""></a>  
                                                        <div class="action_links">
                                                            <ul>
                                                                <li class="add_to_cart"><a href="./cart"
                                                                                           title="Add to cart"><i
                                                                            class="zmdi zmdi-shopping-cart"></i></a></li>

                                                                <li class="wishlist"><a href="wishlist.html"
                                                                                        title="Add to Wishlist"><i
                                                                            class="zmdi zmdi-favorite-outline"></i></a></li>

                                                                <li class="compare"><a href="#" title="Add to Compare"><i
                                                                            class="zmdi zmdi-shuffle"></i></a></li>

                                                                <li class="quick_button"><a href="#" data-bs-toggle="modal"
                                                                                            data-bs-target="#modal_box" title="quick view"> <i
                                                                            class="zmdi zmdi-eye"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <figcaption class="product_content">
                                                        <h4 class="product_name"><a href="./productDetail?idProduct=${product.idProduct}">${product.productName}</a></h4>
                                                        <div class="price_box">
                                                            <span class="current_price">${product.productPrice} VN??</span>
                                                        </div>
                                                    </figcaption>
                                                </figure>
                                            </article>
                                        </div>
                                    </div>
                                    <!--item product-->
                                </c:forEach>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--product area end-->

        <!--footer area start-->
        <%@include file ="footer.jsp"%>
        <!--footer area end-->

        <!-- JS
    ============================================ -->

        <!-- Plugins JS -->
        <script src="./assets/user/js/plugins.js"></script>

        <!-- Main JS -->
        <script src="./assets/user/js/main.js"></script>



    </body>

</html>