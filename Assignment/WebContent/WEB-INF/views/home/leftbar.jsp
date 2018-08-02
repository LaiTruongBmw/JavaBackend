<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
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
	<div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">
    <div class="sidebar-wrapper">
        <div class="logo">
            <a href="home.htm" class="simple-text">
                <i class="fa fa-apple"></i>LaiTruong Company</a>
            </a>
        </div>

        <ul class="nav">
            <li>
                <a href="home.htm">
                    <i class="pe-7s-graph"></i>
                    <p><s:message code="home.menu.dashboard"/></p>
                </a>
            </li>
            <li>
                <a href="user.htm">
                    <i class="pe-7s-user"></i>
                    <p><s:message code="home.menu.user"/></p>
<!-- 				<p>User Profile</p> -->
                </a>
            </li>
<!--            <li>
                <a href="user.htm">
                    <i class="pe-7s-note2"></i>
                    <p>User</p>
                </a>
            </li>-->
            <li>
                <a href="top10.htm">
                    <i class="pe-7s-news-paper"></i>
                    <p><s:message code="home.menu.top"/></p>
<!-- 					<p>Top #10</p> -->
                </a>
            </li>

            <li class="active-pro">
                <a href="logout.htm">
                    <i class="pe-7s-rocket"></i>
<!--                     <p>Sign Out</p> -->
                    <p><s:message code="home.menu.signout"/></p>
                </a>
            </li>
        </ul>
    </div>
</div>
</body>
</html>