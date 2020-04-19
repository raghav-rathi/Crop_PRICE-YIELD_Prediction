<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon"
	href="<%=request.getContextPath() %>/adminResources/image/favicon.ico">

<title>Crop Yield</title>
<!-- Bootstrap 4.1-->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/adminResources/css/bootstrap.min.css">

<!-- Data Table-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/adminResources/css/datatables.min.css" />

<!-- Bootstrap extend-->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/adminResources/css/bootstrap-extend.css">

<!-- Bootstrap switch-->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/adminResources/css/switch.css">

<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/adminResources/css/master_style.css">

<!-- SoftMaterial admin skins -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/adminResources/css/_all-skins.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
		
<script type="text/javascript">
	
	
window.onload = function(){
	var year="${yieldVO.getYear()}";
	var district="${yieldVO.getDistrict()}";
	var season="${yieldVO.getSeason()}";
	var crop="${yieldVO.getCrop()}";
	var area="${yieldVO.getArea()}";
	var rainfall="${yieldVO.getRainfall()}";
	
	 
	$.ajax({
		url:'http://127.0.0.1:80/?Year='+year+'&District='+district+'&Season='+season+'&Crop='+crop+'&Area='+area+'&Rainfall='+rainfall,
		type:"GET",
		 success:function(response)
		{
			 
			 document.getElementById("price1").innerHTML=response[0];
			 document.getElementById("price2").innerHTML=response[1];
			 //document.getElementById("price3").innerHTML=response[2];
			//onsuccess(response);
		}
		/* error:function(){
			onerror();
		} 
	 */
	});

	/* function onsuccess(response){
		var id="${videoVO.getId()}"
		$.ajax({
			
			url:"/client/predictprices?id="+id+"&link="+response
		});
	} */
	
}
</script>
</head>

