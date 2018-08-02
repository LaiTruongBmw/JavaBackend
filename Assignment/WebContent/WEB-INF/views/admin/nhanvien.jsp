<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fc"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Nhân Viên</title>

<base href="${pageContext.servletContext.contextPath}/">
<!-- Bootstrap Core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- DataTables CSS -->
<link href="vendor/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link href="vendor/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<!-- online -->
<script language="JavaScript"
	src="https://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"
	type="text/javascript"></script>
<script language="JavaScript"
	src="https://cdn.datatables.net/plug-ins/3cfcc339e89/integration/bootstrap/3/dataTables.bootstrap.js"
	type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="http://cdn.datatables.net/plug-ins/3cfcc339e89/integration/bootstrap/3/dataTables.bootstrap.css">
<script type="text/javascript" src="ckfinder/ckfinder.js"></script>
<style>
.btn {
	display: inline-block;
	padding: 6px 12px !important;
	margin-bottom: 0;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 4px;
}

.user-details {
	position: relative;
	padding: 0;
}

.user-details .user-image {
	position: relative;
	z-index: 1;
	width: 100%;
	text-align: center;
}

.user-image img {
	clear: both;
	margin: auto;
	position: relative;
}

.user-details .user-info-block {
	width: 100%;
	position: absolute;
	top: 55px;
	background: rgb(255, 255, 255);
	z-index: 0;
	padding-top: 35px;
}

.user-info-block .user-heading {
	width: 100%;
	text-align: center;
	margin: 10px 0 0;
}

.user-info-block .navigation {
	float: left;
	width: 100%;
	margin: 0;
	padding: 0;
	list-style: none;
	border-bottom: 1px solid #428BCA;
	border-top: 1px solid #428BCA;
}

.navigation li {
	float: left;
	margin: 0;
	padding: 0;
}

.navigation li a {
	padding: 20px 30px;
	float: left;
}

.navigation li.active a {
	background: #428BCA;
	color: #fff;
}

.user-info-block .user-body {
	float: left;
	padding: 5%;
	width: 90%;
}

.user-body .tab-content>div {
	float: left;
	width: 100%;
}

.user-body .tab-content h4 {
	width: 100%;
	margin: 10px 0;
	color: #333;
}
</style>
<script>
    $(document).ready(function () {
        $('#datatable').dataTable();

        $("[data-toggle=tooltip]").tooltip();

    });
</script>
<!-- <script type="text/javascript"> -->
<!-- //     CKEDITOR.replace("content", { -->
<!-- //         filebrowserBrowseUrl: 'ckfinder/ckfinder.html', -->
<!-- //         filebrowserImageBrowseUrl: 'ckfinder/ckfinder.html?type=Images', -->
<!-- //         filebrowserFlashBrowseUrl: 'ckfinder/ckfinder.html?type=Flash', -->
<!-- //         filebrowserUploadUrl: 'ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files', -->
<!-- //         filebrowserImageUploadUrl: 'ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images', -->
<!-- //         filebrowserFlashUploadUrl: 'ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash' -->
<!-- //     }); -->
<!-- </script> -->
<script type="text/javascript">
    function BrowseServer(startupPath, functionData) {
        var finder = new CKFinder();
        finder.basePath = 'ckfinder/'; //Đường path nơi đặt ckfinder
        finder.startupPath = startupPath; //Đường path hiện sẵn cho user chọn file
        finder.selectActionFunction = SetFileField; // hàm sẽ được gọi khi 1 file được chọn
        finder.selectActionData = functionData; //id của text field cần hiện địa chỉ hình
        //finder.selectThumbnailActionFunction = ShowThumbnails; //hàm sẽ được gọi khi 1 file thumnail được chọn	
        finder.popup(); // Bật cửa sổ CKFinder
    }

    function SetFileField(fileUrl, data) {
        document.getElementById(data["selectActionData"]).value = fileUrl;
        $("#anhdaidien").attr('src', fileUrl);
    }

    function ShowThumbnails(fileUrl, data) {
        var sFileName = this.getSelectedFile().name; // this = CKFinderAPI
        document.getElementById('thumbnails').innerHTML +=
                '<div class="thumb">' +
                '<img src="' + fileUrl + '" />' +
                '<div class="caption">' +
                '<a href="' + data["fileUrl"] + '" target="_blank">' + sFileName + '</a> (' + data["fileSize"] + 'KB)' +
                '</div>' +
                '</div>';
        document.getElementById('preview').style.display = "";
        return false; // nếu là true thì ckfinder sẽ tự đóng lại khi 1 file thumnail được chọn
    }
</script>


