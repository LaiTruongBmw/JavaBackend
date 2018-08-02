<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %> 
<html>
<head>
<meta charset="utf-8">
<title></title>
	<base href="${pageContext.servletContext.contextPath}/">
	
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
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="home.htm"></a>
            <s:message code="home.menu.dashboard"/>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-left">
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-dashboard"></i>
                        <p class="hidden-lg hidden-md">Dashboard</p>
                    </a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-globe"></i>
                        <b class="caret hidden-sm hidden-xs"></b>
                        <span class="notification hidden-sm hidden-xs">5</span>
                        <p class="hidden-lg hidden-md">
                            5 Notifications
                            <b class="caret"></b>
                        </p>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Notification 1</a></li>
                        <li><a href="#">Notification 2</a></li>
                        <li><a href="#">Notification 3</a></li>
                        <li><a href="#">Notification 4</a></li>
                        <li><a href="#">Another notification</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" data-lang="en">English</a>
                </li>
                <li>
                    <a href="#" data-lang="vi">Tiếng Việt</a>
                </li>
            </ul>
	
            <ul class="nav navbar-nav navbar-right">
             
                <li style="padding-top: 0px;">
                    <a href="user.htm">
                        <img src="${sessionScope.photo}" width="25px" height="25px" class="img-rounded" style="margin-right: 5px;"/> 
                  
												
				
                    </a>
                </li>
                 

<%--                 <% --%>
<!-- //                     String role = (String) request.getSession().getAttribute("role"); -->
<!-- //                     if (role.equals("admin")) { -->
<%--                 %> --%>
                <li>
                    <a href="home/index.htm?dashboard&page=dashboard">
                        <p class="text-danger">*<s:message code="home.menu.admin"/></p>
                    </a>
                </li>
<%--                 <% --%>
<!-- //                     } -->
<%--                 %> --%>

                <li class="separator hidden-lg hidden-md"></li>
            </ul>
        </div>
    </div>
</nav>
</body>
</html>