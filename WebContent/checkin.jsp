<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Library</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/sb-admin.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="css/plugins/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp">Library</a>
		</div>
		<!-- Top Menu Items
            <ul class="nav navbar-right top-nav">
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
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
             --> <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav side-nav">
				<li><a href="index.jsp"><i class="fa fa-fw fa-dashboard"></i>
						Home</a></li>
				<li><a href="search.jsp"><i class="fa fa-fw fa-edit"></i>
						Search</a></li>
				<li class="active"><a href="javascript:;"
					data-toggle="collapse" data-target="#demo"><i
						class="fa fa-fw fa-book"></i> Book <i
						class="fa fa-fw fa-caret-down"></i></a>
					<ul id="demo" class="collapse in">
						<li><a href="checkout.jsp">Check out</a></li>
						<li><a href="checkin.jsp">Check in</a></li>
					</ul></li>
				<li><a href="javascript:;" data-toggle="collapse"
					data-target="#mgt"><i class="fa fa-fw fa-desktop"></i>
						Management <i class="fa fa-fw fa-caret-down"></i></a>
					<ul id="mgt" class="collapse">
						<li><a href="update.jsp">Update Fines</a></li>
						<li><a href="pay.jsp">Pay Fine</a></li>
						<li><a href="addUser.jsp">Add User</a></li>
					</ul></li>

			</ul>
		</div>
		<!-- /.navbar-collapse --> </nav>

		<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							Check In <small>Book</small>
						</h1>
						<!--  
                        <ol class="breadcrumb">
                            <li class="active">
                                <i class="fa fa-dashboard"></i> Dashboard
                            </li>
                        </ol>
                        -->
					</div>
				</div>
				<!-- /.row -->

				<!-- combination search area -->
				<div class="row">
					<div class="col-lg-6">
						<form role="form">
							<div class="form-group">
								<label>Search by ISBN</label> <input id="isbn"
									class="form-control" placeholder="Enter ISBN">
							</div>
						</form>
						<form role="form">
							<div class="form-group">
								<label>Search by CardNo</label> <input id="cardid"
									class="form-control" placeholder="Enter card id">
							</div>
						</form>
					</div>
					<div class="col-lg-6">
						<form role="form">
							<div class="form-group">
								<label>Search by Borrower Name</label> <input id="bname"
									class="form-control" placeholder="Enter Name">
							</div>

						</form>


					</div>
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-6" id="msg">
						<!--  <div id="msg" class="alert"></div> -->
					</div>
					<div class="col-lg-3">
						<div class="form-group">
							<fieldset>
								<button type="submit" class="btn btn-primary btn-block"
									onclick="search();">Search</button>
							</fieldset>

						</div>
					</div>
					<div class="col-lg-3">
						<div class="form-group">
							<fieldset>
								<button type="submit" class="btn btn-success btn-block"
									onclick="checkin();">CheckIn</button>
							</fieldset>

						</div>
					</div>
					<!-- /.row -->

				</div>
				<!-- display result area-->
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<i class="fa fa-book fa-fw"></i> Search Result
								</h3>
							</div>
							<div class="panel-body">
								<div id="search-responisve" class="table-responsive">
									<!-- display search result -->
									<!-- able to select -->
									
								</div>

							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->

			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->
	<script type="text/javascript">
		function search() {
			var isbn = document.getElementById("isbn").value;
			var cardid = document.getElementById("cardid").value;
			var bname = document.getElementById("bname").value;
			var datastr = "isbn=" + isbn + "&" + "cardid=" + cardid + "&"
					+ "bname=" + bname;
			$.ajax({
				url : "checkIn",
				data : datastr,
				type : 'POST',
				async : false,
				success : function(html) {
					$("#search-responisve").html(html);
				},
				error : function(html) {
					$("#search-responisve").html("oops!!");
				}
			});
			//alert("x value:"+x);
		}
		function checkin() {
			var isbn = document.getElementById("sel").value;
			if(isbn!=null && isbn!=""){
			$.ajax({
				url : "returnBook",
				data : "isbn="+isbn,
				type : 'POST',
				async : false,
				success : function(html) {
					$("#search-responisve").html(html);
				},
				error : function(html) {
					$("#search-responisve").html("oops!!");
				}
			});
			}
			else {alert("please choose isbn to return");}
			//alert("x value:"+x);
		}
	</script>
	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script src="js/plugins/morris/raphael.min.js"></script>
	<script src="js/plugins/morris/morris.min.js"></script>
	<script src="js/plugins/morris/morris-data.js"></script>

</body>

</html>