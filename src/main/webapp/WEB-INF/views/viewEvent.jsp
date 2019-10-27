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
				
				   <form:form method="POST" action="UpdateEvent?id=${dataEvent.event_id }" modelAttribute="dataEvent">
					<div class="container-fluid">
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label  class="col-form-label"><b>Site:</b></label>
									
									<label  class="col-form-label">${dataEvent.site }</label>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label  class="col-form-label"><b>Course Code:</b></label> 
									
									<label  class="col-form-label">${dataEvent.course_Code }</label>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label  class="col-form-label"><b>Course Name:</b></label> 
									
									<label  class="col-form-label">${dataEvent.course_Name }</label>
								</div>
							</div>
						</div>
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label  class="col-form-label"><b>Subject Type:</b></label>
									
									<label  class="col-form-label">${dataEvent.subject_Type }</label>
								</div>
								
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label  class="col-form-label"><b>Sub subject type:</b></label>
									
									<label  class="col-form-label">${dataEvent.sub_Subject_Type }</label>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label"><b>Format Type:</b></label> 
									
									<label  class="col-form-label">${dataEvent.format_Type }</label>
								</div>
							</div>
						</div>
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label class="col-form-label"><b>Supplier Partner:</b></label>
									
									<label  class="col-form-label">${dataEvent.supplier_Partner }</label>
								</div>
								
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label for="username" class="col-form-label"><b>Planned Start Date:</b></label> 
									<label  class="col-form-label">${dataEvent.planned_Start_date }</label>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label  class="col-form-label"><b>Planned End Date:</b></label> 
									<label  class="col-form-label">${dataEvent.planned_End_Date }</label>
								</div>
							</div>
						</div>
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label  class="col-form-label"><b>planned_Learning_Time:</b></label>
									<label  class="col-form-label">${dataEvent.planned_Learning_Time }</label>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label"><b>Planned Number Of Students:</b></label>
									<label  class="col-form-label">${dataEvent.planned_number_of_students }</label>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label  class="col-form-label"><b>Planned Expense:</b></label>
									<label  class="col-form-label">${dataEvent.planned_Expense }</label>
								</div>
							</div>
						</div>
					</div>
					
					<div class="container-fluid">
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label class="col-form-label"><b>Budget Code:</b></label> 
									<label  class="col-form-label">${dataEvent.budget_code }</label>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label for="username" class="col-form-label"><b>Actual Start Date:</b></label>
									<label  class="col-form-label">${dataEvent.actual_Start_Date }</label>
								</div>
							
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label"><b>Actual End Date:</b></label>
									<label  class="col-form-label">${dataEvent.actual_End_Date }</label>
								</div>
							
							</div>
						</div>
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label class="col-form-label"><b>Actual Learning Time:</b></label> 
									<label  class="col-form-label">${dataEvent.actual_Learning_Time }</label>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label"><b>Actual Number Of Trainees:</b></label>
									<label  class="col-form-label">${dataEvent.actual_Number_of_trainees }</label>
								</div>
								
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label"><b>Number Of Enrolled Students:</b></label> 
									<label  class="col-form-label">${dataEvent.number_of_enrolled_students }</label>
								</div>
							</div>
						</div>
					</div>
					
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label"><b>Number Of Certified Students:</b></label> 
										<label  class="col-form-label">${dataEvent.number_of_Certified_Students }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>Actual Expense:</b></label>
										<label  class="col-form-label">${dataEvent.actual_Expense }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>Training Feedback:</b></label>
										<label  class="col-form-label">${dataEvent.training_feedback }</label>
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label"><b>Training Feedback Content:</b></label> 
										<label  class="col-form-label">${dataEvent.training_feedback_Content }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>Training Feedback Teacher:</b></label>
										<label  class="col-form-label">${dataEvent.training_feedback_Teacher }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>Training Feedback Organization:</b></label>
										<label  class="col-form-label">${dataEvent.training_feedback_Organization }</label>
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label"><b>Updated By:</b></label> 
										<label  class="col-form-label">${dataEvent.updated_by }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>Updated Date:</b></label>
										<label  class="col-form-label">${dataEvent.updated_date }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>Note:</b></label>
										<label  class="col-form-label">${dataEvent.note }</label>
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label"><b>Start Date:</b></label> 
										<label  class="col-form-label">${dataEvent.start_date }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>End Date:</b></label>
										<label  class="col-form-label">${dataEvent.end_date }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>Learning Time:</b></label>
										<label  class="col-form-label">${dataEvent.learning_time }</label>
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label"><b>Number Of Students:</b></label> 
										<label  class="col-form-label">${dataEvent.number_of_Students }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>Expense:</b></label>
										<label  class="col-form-label">${dataEvent.expense }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>Course Status:</b></label>
										<label  class="col-form-label">${dataEvent.course_status }</label>
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label"><b>Start Year:</b></label> 
										<label  class="col-form-label">${dataEvent.start_Year }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>Start Month:</b></label>
										<label  class="col-form-label">${dataEvent.start_Month }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>End Year:</b></label>
										<label  class="col-form-label">${dataEvent.end_Year }</label>
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label"><b>end_Month:</b></label> 
										<label  class="col-form-label">${dataEvent.end_Month }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>student_list_check:</b></label>
										<label  class="col-form-label">${dataEvent.student_list_check }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>create_Code01:</b></label>
										<label  class="col-form-label">${dataEvent.create_Code01 }</label>
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label"><b>Create Code02:</b></label> 
										<label  class="col-form-label">${dataEvent.create_Code02 }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>Create Code03:</b></label>
										<label  class="col-form-label">${dataEvent.create_Code03 }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>Create Code04:</b></label>
										<label  class="col-form-label">${dataEvent.create_Code04 }</label>
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label class="col-form-label"><b>Year:</b></label> 
										<label  class="col-form-label">${dataEvent.year_19 }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>Start:</b></label>
										<label  class="col-form-label">${dataEvent.start_class_0 }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label class="col-form-label"><b>Formular:</b></label>
										<label  class="col-form-label">${dataEvent.start_class_Formular }</label>
									</div>
								</div>
							</div>
						</div>
						
						
						
						<br>
						<div class="row">
							<div class="col-6 col-md-4 offset-5">
								<button type="submit" class="btn btn-primary">Edit</button>
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