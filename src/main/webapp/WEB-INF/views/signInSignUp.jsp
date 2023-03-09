<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

    <head>
        <title style="color: brown">LOGIN/SIGN UP WITH ZAUR</title>
        <meta name="author" content="Zaur">
        <meta name="keywords" content="technology, cyber security, software">
        <meta http-equiv="refresh" content="100">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <link rel="stylesheet" href="./assets/user/css/styleSignInSignUp.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body>
        <!--header area start-->

        <!--header area end-->
        
        <div class="container" id="container"> 
            <!--form sign up-->
            <div class="form-container  sign-up-container">
                <form action="" method="POST" name="signUp">
                    <c:if test="${not empty msg}">
                        <div class="form-group"><p>${msg}</p></div>
                            </c:if>
                    <div class="header">Sign Up</div>
                    <div class="social__media__container">
                        <a href="https://codepen.io/Rittenhouse" target="_blank" class="social codepen">
                            <i class="fa-brands fa-facebook"></i>
                        </a>
                        <a href="#" class="social google">
                            <i class="fa-brands fa-google"></i>
                        </a>
                        <a href="https://www.instagram.com/zaur.suleymnv/" target="_blank" class="social codepen">
                            <i class="fa-brands fa-instagram"></i>
                        </a>
                    </div>
                    <span class="under__social">
                        <a href="#" class="link signin-link">or use your email for registration
                        </a>
                    </span>

                    <div class="button-input-group">
                        <div class="group input-group">
                            <input type="text" name="firstName1" placeholder="Name" required >
                        </div>
                        <div class="group input-group">
                            <input type="email" name="email1" placeholder="Email" required>
                        </div>
                        <div class="group input-group">
                            <input type="password" name="password1" placeholder="Password" required pattern=".{8,}">
                        </div>
                        <div class="group input-group">
                            <input type="password" name="password2" placeholder="Confirm your password"  required pattern=".{8,}">
                        </div>
                        <div class="alert-text signup__alert">
                            <span class="help__text">At least 8 character</span>
                        </div>
                        <div class="group button-group">
                            <button class="signup-btn" onclick="">Sign Up</button>
                        </div>
                    </div>

                </form>
            </div>
            <!--end form sign up-->
            <!--form sign in-->
            <div class="form-container  sign-in-container">
                <form action="" method="POST" name="signIn" >
                    <c:if test="${not empty msg}">
                        <div class="form-group"><p>${msg}</p></div>
                            </c:if>
                    <div class="header">Sign In</div>
                    <div class="social__media__container">
                        <a href="" target="_blank" class="social codepen">
                            <i class="fa-brands fa-facebook"></i>
                        </a>
                        <a href="#" class="social google">
                            <i class="fa-brands fa-google"></i>
                        </a>
                        <a href="" target="_blank" class="social codepen">
                            <i class="fa-brands fa-instagram"></i>
                        </a>
                    </div>
                    <span class="under__social">
                        <a href="#" class="link signup-link">or use your account</a>
                    </span>

                    <div class="button-input-group">
                        <div class="group input-group">
                            <input type="email" name="email" placeholder="Email"  required pattern=".{8,}">
                        </div>
                        <div class="group input-group">
                                <input type="password" name="password" placeholder="Password"  required pattern=".{8,}">
                        </div>
                        <div class="alert-text signup__alert">
                            <span class="help__text">At least 8 character</span>
                        </div>
                        <div class="form-link forgot">
                            <a href="#" class="login-link">Forgot your password?</a>
                        </div>
                        <div class="group button-group">
                            <button class="signin-btn" onclick="">Sign in</button>
                        </div>
                    </div>
                </form>
            </div>
            <!--end form sign in-->
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1>Welcome Back!</h1>
                        <p>Please login your personal info</p>

                        <div class="group button-group">
                            <button class="ghost" id="signIn">Sign in</button>
                        </div>
                        <footer>

                        </footer>
                    </div>

                    <div class="overlay-panel overlay-right">
                        <h1>Hello, Friend!</h1>
                        <p>Enter your personal details and start your journey with us</p>

                        <div class="group button-group">
                            <button class="ghost" id="signUp">Sign up</button>
                        </div>
                        <footer>

                        </footer>
                    </div>
                </div>
            </div>

        </div>

        <script src="./assets/user/js/index.js"></script>
    </body>
</html>