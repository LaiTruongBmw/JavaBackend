<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<div class="col-md-7">
    <!--post-->
    <div class="panel panel-info">
        <div class="panel-heading">
            <span class="fa fa-newspaper-o"></span> Chat
        </div>
        <div class="panel-body">
            <ul class="chat" style="height: 500px; overflow-y: auto;">
                <%int i = 1;%>
                <c:forEach var="row" items="${list_post}">
                    <li class="left clearfix" style="padding: 10px;"><span class="chat-img pull-left">
                            <img src="${row.photo}" width="50px" height="50px" alt="User Avatar" class="img-circle" />
                        </span>
                        <div class="chat-body clearfix">
                            <div class="header">
                                <strong class="primary-font">${row.subject}</strong> <small class="pull-right text-muted">
                                    <span class="fa fa-clock-o"></span>${row.date}</small>
                            </div>
                            <p>
                                ${row.detail}
                            </p>
                        </div>
                    </li> 
                    <% i++;%>
                </c:forEach>
            </ul>
        </div>

    </div>
    <!--post-->
    <!--timeline-->

    <!--timeline-->
</div>
</body>
</html>