<body class="hold-transition skin-purple-light sidebar-mini">
	<div class="wrapper">

		<jsp:include page="header.jsp"></jsp:include>

		<!-- Left side column. contains the logo and sidebar -->
		<jsp:include page="menu.jsp"></jsp:include>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>Future Yield Production Of Crops</h1>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/"><i
							class="fa fa-dashboard"></i> Home</a></li>
					<!-- <li class="breadcrumb-item"><a href="#"> Future Prices Of
							Crops</a></li>
					<li class="breadcrumb-item active"><a href="/farmer/Price">
							Future Prices</a></li> -->
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">

				<!-- Basic Forms -->
				<div class="box">
					<!--  <div class="box-header with-border">
          <h6 class="box-subtitle">Bootstrap Form Validation check the <a class="text-warning" href="http://reactiveraven.github.io/jqBootstrapValidation/">official website </a></h6>
			
			<ul class="box-controls pull-right">
			  <li><a class="box-btn-close" href="#"></a></li>
			  <li><a class="box-btn-slide" href="#"></a></li>	
			  <li><a class="box-btn-fullscreen" href="#"></a></li>
			</ul>
        </div> -->

					<div class="box-header with-border">
						<h3 class="box-title">Crop Yield Prediction</h3>
						<div class="box-controls pull-right">
							<!-- <button id="row-count" class="btn btn-xs btn-primary">Row
													count</button> -->
						</div>
					</div>
					<!-- /.box-header -->
					
							
								<form novalidate="novalidate" action="/predictyield">
								<div class="box-body">
						<div class="row">
								<div class="col-sm-2">
									<div class="form-group" style="margin-bottom: 3.429rem;">

										<h5>
											Year <span class="text-danger">*</span>
										</h5>
										<div class="controls">
											<select name="Year" id="Year" required="required"
												class="form-control"
												data-validation-required-message="select year is required">
												<option value="2020">2020</option>
												<option value="2019">2019</option>
												<option value="2018">2018</option>
												<option value="2017">2017</option>
												<option value="2016">2016</option>
												<option value="2015">2015</option>
												<option value="2014">2014</option>
												<option value="2013">2013</option>
												<option value="2012">2012</option>
												<option value="2011">2011</option>
												<option value="2010">2010</option>
												


											</select>
										</div>
									</div>
									</div>
									<div class="col-sm-2">
									<div class="form-group" style="margin-bottom: 3.429rem;">

										<h5>
											District <span class="text-danger">*</span>
										</h5>
										<div class="controls">
											<select name="District" id="District" required="required"
												class="form-control"
												data-validation-required-message="select year is required">
												<option value="0">Ahmedabad</option>
												<option value="1">Amreli</option>
												<option value="2">Anand</option>
												<option value="3">Banaskanth</option>
												<option value="4">Bharuch</option>
												<option value="5">Bhavnagar</option>
												<option value="6">DANG</option>
												<option value="7">Botad</option>
												<option value="8">Dahod</option>
												<option value="9">Gandhinagar</option>
												<option value="10">Jamnagar</option>
												<option value="11">Junagarh</option>
												<option value="12">Kachchh</option>
												<option value="13">Kheda</option>
												<option value="14">Mehsana</option>
												<option value="15">Morbi</option>
												<option value="16">Narmada</option>
												<option value="17">Navsari</option>
												<option value="18">Panchmahals</option>
												<option value="19">Patan</option>
												<option value="20">Porbandar</option>
												<option value="21">Rajkot</option>
												<option value="22">Surat</option>
												<option value="23">Surendranagar</option>
												<option value="24">Vadodara(Baroda)</option>
												<option value="25">VALSAD</option>
			


											</select>
										</div>
									</div>
									</div>
									<!-- <div class="form-group" style="margin-bottom: 3.429rem;">

										<h5>
											Date <span class="text-danger">*</span>
										</h5>
										<div class="controls">
											<select name="select" id="Date" required="required"
												class="form-control"
												data-validation-required-message="select year is required">
												<option>Ahmedabad</option>
												<option>Aravalli</option>


											</select>
										</div>
									</div> -->
									<div class="col-sm-2">
									<div class="form-group" style="margin-bottom: 3.429rem;">

										<h5>
											Seasons <span class="text-danger">*</span>
										</h5>
										<div class="controls">
											<select name="Season" id="Season" required="required"
												class="form-control"
												data-validation-required-message="select year is required">
												<option value="0">Kharif</option>
												<option value="1">Rabi</option>
												<option value="2">Summer</option>
												<option value="3">Whole Year</option>
											</select>
										</div>
									</div>
									</div>
									<div class="col-sm-2">
									<div class="form-group" style="margin-bottom: 3.429rem;">

										<h5>
											Crop <span class="text-danger">*</span>
										</h5>
										<div class="controls">
											<select name="Crop" id="Crop" required="required"
												class="form-control"
												data-validation-required-message="select year is required">
												<option value="0">Arhar/Tur</option>
												<option value="1">Bajra</option>
												<option value="2">Banana</option>
												<option value="3">Castor seed</option>
												<option value="4">Cotton(lint)</option>
												<option value="5">Dry chillies</option>
												<option value="6">Garlic</option>
												<option value="7">Gram</option>
												<option value="8">Groundnut</option>
												<option value="9">Guar seed</option>
												<option value="10">Jowar</option>
												<option value="11">Maize</option>
												<option value="12">Moong(Green Gram)</option>
												<option value="13">Moth</option>
												<option value="14">Oilseeds total</option>
												<option value="15">Onion</option>
												<option value="16">Other  Rabi pulses</option>
												<option value="17">Other Cereals & Millets</option>
												<option value="18">Other Kharif pulses</option>
												<option value="19">Potato</option>
												<option value="20">Pulses total</option>
												<option value="21">Ragi</option>
												<option value="22">Rapeseed &Mustard</option>
												<option value="23">Rice</option>
												<option value="24">Sesamum</option>
												<option value="25">Small millets</option>
												<option value="26">Soyabean</option>
												<option value="27">Sugarcane</option>
												<option value="28">Tobacco</option>
												<option value="29">Urad</option>
												<option value="30">Wheat</option>
												<option value="31">other oilseeds</option>
											</select>
										</div>
									</div>
									</div>
								<div class="col-sm-2">
									<div class="form-group" style="margin-bottom: 3.429rem;">
										<h5>
											Area <span class="text-danger">*</span>
										</h5>
										<div class="controls">
											<!-- <div class="form-control-feedback"><small>Add <code>required</code> attribute to field for required validation.</small></div> -->
											<input type="number" name="Area" placeholder="Enter Area data"
												class="form-control" required="required"
												data-validation-required-message="Area is required">
										</div>
									</div>
								</div>
								<div class="col-sm-2">
									<div class="form-group" style="margin-bottom: 3.429rem;">
										<h5>
											Rainfall <span class="text-danger">*</span>
										</h5>
										<div class="controls">
											<!-- <div class="form-control-feedback"><small>Add <code>required</code> attribute to field for required validation.</small></div> -->
											<input type="number" name="Rainfall" placeholder="Enter Rainfall-data "
												class="form-control" required="required"
												data-validation-required-message="Rainfall is required">
										</div>
									</div>
								</div>

								<div class="box-body">
									<div class="row">
										<div class="col-sm-4">
										<!-- <button type="submit" class="btn btn-info">Submit</button> -->
										</div>
										<div class="col-sm-4">
										
										<button type="submit" class="btn btn-info">Submit</button>
										</div>
										<div class="col-sm-4">
										<!-- <button type="submit" class="btn btn-info">Submit</button> -->
										</div>
									</div>
								</div>
									<div id="price">

									</div>
							

							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
						</form>
					</div>
						
					<!-- /.box-body -->
			
				<!-- /.box -->
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">Yield Production According to Different Algorithms</h3>
						<div class="box-controls pull-right">
							<!-- <button id="row-count" class="btn btn-xs btn-primary">Row
													count</button> -->
						</div>
						
					
					</div>
					<div class="box-body">
						<div class="row">
								<div class="col-sm-6" >
								<label class="badge badge-xl badge-primary">Random Forest</label>
								</div>
								
								<div class="col-sm-6" >
								<span class="badge badge-xl badge-primary">Decision Tree</span>
								</div>
								
								
						</div>
						<div class="row">
								<div class="col-sm-6 " >
								<span class="badge badge-xl badge-warning" id="price1"></span>
								</div>
								
								<div class="col-sm-6" >
								<span class="badge badge-xl badge-warning" id="price2"></span>
								</div>
								<!-- <div class="col-sm-4" >
								<span class="badge badge-xl badge-warning" id="price3"></span>
								</div> -->
								
						</div>
					</div>
