<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<html>
<head>
<meta charset="utf-8">
<title></title>
	<base href="${pageContext.servletContext.contextPath}/">
	
<link rel="stylesheet" type="text/css" href="assets/css/demo_1.css" />
<link rel="stylesheet" type="text/css" href="assets/css/common.css" />
<link rel="stylesheet" type="text/css" href="assets/css/style2.css" />
<link rel="stylesheet" type="text/css" href="assets/css/normalize.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,700' rel='stylesheet' type='text/css' />
<script type="text/javascript" src="assets/js/modernizr.custom.79639.js"></script> 
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
<div class="col-md-12">

    <header>

        <h1><strong>Circle</strong> Hover Effects</h1>
        <h2>Pretty hover effects on circles with CSS Transitions</h2>



        <div class="support-note">
            <span class="no-csstransforms">CSS transforms are not supported in your browser</span>
            <span class="no-csstransitions">CSS transitions are not supported in your browser</span>
            <span class="note-ie">Sorry, only modern browsers.</span>
        </div>

    </header>

    <section class="main">

        <ul class="ch-grid">
            
            <%int i = 0;%>
            <c:forEach items="${listTOP}" var="row">

                <li>
                    <div class="ch-item ch-img-2" style="background: url(${row.photo});background-size: 220px 220px;background-repeat: no-repeat;">
                        <div class="ch-info">
                            <h3>${row.username}</h3>
                            <p style="font-weight: bold; font-size: 20px;">${row.name} <a href="http://drbl.in/eNXW">${row.department}</a></p>
                        </div>
                    </div>
                </li>  
                <%
                    if (i == 0) {
                %>
            </ul>
            <ul class="ch-grid">
                <%
                    }
                %>
                <%i++;%>
            </c:forEach>


        </ul>

    </section>

</div>
</body>
</html>