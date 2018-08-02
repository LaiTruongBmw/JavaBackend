<%@ page pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Phòng Ban</title>
	<base href="${pageContext.servletContext.contextPath}/">
    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!-- online -->
<script language="JavaScript" src="https://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script language="JavaScript" src="https://cdn.datatables.net/plug-ins/3cfcc339e89/integration/bootstrap/3/dataTables.bootstrap.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/plug-ins/3cfcc339e89/integration/bootstrap/3/dataTables.bootstrap.css">
<script>
    window.onload = function on() {
        $("#new").hide();
    };

    $(document).ready(function () {
        $('#datatable').dataTable();

        $("[data-toggle=tooltip]").tooltip();

    });
</script>
<style>
    @import url(http://fonts.googleapis.com/css?family=Open+Sans:400,600);

    .form-control{
        background: transparent;
    }
    form {
        width: 320px;
        margin: 20px;
    }
    form > div {
        position: relative;
        overflow: hidden;
    }
    form input, form textarea {
        width: 100%;
        border: 2px solid gray;
        background: none;
        position: relative;
        top: 0;
        left: 0;
        z-index: 1;
        padding: 8px 12px;
        outline: 0;
    }
    form input:valid, form textarea:valid {
        background: white;
    }
    form input:focus, form textarea:focus {
        border-color: #357EBD;
    }
    form input:focus + label, form textarea:focus + label {
        background: #357EBD;
        color: white;
        font-size: 70%;
        padding: 1px 6px;
        z-index: 2;
        text-transform: uppercase;
    }
    form label {
        -webkit-transition: background 0.2s, color 0.2s, top 0.2s, bottom 0.2s, right 0.2s, left 0.2s;
        transition: background 0.2s, color 0.2s, top 0.2s, bottom 0.2s, right 0.2s, left 0.2s;
        position: absolute;
        color: #999;
        padding: 7px 6px;
        font-weight: normal;
    }
    form textarea {
        display: block;
        resize: vertical;
    }
    form.go-bottom input, form.go-bottom textarea {
        padding: 12px 12px 12px 12px;
    }
    form.go-bottom label {
        top: 0;
        bottom: 0;
        left: 0;
        width: 100%;
    }
    form.go-bottom input:focus, form.go-bottom textarea:focus {
        padding: 4px 6px 20px 6px;
    }
    form.go-bottom input:focus + label, form.go-bottom textarea:focus + label {
        top: 100%;
        margin-top: -16px;
    }
    form.go-right label {
        border-radius: 0 5px 5px 0;
        height: 100%;
        top: 0;
        right: 100%;
        width: 100%;
        margin-right: -100%;
    }
    form.go-right input:focus + label, form.go-right textarea:focus + label {
        right: 0;
        margin-right: 0;
        width: 40%;
        padding-top: 5px;
    }
</style>
<script>
    function setID(value) {
        $.post('Deparment_Servlet', {'action': 'setID', 'name': value}, function (data) {
            document.getElementById('txtID').value = data;
        });
    }

    function editDept(id, name) {
        document.getElementById('txteditID').value = id;
        document.getElementById('txteditName').value = name;
    }

    function delDept(id) {
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

        <%@include file="header.jsp" %>

        <div id="page-wrapper">

    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Dashboard <small>Statistics Overview</small>
                </h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <i class="fa fa-dashboard"></i> Dashboard
                    </li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <div class="row" id="new">
            <form action="btnAddDept.htm" class="col-md-6 col-md-offset-1">
                <h2>Form To Right</h2>
                <p>To see how it works, you clink in a input field.</p>
                <div class="form-group" style="width: 20%;">
<!--                 readonly="true" lock k cho nhap-->
                    <input name="id" type="text" class="form-control" required placeholder="ID" id="txtID" >
                </div>
                <div class="form-group">
                    <input id="name" name="name" type="text" class="form-control" required placeholder="Deparment name" onkeyup="setID(this.value)">
                </div>
                <button type="submit" class="btn btn-primary btn-sm" >Create</button>
                <button type="reset" class="btn btn-default btn-sm" >Reset</button>
            </form>
        </div>




        <div class="row">
            <input type="submit" class="btn btn-primary btn-sm pull-right" style="margin: 20px;" value="+ Add new" id="btnThemMoi" onclick="showAdd()"/>
            <div class="col-md-12">

                <table id="datatable" class="table table-striped table-bordered" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                        	<th>ID</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Image</th>
                            <th>Date</th>
                            <th>Action</th>
                        </tr>
                    </thead>

                    <tfoot>
                        <tr>
                           <th>ID</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Image</th>
                            <th>Date</th>
                            <th>Action</th>
                        </tr>
                    </tfoot>

                    <tbody>
                        <c:forEach var="row" items="${listD}">
                            <tr>
                                <td>${row.id}</td>
                                <td>${row.name}</td>
                                
                                <td>
                                    <button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" onclick="editDept('${row.id}', '${row.name}')"><span class="glyphicon glyphicon-pencil" style="padding: 8px;"></span></button>
                                    <button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" onclick="delDept('${row.id}')"><span class="glyphicon glyphicon-trash" style="padding: 8px;"></span></button>
                                </td>
                            </tr> 
                        </c:forEach>
                    </tbody>
                </table>


            </div>
        </div>
    </div>

    <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title custom_align" id="Heading">Edit Your Depertment</h4>
                </div>

                <div class="modal-body">
                    <form style="width: 90%;" action="btnEditDept.htm">
                        <div class="form-group" style="width: 20%;">
                            <input class="form-control " name="id" type="text" placeholder="ID" id="txteditID" readonly="true">
                        </div>
                        <div class="form-group">
                            <input class="form-control" name="name" type="text" placeholder="Departname" id="txteditName">
                        </div>
                        <button type="submit" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
                    </form>
                </div>

            </div>
            <!-- /.modal-content --> 
        </div>
        <!-- /.modal-dialog --> 
    </div>



    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
                </div>
                <div class="modal-body">
                    <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Depart ?</div>
                </div>
                <div class="modal-footer ">
                    <form action="btndelDept.htm">
                        <input type="hidden" id="txtidDel" name="idDel"/>
                        <button class="btn btn-danger" type="submit"><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
                        <button class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
                    </form>
                </div>
            </div>
            <!-- /.modal-content --> 
        </div>
        <!-- /.modal-dialog --> 
    </div>


	</div>
</div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

</body>

</html>