<script type="text/javascript">

    function viewDetail(id) {
        $.post('ViewDetailServlet', {'id': id}, function (data) {
            $(".modal-body").html(data);
        });
    }

    function deleteEmp(id) {
        $.post('Del_emp', {'id': id}, function (data) {
            $(".confirm").html(data);
        });
    }

    function getUsername() {
        var name = $("#name").val();
        $.post('Username', {'name': name}, function (data) {
            $("#username").val(data);
            $("#email_input").val(data + "@gmail.com");
        });
    }

    function Inhoa() {
        var name = $("#name").val();
        $.post('Inhoa', {'name': name}, function (data) {
            $("#name").val(data);
        });
    }



</script>
<script>
    function setID(value) {
        $.post('Deparment_Servlet', {'action': 'setID', 'name': value}, function (data) {
            document.getElementById('txtID').value = data;
        });
    }

    function editEmp(id) {
        document.getElementById('txtidEdit').value = id;
        
    }

    function deleteEmp(id) {
        document.getElementById('txtidDel').value = id;
    }

    function showAdd() {
        var status = document.getElementById("btnThemMoi").value;
        if (status === '+ Add new') {
            $("#new").slideDown();
            document.getElementById("btnThemMoi").value = 'Cancel';
        } else {
            $("#new").slideUp();
            document.getElementById("btnThemMoi").value = '+ Add new';
        }
    }
</script>

</head>

