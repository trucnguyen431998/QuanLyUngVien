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
				
				<form:form method="POST" action="Update?id=${cadidateEvent.natioanl_ID }" modelAttribute="cadidateEvent">
				
					<div class="container-fluid">
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
								<label class="col-form-label"><b>Nation ID:</b></label>
								
								<label class="col-form-label">${cadidateEvent.natioanl_ID }</label>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
								<label class="col-form-label"><b>Name:</b></label>
									
								<label class="col-form-label">${cadidateEvent.name }</label>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label"><b>University:</b></label> 
									
									<label class="col-form-label">${cadidateEvent.university }</label>
								</div>
							</div>
						</div>
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label class="col-form-label"><b>Faculty:</b></label>
									
									<label class="col-form-label">${cadidateEvent.faculty }</label>
								</div>
								
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label"><b>DOB:</b></label>
									
									<label class="col-form-label">${cadidateEvent.dob }</label>
								</div>
								
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label"><b>Gender:</b></label> 
									<label class="col-form-label">${cadidateEvent.gender }</label>
									
								</div>
							</div>
						</div>
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label class="col-form-label"><b>Email:</b></label>
									
									<label class="col-form-label">${cadidateEvent.email }</label>
								</div>
								
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label"><b>Phone:</b></label> 
									
									<label class="col-form-label">${cadidateEvent.phone }</label>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label"><b>Site:</b></label> 
									
									<label class="col-form-label">${cadidateEvent.site }</label>
								</div>
							</div>
						</div>
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label class="col-form-label"><b>Course code:</b></label> 
									<label class="col-form-label">${cadidateEvent.course_Code }</label>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label"><b>Course Name:</b></label>
									<label class="col-form-label">${cadidateEvent.course_Name }</label>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label"><b>Subject type:</b></label>
									<label class="col-form-label">${cadidateEvent.subject_type }</label>
								</div>
							</div>
						</div>
					</div>
					
					<div class="container-fluid">
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label class="col-form-label"><b>Sub-subject type:</b></label> 
									<label class="col-form-label">${cadidateEvent.sub_subject_type }</label>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label"><b>Format Type:</b></label>
									<label class="col-form-label">${cadidateEvent.fomat_Type }</label>
								</div>
								
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label class="col-form-label"><b>From Date:</b></label>
									<label class="col-form-label">${cadidateEvent.from_Date }</label>
								</div>
								
							</div>
						</div>
						<div class="row" style="padding-left: 65px;">
							<div class="col-6 col-md-3">
								<div class="row">
									<label for="username" class="col-form-label"><b>To Date:</b></label>
									 <label class="col-form-label">${cadidateEvent.toDate }</label>
								</div>
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label for="username" class="col-form-label"><b>Status:</b></label>
									<label class="col-form-label">${cadidateEvent.status }</label>
								</div>
								
							</div>
							<div class="col-6 col-md-3 offset-1">
								<div class="row">
									<label for="username" class="col-form-label"><b>Final grade:</b></label> 
									<label class="col-form-label">${cadidateEvent.final_grade }</label>
								</div>
							</div>
						</div>
					</div>
					
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label for="username" class="col-form-label"><b>Certificate ID:</b></label> 
										<label class="col-form-label">${cadidateEvent.certificate_ID }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label"><b>Updated By:</b></label>
										<label class="col-form-label">${cadidateEvent.updated_by }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label"><b>Updated date:</b></label>
										<label class="col-form-label">${cadidateEvent.updated_date }</label>
									</div>
								</div>
								
								
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label for="username" class="col-form-label"><b>Note 1:</b></label> 
										<label class="col-form-label">${cadidateEvent.note01 }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label"><b>Recer:</b></label>
										<label class="col-form-label">${cadidateEvent.recer }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label"><b>Recer Status:</b></label>
										<label class="col-form-label">${cadidateEvent.rec_status }</label>
									</div>
								</div>
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								<div class="col-6 col-md-3">
									<div class="row">
										<label for="username" class="col-form-label"><b>Recer detail note:</b></label> 
										<label class="col-form-label">${cadidateEvent.rec_detail_note }</label>
									</div>
								</div>
								
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label"><b>CV Number:</b></label>
										<label class="col-form-label">${cadidateEvent.cv_number }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label"><b>1st Contract Type:</b></label> 
										<label class="col-form-label">${cadidateEvent.oneSt_contract_type }</label>
									</div>
								</div>
								
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								
								<div class="col-6 col-md-3">
									<div class="row">
										<label for="username" class="col-form-label"><b>Uni Hot Key:</b></label>
										<label class="col-form-label">${cadidateEvent.uni_Hot_Key }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label"><b>Tier:</b></label>
										<label class="col-form-label">${cadidateEvent.tier }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label"><b>Type of Activity:</b></label> 
										<label class="col-form-label">${cadidateEvent.type_of_activity }</label>
									</div>
								</div>
								
							</div>
						</div>
						
						<div class="container-fluid">
							<div class="row" style="padding-left: 65px;">
								
								<div class="col-6 col-md-3 ">
									<div class="row">
										<label for="username" class="col-form-label"><b>Skill:</b></label>
										<label class="col-form-label">${cadidateEvent.skill }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label"><b>QPA:</b></label>
										
										<label class="col-form-label">${cadidateEvent.gpa }</label>
									</div>
								</div>
								<div class="col-6 col-md-3 offset-1">
									<div class="row">
										<label for="username" class="col-form-label"><b>account:</b></label>
										
										<label class="col-form-label">${cadidateEvent.account }</label>
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