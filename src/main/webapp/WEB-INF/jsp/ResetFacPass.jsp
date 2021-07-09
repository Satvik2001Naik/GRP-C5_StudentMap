<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Change Password</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesdesign" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/graduateicon.ico">
        <!-- Bootstrap Css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" />
    </head>
    <body class="bg-primary bg-pattern">
        <div class="home-btn d-none d-sm-block">
            <a class="btn btn-danger" href="/logout" role="button">Logout</a>
            <!-- <a href="index.html"><i class="mdi mdi-home-variant h2 text-white"></i></a> -->
        </div>

        <div class="account-pages my-5 pt-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center mb-5">
                            <!-- <a class="btn btn-success" href="#" role="button">${sessionScope.mail}</a> -->
                            <!-- <a href="index.html" class="logo"><img src="assets/images/logo-light.png" height="24" alt="logo"></a> -->
                            <h1>Welcome, ${sessionScope.mail}</h1>
                        </div>
                    </div>
                </div>
                <!-- end row -->

                <div class="row justify-content-center">
                    <div class="col-lg-5">
                        <div class="card">
                            <div class="card-body p-4">
                                <div class="p-2">
                                    <h5 class="mb-5 text-center">Change Password</h5>
                                    <c:if test="${not empty error}">
                                        <div><h2><script>alert("${error}")</script></h2></div>
                                    </c:if>
                                    <form class="form-horizontal" action="/upFacPass" method="POST">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="alert alert-warning alert-dismissible">
                                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
                                                    Enter your <b>new password</b> and save it and login again.
                                                </div>

                                                <div class="form-group mt-4">
                                                    <label for="useremail">New Password</label>
                                                    <input type="password" name="pass" class="form-control" id="useremail" placeholder="Enter Your New Password">
                                                </div>
                                                <div class="form-group mt-4">
                                                    <label for="useremail">Confirm Password</label>
                                                    <input type="password" name="confpass" class="form-control" id="useremail" placeholder="Rewrite password to confirm">
                                                </div>
                                                <div class="mt-4">
                                                    <button class="btn btn-success btn-block waves-effect waves-light" type="submit">Save Password</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end row -->
            </div>
        </div>
        <!-- end Account pages -->
        <!-- JAVASCRIPT -->
        <script src="assets/libs/jquery/jquery.min.js"></script>
        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/libs/metismenu/metisMenu.min.js"></script>
        <script src="assets/libs/simplebar/simplebar.min.js"></script>
        <script src="assets/libs/node-waves/waves.min.js"></script>
        <script src="assets/js/app.js"></script>
    </body>
</html>