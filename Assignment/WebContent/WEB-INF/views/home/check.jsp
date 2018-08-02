<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>   
<html>
<head>
<meta charset="utf-8">
<title></title>
	<base href="${pageContext.servletContext.contextPath}/">
</head>
<body>
	<script type="text/javascript">
    function inserNote(id) {
        var note = document.getElementById('note').value;
        if (note.length > 0) {
            $.post('Check', {'action': 'insert', 'id': id, 'note': note}, function (html) {
                $(".list").html(html);
            });
        }
        $('#note').val("");
    }

    function deleteNote(id) {
        $.post('Check', {'action': 'delete', 'id': id}, function (html) {
            $(".list").html(html);
        });
    }

    function checkedNote(id) {
        $.post('Check', {'action': 'checked', 'id': id}, function (html) {
        });
    }

    window.onload = function List() {
        $.post('Check', {'action': 'list'}, function (html) {
            $(".list").html(html);
        });

    };
</script>
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
<style>

</style>
<div class="col-md-5">
    <div class="card ">
        <div class="header">
            <h4 class="title">Tasks</h4>
            <p class="category">Backend development</p>
        </div>
        <div class="content">
            <div class="table-full-width">
                <table class="table">
                    
                    <tbody class="list">

                      
                    </tbody>
                </table>
            </div>
            <form>
                <div class="input-group">
                    <textarea style="float: left; width: 270px; margin-right: 10px; border: #ccccff solid 1px; border-radius: 2px;" id="note" required=""></textarea>
                    <button type="button" class="btn btn-info" onclick="inserNote(${sessionScope.id})">submit</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>