<body>

	<div id="wrapper">

		<%@include file="header.jsp"%>

		<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							Dashboard <small>Statistics Overview</small>
						</h1>
						<ol class="breadcrumb">
							<li class="active"><i class="fa fa-dashboard"></i> Dashboard
							</li>
						</ol>
					</div>
				</div>
				<!-- /.row -->

				<div class="row" id="insert">
					<div class="col-md-12 col-md-offset-0">
						<h3 class="text-center">
							<b>NHÂN VIÊN</b>
						</h3>
						<form action="admin/btnUpdate.htm" method="get"
							accept-charset="utf-8">
							<input type="hidden" id="txtidEdit" name="idEmpD" />
							<div class="col-md-4 col-md-offset-0">
								<input class="form-control" type="hidden" name="id"
									value="${emp_edit.id}"></input>
								<div class="form-group">
									<label for="">Họ va tên</label> <input class="form-control"
										type="text" id="name" name="name"
										onkeyup="Inhoa(), getUsername()" value="${emp_edit.name}"
										.
																			required=""></input>
								</div>

								<div class="form-group">
									<label for="">Ngày Sinh</label> <input class="form-control"
										type="date" name="birthday" value="${emp_edit.birthday}"
										max="1999-12-31" min="1968-01-01" required="">
								</div>

								<div class="form-group">
									<label for="">Giới Tính</label> <br>
									<p class="text-primary">
										<input name="gender" type="radio" value="true"
											checked="checked" /> Male
									</p>
									<p class="text-primary">
										<input name="gender" type="radio" value="false"
											<c:choose><c:when test="${emp_edit.gender == 'false'}">checked="checked"</c:when></c:choose> />
										Female
									</p>
								</div>
							</div>

							<div class="col-md-4 col-md-offset-0">
								<div class="form-group">
									<label for="">Email</label> <input class="form-control"
										type="text" name="email" id="email_input"
										value="${emp_edit.email}"></input>
								</div>
								<!-- 						readonly="true"  lock k cho nhap-->
								<div class="form-group">
									<label for="">Username</label> <input class="form-control"
										type="text" id="username" name="username"
										value="${emp_edit.username}"></input>
								</div>

								<div class="form-group">
									<label for="">Lương</label> <input class="form-control"
										type="number" name="salary" value="${emp_edit.salary}"
										required=""></input>
								</div>
							</div>

							<div class="col-md-4 col-md-offset-0">

								<div class="form-group">
									<label for="">Phòng Ban</label> <select class="form-control"
										name="department">

										<c:forEach items="${listD}" var="dept">
											<%--                                     	<option  value="${dept.id}" <c:choose><c:when test="${emp_edit.department == dept.name}">selected="selected"</c:when></c:choose>>${dept.name}</option>   --%>
											<option value="${dept.id}" >${dept.name}</option>
										</c:forEach>

									</select>
								</div>

								<div class="form-group">
									<label for="">Phân Quyền</label> <select class="form-control"
										name="role">
										<c:forEach items="${list_empt}" var="empt">
										<option value="${empt.role}">${empt.role}</option>
										</c:forEach>
									</select>

								</div>
								<div class="form-group">
									<label for="">Điện Thoại</label> <input class="form-control"
										type="number" name="phone" value="${emp_edit.phone}"
										required=""></input>
								</div>
								<div class="form-group">
									<label for="">Ảnh Đại Diện</label><br> <img
										id="anhdaidien" src="${emp_edit.photo}" width="70px"
										height="70px" class="img-circle"
										style="float: left; margin: 10px;" /> <input
										class="form-control" type="hidden"
										style="width: 71%; margin: 10px;" name="photo" id="urlHinh"
										value="${emp_edit.photo}"> <input type="button"
										class="btn btn-warning" name="btn-choose" id="btn-choose"
										value="Chọn File"
										onclick="BrowseServer('Images:/', 'urlHinh')">
								</div>
							</div>

							<p class="text-danger">${msg}</p>
							<button name="btnInsert" class="btn btn-primary btn-sm"
								<c:choose><c:when test="${emp_edit.id > 0}">disabled="disabled"</c:when></c:choose>>Thêm</button>
							<button type="submit" class="btn btn-success btn-sm"
								<c:choose><c:when test="${emp_edit.id == null}">disabled="disabled"</c:when></c:choose>>Cập
								nhật</button>
							<a href="ad_index.htm?manage-emp&page=manage-emp"
								class="btn btn-default btn-sm">Nhập lại</a>
						</form>
					</div>

					<div class="row col-md-12 col-md-offset-0 custyle">
						<hr>
						${message}

					</div>
				</div>
				<!-- /.row -->

			</div>
			<!-- /.container-fluid -->


			<div class="row">

				<div class="col-md-12">


					<table id="datatable" class="table table-striped table-bordered"
						cellspacing="0" width="100%">
						<thead>
							<tr>
								<th>Full Name</th>
								<th>Department</th>
								<th>Username</th>
								<th>Email</th>
								<th>Phone</th>
								<th>Salary</th>
								<th>Role</th>

								<th>View</th>
								<th>Action</th>
								<!--                         <th>Delete</th> -->
							</tr>
						</thead>

						<tfoot>
							<tr>
								<th>Full Name</th>
								<th>Department</th>
								<th>Username</th>
								<th>Email</th>
								<th>Phone</th>
								<th>Salary</th>
								<th>Role</th>

								<th>View</th>
								<th>Action</th>
								<!--                         <th>Delete</th> -->
							</tr>
						</tfoot>

						<tbody>
							<c:forEach items="${list_empt}" var="emp">
								<tr>
									<td>${emp.name}</td>
									<td>${emp.depart.name}</td>
									<td>${emp.username}</td>
									<td>${emp.email}</td>
									<td>${emp.phone}</td>
									<td><fc:formatNumber value="${emp.salary}" type="currency" /></td>
									<td>${emp.role}</td>
									<td><p data-placement="top" title="Detail">
											<button class="btn btn-primary btn-xs" data-title="Detail"
												data-toggle="modal" data-target="#view"
												onclick="editEmp(${emp.id})">
												<span class="glyphicon glyphicon-search"></span> Detail
											</button>
										</p></td>
									<td><a class='btn btn-info btn-xs'
										href="admin/edit.htm?id=${emp.id}"><span
											class="glyphicon glyphicon-edit" style="padding: 3px;"></span></a>
										<%-- <button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" onclick="editEmp(${emp.id})"><span class="glyphicon glyphicon-edit" style="padding: 3px;"></span></button> --%>
										<p data-placement="top" data-toggle="tooltip" title="Delete"
											style="float: right;">
											<button class="btn btn-danger btn-xs" data-title="Delete"
												data-toggle="modal" data-target="#delete"
												onclick="deleteEmp(${emp.id})">
												<span class="glyphicon glyphicon-trash"
													style="padding: 3px;"></span>
											</button>
										</p></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>


				</div>
			</div>



			<div class="modal fade" id="delete" tabindex="-1" role="dialog"
				aria-labelledby="edit" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title custom_align" id="Heading">Delete
								this entry</h4>
						</div>
						<div class="modal-body">
							<div class="alert alert-danger">
								<span class="glyphicon glyphicon-warning-sign"></span> Are you
								sure you want to delete this Staff ?
							</div>
						</div>
						<div class="modal-footer ">
							<form action="admin/btndelEmp.htm">
								<input type="hidden" id="txtidDel" name="idEmp" />
								<button class="btn btn-danger" type="submit">
									<span class="glyphicon glyphicon-ok-sign"></span> Yes
								</button>

								<button class="btn btn-default" data-dismiss="modal">
									<span class="glyphicon glyphicon-remove"></span> No
								</button>
							</form>
						</div>
					</div>

					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- End Delete Emp -->


		</div>
		<!-- /#wrapper -->

		<!-- jQuery -->
		<script src="vendor/jquery/jquery.min.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

		<!-- Metis Menu Plugin JavaScript -->
		<script src="vendor/metisMenu/metisMenu.min.js"></script>

		<!-- DataTables JavaScript -->
		<script src="vendor/datatables/js/jquery.dataTables.min.js"></script>
		<script src="vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
		<script src="vendor/datatables-responsive/dataTables.responsive.js"></script>

		<!-- Custom Theme JavaScript -->
		<script src="dist/js/sb-admin-2.js"></script>

		<!-- Page-Level Demo Scripts - Tables - Use for reference -->
		<script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>
</body>

</html>
