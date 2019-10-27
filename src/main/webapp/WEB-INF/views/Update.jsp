<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cap Nhat Candidate</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/6631cf4e8b.js"></script>
<style type="text/css">
sticknav {
	height: 30px;
	width: 100%;
	margin-right: 0px;
	margin-left: 0px;
	left: 0px;
	right: 0px;
	position: relative;
	z-index: 9999;
}

.fixed {
	position: fixed;
}

.searchbar {
	margin-bottom: auto;
	margin-top: auto;
	height: 50px;
	background-color: white;
	border-radius: 30px;
	padding: 5px;
}

.search_input {
	border: 0;
	outline: 0;
	background: none;
	width: 250px;
	caret-color: transparent;
	line-height: 40px;
	caret-color: gray;
}
</style>
<script type="text/javascript">
	$(document).ready(
			function() {
				var aboveHeight = 0;
				$(window).scroll(
						function() {
							if ($(window).scrollTop() > aboveHeight) {
								$('sticknav').addClass('fixed').css('top', '0')
										.next().css('padding-top', '60px');
							} else {
								$('sticknav').removeClass('fixed').next().css(
										'padding-top', '0');
							}
						});
			});
</script>
</head>
<body>
	<header>
		<div class="container-fluid" style="background-color: #1C1C71;">
			<div class="row p-3">
				<div class="col-12 col-md-8"></div>
				<div class="col-6 col-md-4 text-right">
					<a href="#" class="text-decoration-none text-white"
						data-toggle="modal" data-target="#login">Hello: <c:out value="${username}"></c:out></a>
						 <a href="logout">Logout</a>
				</div>
				
				
			</div>
		</div>
	</header>
	<div class="container-fluid " style="background-color: #D6EAF8;">
		<div class="row">
			<a href="#" class="text-decoration-none p-2 text-primary">Candidate Managerment
				></a> <a href="#" class="text-decoration-none p-2 text-primary">Edit
				Candidate ></a>
		</div>
	</div>
	<div class="container-fluid bg-light mb-12">
		<div class="row">
			<div class="col-6 col-md-3 p-2 ">
				<div class="card shadow-sm p-3 mb-5 bg-white rounded"
					style="width: 23rem;">
					<a href="Home"
						class="btn btn-outline-light border-bottom text-left text-dark"><i
						class="fas fa-home" style="font-size: 20px;"></i> Home</a> <a
						href="Candidate"
						class="btn btn-outline-light border-bottom text-left text-dark"
						style="background-color: #A6ACAF;"><i
						class="fas fa-user-friends"></i> Candidate Management</a> <a
						href="Event"
						class="btn btn-outline-light border-bottom text-left text-dark"><i
						class="far fa-calendar-alt" style="font-size: 23px;"></i> Event
						Management</a> <a href="Statistic"
						class="btn btn-outline-light text-left text-dark"><i
						class="fas fa-clipboard-list" style="font-size: 25px;"></i>
						Statistic</a>
				</div>
			</div>
			<div class="col-12 col-md-9 p-2" style="height: auto;">
				<div class="card shadow-sm p-2" style="background-color: #D6EAF8;">
					<div class="row">
						<div class="col-6 col-md-8 text-primary" style="padding-top: 5px;">
							<h3>EDIT CANDIDATE</h3>
						</div>
						
					</div>
				</div>
				<div class="card shadow-sm p-3 bg-white">
				
				<form:form method="POST" action="updateCandidate" modelAttribute="cadidateEvent">
				
					<div class="container-fluid">
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label  class="col-form-label">NationID:</label>
									<form:input path="natioanl_ID" type="text" class="form-control" readonly="true" />
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label  class="col-form-label">Name:</label> 
									<form:input path="name" type="text" class="form-control" />
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label">University:</label> 
									<form:input path="university" type="text" class="form-control" />
								</div>
							</div>
						</div>
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label class="col-form-label">Faculty:</label>
									<form:input path="faculty" type="text" class="form-control" />
								</div>
								
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label">DOB:</label>
									<form:input path="dob" type="text" class="form-control" />
								</div>
								
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label">Gender:</label> 
									<form:input path="gender"  type="text" class="form-control" />
								</div>
							</div>
						</div>
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label class="col-form-label">Email:</label>
									<form:input path="email"  type="text" class="form-control" />
								</div>
								
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label">Phone:</label> 
									<form:input path="phone" type="text" class="form-control"  />
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label">Site:</label> 
									<form:input path="site" type="text" class="form-control"  />
								</div>
							</div>
						</div>
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label class="col-form-label">Course code::</label> 
									<form:input path="course_Code"  type="text" class="form-control"  />
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label">Course Name:</label>
									<form:input path="course_Name" type="text" class="form-control"  />
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label">Subject type:</label>
									<form:input path="subject_type" type="text" class="form-control" />
								</div>
							</div>
						</div>
					</div>
					
					<div class="container-fluid">
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label class="col-form-label">Sub-subject type:</label> 
									<form:input path="sub_subject_type" type="text" class="form-control" />
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label">Format Type:</label>
									<form:input path="fomat_Type" type="text" class="form-control" />
								</div>
								
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label">From Date:</label>
									<form:input path="from_Date" type="text" class="form-control" />
								</div>
								
							</div>
						</div>
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label for="username" class="col-form-label">To Date:</label>
									 <form:input path="toDate" type="text" class="form-control" />
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label for="username" class="col-form-label">Status</label>
									<form:input path="status" type="text" class="form-control" />
								</div>
								
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label for="username" class="col-form-label">Final grade:</label> 
									<form:input path="final_grade" type="text" class="form-control" />
								</div>
							</div>
						</div>
					</div>
					
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label for="username" class="col-form-label">Certificate ID:</label> 
										<form:input path="certificate_ID" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label">Updated By:</label>
										<form:input path="updated_by" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label">Updated date:</label>
										<form:input path="updated_date" type="text" class="form-control" />
									</div>
								</div>
								
								
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label for="username" class="col-form-label">Note 1:</label> 
										<form:input path="note01" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label">Recer:</label>
										<form:input path="recer" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label">Recer Status:</label>
										<form:input path="rec_status" type="text" class="form-control" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label for="username" class="col-form-label">Recer detail note:</label> 
										<form:input path="rec_detail_note" type="text" class="form-control"/>
									</div>
								</div>
								
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label">CV Number:</label>
										<form:input path="cv_number" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label">1st Contract Type:</label> 
										<form:input path="oneSt_contract_type" type="text" class="form-control" />
									</div>
								</div>
								
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								
								<div class="col-6 col-md-3">
									<div class="row">
										<label for="username" class="col-form-label">Uni Hot Key:</label>
										<form:input path="uni_Hot_Key" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label">Tier:</label>
										<form:input path="tier" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label">Type of Activity:</label> 
										<form:input path="type_of_activity" type="text" class="form-control" />
									</div>
								</div>
								
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								
								<div class="col-6 col-md-3 ">
									<div class="row">
										<label for="username" class="col-form-label">Skill:</label>
										<form:input path="skill" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label">QPA:</label>
										<form:input path="gpa" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label">account:</label>
										<form:input path="account" type="text" class="form-control" />
									</div>
								</div>
							</div>
						</div>
						
						
						
						<br>
						<div class="row">
							<div class="col-6 col-md-4 offset-5">
								<button type="submit" class="btn btn-primary">Save</button>
								<button type="reset" class="btn btn-secondary">Cancel</button>
							</div>
						</div>
						
					</form:form>
					</div>
				</div>

			</div>

		</div>
	</div>
	</main>
	<footer> </footer>
</body>
</html>