<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Event</title>

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
			<a href="#" class="text-decoration-none p-2 text-primary">Statistic
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
							<h3>EDIT EVENT</h3>
						</div>
						
					</div>
				</div>
				<div class="card shadow-sm p-3 bg-white">
				
				   <form:form method="POST" action="passUpdate" modelAttribute="dataEvent">
					<div class="container-fluid">
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label  class="col-form-label">Site:</label>
									<form:input path="site" type="text" class="form-control" id="username"/>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label  class="col-form-label">Course Code:</label> 
									<form:input path="course_Code" type="text" class="form-control" readonly="true" />
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label  class="col-form-label">Course Name:</label> 
									<form:input  path="course_Name" type="text" class="form-control" />
								</div>
							</div>
						</div>
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label  class="col-form-label">Subject Type:</label>
									<form:input  path="subject_Type" type="text" class="form-control"/>
								</div>
								
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label  class="col-form-label">Sub subject type:</label>
									<form:input  path="sub_Subject_Type" type="text" class="form-control"/>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label">Format Type:</label> 
									<form:input path="format_Type" type="text" class="form-control"/>
								</div>
							</div>
						</div>
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label class="col-form-label">Supplier Partner:</label>
									<form:input path="supplier_Partner" type="text" class="form-control"/>
								</div>
								
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label for="username" class="col-form-label">Planned Start Date:</label> 
									<form:input path="planned_Start_date" type="text" class="form-control" />
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label  class="col-form-label">Planned End Date:</label> 
									<form:input path="planned_End_Date" type="text" class="form-control" />
								</div>
							</div>
						</div>
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label  class="col-form-label">planned_Learning_Time:</label>
									<form:input path="planned_Learning_Time"  type="text" class="form-control"/>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label">Planned Number Of Students:</label>
									<form:input path="planned_number_of_students" type="text" class="form-control" />
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label  class="col-form-label">Planned Expense:</label>
									<form:input path="planned_Expense" type="text" class="form-control" />
								</div>
							</div>
						</div>
					</div>
					
					<div class="container-fluid">
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label class="col-form-label">Budget Code:</label> 
									<form:input path="budget_code" type="text" class="form-control" />
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label for="username" class="col-form-label">Actual Start Date:</label>
									<form:input path="actual_Start_Date" type="text" class="form-control" />
								</div>
							
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label">Actual End Date:</label>
									<form:input path="actual_End_Date" type="text" class="form-control" />
								</div>
							
							</div>
						</div>
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label class="col-form-label">Actual Learning Time:</label> 
									<form:input path="actual_Learning_Time" type="text" class="form-control" />
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label">Actual Number Of Trainees:</label>
									<form:input path="actual_Number_of_trainees" type="text" class="form-control" />
								</div>
								
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label">Number Of Enrolled Students:</label> 
									<form:input path="number_of_enrolled_students" type="text" class="form-control" />
								</div>
							</div>
						</div>
					</div>
					
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label">Number Of Certified Students:</label> 
										<form:input path="number_of_Certified_Students" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">Actual Expense:</label>
										<form:input path="actual_Expense" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">Training Feedback:</label>
										<form:input path="training_feedback" type="text" class="form-control" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label">Training Feedback Content:</label> 
										<form:input path="training_feedback_Content" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">Training Feedback Teacher:</label>
										<form:input path="training_feedback_Teacher" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">Training Feedback Organization:</label>
										<form:input path="training_feedback_Organization" type="text" class="form-control" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label">Updated By:</label> 
										<form:input path="updated_by" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">Updated Date:</label>
										<form:input path="updated_date" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">Note:</label>
										<form:input path="note" type="text" class="form-control" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label">Start Date:</label> 
										<form:input path="start_date" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">End Date:</label>
										<form:input path="end_date" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">Learning Time:</label>
										<form:input path="learning_time" type="text" class="form-control" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label">Number Of Students:</label> 
										<form:input path="number_of_Students" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">Expense:</label>
										<form:input path="expense" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">Course Status:</label>
										<form:input path="course_status" type="text" class="form-control" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label">Start Year:</label> 
										<form:input path="start_Year" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">Start Month:</label>
										<form:input path="start_Month" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">End Year:</label>
										<form:input path="end_Year" type="text" class="form-control" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label">end_Month:</label> 
										<form:input path="end_Month" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">student_list_check:</label>
										<form:input path="student_list_check" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">create_Code01:</label>
										<form:input path="create_Code01" type="text" class="form-control" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label">Create Code02:</label> 
										<form:input path="create_Code02" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">Create Code03:</label>
										<form:input path="create_Code03" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">Create Code04:</label>
										<form:input path="create_Code04" type="text" class="form-control" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label">Year:</label> 
										<form:input path="year_19" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">Start:</label>
										<form:input path="start_class_0" type="text" class="form-control" />
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label">Formular:</label>
										<form:input path="start_class_Formular" type="text" class="form-control" />
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