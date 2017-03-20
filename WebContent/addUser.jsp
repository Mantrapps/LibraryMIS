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
				<li><a href="javascript:;" data-toggle="collapse"
					data-target="#demo"><i class="fa fa-fw fa-book"></i> Book <i
						class="fa fa-fw fa-caret-down"></i></a>
					<ul id="demo" class="collapse">
						<li><a href="checkout.jsp">Check out</a></li>
						<li><a href="checkin.jsp">Check in</a></li>
					</ul></li>
				<li class="active"><a href="javascript:;"
					data-toggle="collapse" data-target="#mgt"><i
						class="fa fa-fw fa-desktop"></i> Management <i
						class="fa fa-fw fa-caret-down"></i></a>
					<ul id="mgt" class="collapse in">
						<li><a href="update.jsp">Update Fines</a></li>
						<li><a href="pay.jsp">Pay Fine</a></li>
						<li class="active"><a href="addUser.jsp">Add User</a></li>
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
							Borrower <small>Add</small>
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

				<!-- borrower info -->
				<h3>Basic Info</h3>
				<div class="row">
					<div class="col-lg-6">
						<form role="form">
							<div class="form-group">
								<label>First Name</label> <input id="fname" class="form-control"
									placeholder="Enter First Name">
							</div>
							<div class="form-group">
								<label>Last Name</label> <input id="lname" class="form-control"
									placeholder="Enter Last Name">
							</div>
							<div id="checkSSN" class="form-group">
								<label>SSN</label> <input id="ssn" class="form-control"
									placeholder="Enter ssn">
							</div>
							<div class="form-group">
								<label>Email</label> <input id="email" class="form-control"
									placeholder="Enter email">
							</div>
						</form>
					</div>
					<div class="col-lg-6">

						<form role="form">
							<div class="form-group">
								<label>Address</label> <input id="address" class="form-control"
									placeholder="Enter Address">
							</div>
							<div class="form-group">
								<label>Phone</label> <input id="phone" class="form-control"
									placeholder="Enter Phone">
							</div>

							<div class="form-group">
								<label>City</label> <input id="city" class="form-control"
									placeholder="Enter city">
							</div>
							<div class="form-group">
								<label>State</label> <select id="state" class="form-control">
									<option>TX</option>
									<option>OK</option>
									<option>LA</option>
									<option>IL</option>
									<option>CA</option>
								</select>
							</div>

						</form>
					</div>
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-6">
						<div id="msg" class="alert"></div>
					</div>
					<div class="col-lg-6">
						<div class="form-group">
							<fieldset>
								<button type="submit" class="btn btn-primary"
									onclick="checkOther();">Submit</button>
							</fieldset>
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
			function check() {
				//check ssn
				var ssn = document.getElementById("ssn").value;
				if (ssn != "" && validSSN(ssn))
					checkSSN(ssn);
				else {
					$("#checkSSN").addClass("has-error");
					$("#msg").removeClass("alert-success");
					$("#msg").addClass("alert-danger");
					$("#msg").html("invalidate SSN");
				}
				//check need fields
			}
			function checkOther() {
				var fname = document.getElementById("fname").value;
				var lname = document.getElementById("lname").value;
				var email = document.getElementById("email").value;
				var phone = document.getElementById("phone").value;
				if (fname == "" || lname == "") {
					$("#msg").removeClass("alert-success");
					$("#msg").addClass("alert-danger");
					$("#msg").html("Please provide First and Last Name!");
				} else if (email == "" && phone == "") {
					$("#msg").removeClass("alert-success");
					$("#msg").addClass("alert-danger");
					$("#msg")
							.html(
									"Please provide Phone number or email at least one!");
				} else {
					check();
				}
			}
			function validSSN(ssn) {
				var pattern = /^\d{3}-?\d{2}-?\d{4}$/;
				if (ssn.match(pattern))
					return true;
				else
					return false;
			}
			//"true" = exist
			//"false" = not exist
			function checkSSN(ssn) {
				if (ssn != "" && ssn != null) {
					$.ajax({
						url : "checkSSN",
						data : "ssn=" + ssn,
						type : 'POST',
						async : false,
						success : function(res) {
							if (res == 'true') {
								$("#checkSSN").addClass("has-error");
								$("#msg").removeClass("alert-success");
								$("#msg").addClass("alert-danger");
								$("#msg").html("duplicate SSN");
							} else if (res == 'false') {
								$("#checkSSN").removeClass("has-error");
								$("#msg").removeClass("alert-danger");
								$("#msg").addClass("alert-success");
								$("#msg").html("validate SSN");
								add();
							}
						},
						error : function(res) {
							alert("oops!!");
						}
					});
				}
			}
			function add() {
				var fname = document.getElementById("fname").value;
				var lname = document.getElementById("lname").value;
				var bname = fname + " " + lname;
				var ssn = document.getElementById("ssn").value;
				var email = document.getElementById("email").value;
				var address = document.getElementById("address").value;
				var phone = document.getElementById("phone").value;
				var city = document.getElementById("city").value;
				var state = document.getElementById("state").value;

				var datastr = "fname=" + fname + "&lname=" + lname + "&"
						+ "bname=" + bname + "&ssn=" + ssn + "&address="
						+ address + "&phone=" + phone + "&city=" + city
						+ "&state=" + state + "&email=" + email;
				$.ajax({
					url : "AddBorrowerServlet",
					data : datastr,
					type : 'POST',
					async : false,
					success : function(res) {
						if (res == "false") {
							$("#msg").removeClass("alert-success");
							$("#msg").addClass("alert-danger");
							$("#msg").html("add user " + ssn + " fail");
						}
						else {
							$("#msg").removeClass("alert-danger");
							$("#msg").addClass("alert-success");
							$("#msg").html("add user " + ssn + " success! Card Id: <strong>"+ res +"</strong>");
						}
					},
					error : function(html) {
						alert("ooops");
					}
				});

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