</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<jsp:include page="footer.jsp"></jsp:include>
		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-light">
			<!-- Create the tabs -->
			<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
				<li class="nav-item"><a href="#control-sidebar-home-tab"
					data-toggle="tab"><i class="fa fa-home"></i></a></li>
				<li class="nav-item"><a href="#control-sidebar-settings-tab"
					data-toggle="tab"><i class="fa fa-cog fa-spin"></i></a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- Home tab content -->
				<div class="tab-pane" id="control-sidebar-home-tab">
					<h3 class="control-sidebar-heading">Recent Activity</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-birthday-cake bg-danger"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Admin Birthday</h4>

									<p>Will be July 24th</p>
								</div>
						</a></li>
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-user bg-warning"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Jhone Updated His
										Profile</h4>

									<p>New Email : jhone_doe@demo.com</p>
								</div>
						</a></li>
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-envelope-o bg-info"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Disha Joined
										Mailing List</h4>

									<p>disha@demo.com</p>
								</div>
						</a></li>
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-file-code-o bg-success"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Code Change</h4>

									<p>Execution time 15 Days</p>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

					<h3 class="control-sidebar-heading">Tasks Progress</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Web Design <span class="label label-danger pull-right">40%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-danger"
										style="width: 40%"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Update Data <span class="label label-success pull-right">75%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-success"
										style="width: 75%"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Order Process <span class="label label-warning pull-right">89%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-warning"
										style="width: 89%"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Development <span class="label label-primary pull-right">72%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-primary"
										style="width: 72%"></div>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

				</div>
				<!-- /.tab-pane -->
				<!-- Stats tab content -->
				<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
					Content</div>
				<!-- /.tab-pane -->
				<!-- Settings tab content -->
				<div class="tab-pane" id="control-sidebar-settings-tab">
					<form method="post">
						<h3 class="control-sidebar-heading">General Settings</h3>

						<div class="form-group">
							<input type="checkbox" id="report_panel" class="chk-col-grey">
							<label for="report_panel" class="control-sidebar-subheading ">Report
								panel usage</label>

							<p>general settings information</p>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<input type="checkbox" id="allow_mail" class="chk-col-grey">
							<label for="allow_mail" class="control-sidebar-subheading ">Mail
								redirect</label>

							<p>Other sets of options are available</p>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<input type="checkbox" id="expose_author" class="chk-col-grey">
							<label for="expose_author" class="control-sidebar-subheading ">Expose
								author name</label>

							<p>Allow the user to show his name in blog posts</p>
						</div>
						<!-- /.form-group -->

						<h3 class="control-sidebar-heading">Chat Settings</h3>

						<div class="form-group">
							<input type="checkbox" id="show_me_online" class="chk-col-grey">
							<label for="show_me_online" class="control-sidebar-subheading ">Show
								me as online</label>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<input type="checkbox" id="off_notifications"
								class="chk-col-grey"> <label for="off_notifications"
								class="control-sidebar-subheading ">Turn off
								notifications</label>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label class="control-sidebar-subheading"> <a
								href="javascript:void(0)" class="text-red margin-r-5"><i
									class="fa fa-trash-o"></i></a> Delete chat history
							</label>
						</div>
						<!-- /.form-group -->
					</form>
				</div>
				<!-- /.tab-pane -->
			</div>
		</aside>
		<!-- /.control-sidebar -->

		<!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery-3.3.1.js"></script>

	<!-- popper -->
	<script src="<%=request.getContextPath()%>/adminResources/js/popper.min.js"></script>

	<!-- Bootstrap 4.1-->
	<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>

	<!-- SlimScroll -->
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.slimscroll.min.js"></script>

	<!-- FastClick -->
	<script src="<%=request.getContextPath()%>/adminResources/js/fastclick.js"></script>

	<!-- SoftMaterial admin App -->
	<script src="<%=request.getContextPath()%>/adminResources/js/template.js"></script>

	<!-- SoftMaterial admin for demo purposes -->
	<script src="<%=request.getContextPath()%>/adminResources/js/demo.js"></script>

	<!-- Form validator JavaScript -->
	<script	src="<%=request.getContextPath()%>/adminResources/js/validation.js"></script>



	<script src="<%=request.getContextPath()%>/adminResources/js/form-validation.js"></script>
</body>

</html>