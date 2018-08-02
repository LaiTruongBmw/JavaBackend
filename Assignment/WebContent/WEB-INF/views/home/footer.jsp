<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<html>
<head>
<meta charset="utf-8">
<title></title>
	<base href="${pageContext.servletContext.contextPath}/">
</head>
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
<body>
<footer class="footer">
    <div class="container-fluid">
        <nav class="pull-left">
            <ul>
                <li>
                    <a href="home.htm">
                        <s:message code="home.menu.dashboard"/>
                    </a>
                </li>
                <li>
                    <a href="user.htm">
                        <s:message code="home.menu.user"/>
                    </a>
                </li>
                <li>
                    <a href="top10.htm">
                        <s:message code="home.menu.top"/>
                    </a>
                </li>
            </ul>
        </nav>
        <p class="copyright pull-right">
            &copy; <script>document.write(new Date().getFullYear())</script> <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web
        </p>
    </div>
</footer>
</body>
</html>