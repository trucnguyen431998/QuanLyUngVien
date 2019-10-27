<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Candidate</title>

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
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.0.min.js"></script>
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
	$(document).ready(function() {
		$("a:nth-child(8)").click(function() {
			$("#abc").toggle(1000);
		})
	})
	$(document).ready(function() {
		$("a:nth-child(9)").click(function() {
			$("#xyz").toggle(1000);
		})
	})
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
			<a href="#" class="text-decoration-none p-2 text-primary">Candidate
				Management ></a>
		</div>
	</div>
	<div class="container-fluid bg-light mb-12">
		<div class="row">
			<div class="col-6 col-md-3 p-2 ">
				<div class="card shadow-sm p-3 mb-5 bg-white rounded"
					style="width: 21rem;">
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
			<div class="col-12 col-md-9 p-2" style="height: 650px;">
				<div class="card shadow-sm p-2" style="background-color: #D6EAF8;">
					<div class="row">
						<div class="col-6 col-md-8 text-primary" style="padding-top: 5px;">
							<h3>CANDIDATE MANAGEMENT</h3>
						</div>
						<div class="col-6 col-md-4">
							<div class="d-flex justify-content-center h-100">
							
							
								<div class="searchbar">
									<input class="search_input" type="text"
										placeholder="Search..."> <a href="#"
										class="search_icon"><i class="fas fa-search"></i></a>
								</div>
								
								
							</div>
						</div>
					</div>
				</div>
				<div class="card shadow-sm p-3 bg-white">
				
				
						<table  class="table table-hover table-striped">
							
								<tr>
									
									<th>Name</th>
									<th>University</th>
									<th>Faculty</th>
									<!-- <th>Email</th> -->
									<th>Account</th>
									<th></th>
									
								</tr>
								<c:forEach var="CandidateEvent" items="${caEvent}" varStatus="status">
									<tr>
										
										<td>${CandidateEvent.name }</td>
										<td>${CandidateEvent.university }</td>
										<td>${CandidateEvent.faculty }</td>
										<%-- <td>${CandidateEvent.email }</td> --%>
										<td>${CandidateEvent.account }</td>
										<%-- <td><a href="Update?id=${CandidateEvent.natioanl_ID }">View</a></td> --%>
										<td><button type="button" class="btn btn-success" onclick="location.href='viewCandidate?id=${CandidateEvent.natioanl_ID }'">View</button></td>
		
									</tr>
								</c:forEach>
							
							
						</table>
				
				
				
					<!-- <button type="button" class="btn btn-primary" data-toggle="modal"
						data-target=".createcadidate">
						<i class="fas fa-plus-square"></i> Add Candidate
					</button> -->

				
				</div>
			</div>
		</div>
	</div>
	</main>
	<footer></footer>
</body>
</html>