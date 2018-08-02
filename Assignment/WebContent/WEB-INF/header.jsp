<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta  charset="utf-8">
	<title>Insert title here</title>
	<base href="${pageContext.servletContext.contextPath}/">
	
	 <!-- Bootstrap Core CSS -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">

        <!--Custom CSS--> 
        <link href="resources/css/sb-admin.css" rel="stylesheet">

        <!--Morris Charts CSS--> 
        <link href="resources/css/plugins/morris.css" rel="stylesheet">

        <!--Custom Fonts--> 
        <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- jQuery -->
        <script src="resources/js/jquery.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="resources/js/bootstrap.min.js"></script>

        <script>
            $(function () {
                $("a[data-lang]").click(function () {
                    var lang = $(this).attr("data-lang");
                    $.get("ad_index.htm?dashboard&page=dashboard&language=" + lang, function () {
                        location.reload();
                    });
                    return false;
                });
            }
            );
        </script>
    </head>


</head>

<body>
	

<!--         <div id="wrapper"> -->

            <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="ad_index.htm?dashboard&page=dashboard"><i class="fa fa-apple"></i> PK Company</a>
                </div>
                <!-- Top Menu Items -->
                <ul class="nav navbar-right top-nav">
                    <li>
                        <a href="#" data-lang="en">English</a>
                    </li>
                    <li>
                        <a href="#" data-lang="vi">Tiếng Việt</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                        <ul class="dropdown-menu message-dropdown">
                            <li class="message-preview">
                                <a href="#">
                                    <div class="media">
                                        <span class="pull-left">
                                            <img class="media-object" src="http://placehold.it/50x50" alt="">
                                        </span>
                                        <div class="media-body">
                                            <h5 class="media-heading"><strong>John Smith</strong>
                                            </h5>
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                            <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="message-preview">
                                <a href="#">
                                    <div class="media">
                                        <span class="pull-left">
                                            <img class="media-object" src="http://placehold.it/50x50" alt="">
                                        </span>
                                        <div class="media-body">
                                            <h5 class="media-heading"><strong>John Smith</strong>
                                            </h5>
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                            <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="message-preview">
                                <a href="#">
                                    <div class="media">
                                        <span class="pull-left">
                                            <img class="media-object" src="http://placehold.it/50x50" alt="">
                                        </span>
                                        <div class="media-body">
                                            <h5 class="media-heading"><strong>John Smith</strong>
                                            </h5>
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                            <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="message-footer">
                                <a href="#">Read All New Messages</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                        <ul class="dropdown-menu alert-dropdown">
                            <li>
                                <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                            </li>
                            <li>
                                <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                            </li>
                            <li>
                                <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                            </li>
                            <li>
                                <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                            </li>
                            <li>
                                <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                            </li>
                            <li>
                                <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">View All</a>
                            </li>
                        </ul>
                    </li>
                    <li style="font-size: 14px; font-weight: bold;">
                        <a href="home.htm"><i class="fa fa-user"></i> ${user.username} </a>
                    </li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li>
                            <a href="ad_index.htm?dashboard&page=dashboard"><i class="fa fa-fw fa-dashboard"></i> <s:message code="admin.menu.dashboard"/></a>
                        </li>
                        <li>
                            <a href="ad_index.htm?manage-dept&page=manage-dept"><i class="fa fa-fax"></i> <s:message code="admin.menu.depart"/></a>
                        </li>
                        <li>
                            <a href="ad_index.htm?manage-emp&page=manage-emp"><i class="fa fa-users"></i> <s:message code="admin.menu.staff"/></a>
                        </li>

                        <li>
                            <a href="ad_index.htm?fee-emp&page=fee-emp"><i class="fa fa-wifi"></i> <s:message code="admin.menu.Srecords"/> </a>
                        </li>
                        <li>
                            <a href="ad_index.htm?feedback-dept&page=feedback-dept&year=now"><i class="fa fa-wifi"></i> <s:message code="admin.menu.Drecords"/></a>
                        </li>

                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
<!--         </div> -->
</body>
</html>