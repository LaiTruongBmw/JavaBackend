<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>LaiTruong Company</title>
</head>
<body>
	<script>
    $(function () {
        $("a[data-lang]").click(function () {
            var lang = $(this).attr("data-lang");
            $.get("index.htm?language=" + lang, function () {
                location.reload();
            });
            return false;
        });
    }
    );
</script>
<nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
    <div class="container topnav">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand topnav" href="#"><i class="fa fa-apple"></i> LaiTruong Company</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#about">About Us </a>
                </li>
                <li>
                    <a href="#services">Services </a>
                </li>
                <li>
                    <a href="#contact">Contact </a>
                </li>
                <li>
                    <a href="#" data-lang="en">English</a>
                </li>
                <li>
                    <a href="#" data-lang="vi">Tiếng Việt</a>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login </b> <span class="caret"></span></a>
                    <ul id="login-dp" class="dropdown-menu">
                        <li>
                            <div class="row">
                                <div class="col-md-12">
                                    Sign in 
                                    <div class="social-buttons">
                                        <a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
                                        <a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
                                    </div>
                                    or 
                                    <form class="form" role="form" method="post" action="login.htm" accept-charset="UTF-8" id="login-nav">
                                        <div class="form-group">
                                            <label class="sr-only" for="exampleInputEmail2">Email address</label>
                                            <input type="text" name="username" value="" class="form-control" id="exampleInputEmail2" placeholder="Username" required>
                                        </div>
                                        <div class="form-group">
                                            <label class="sr-only" for="exampleInputPassword2">Password</label>
                                            <input type="password" name="password" value="" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
                                            <div class="help-block text-right"><a href="javascript:;" class="forget" data-toggle="modal" data-target=".forget-modal">Forget the password ? </a></div>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary btn-block">Sign in </button>
                                        </div>
										
                                        <div class="checkbox">
                                          <label>
                                                <input type="checkbox" name="remember"> keep me logged-in
                                            </label>
                                        </div>
                                         <div class="form-group">
										<!--Show message -->
                                            <div style="color: red;">${message}</div>
                                        </div>
                                    </form>
                                </div>
                                <div class="bottom text-center">
                                    <a href="#"><b><i class="fa fa-apple"></i> LaiTruong Company</b></a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
</body>
</html>