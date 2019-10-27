<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>

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

@import url(https://fonts.googleapis.com/css?family=Muli:400, 300);

.calendar, .calendar_weekdays, .calendar_content {
	max-width: 300px;
}

.calendar {
	margin: auto;
	font-family: 'Muli', sans-serif;
	font-weight: 400;
}

.calendar_content, .calendar_weekdays, .calendar_header {
	position: relative;
	overflow: hidden;
}

.calendar_weekdays div {
	display: inline-block;
	vertical-align: top;
}

.calendar_weekdays div, .calendar_content div {
	width: 14.28571%;
	overflow: hidden;
	text-align: center;
	background-color: transparent;
	color: #6f6f6f;
	font-size: 14px;
}

.calendar_content div {
	border: 1px solid transparent;
	float: left;
}

.calendar_content div:hover {
	border: 1px solid #dcdcdc;
	cursor: default;
}

.calendar_content div.blank:hover {
	cursor: default;
	border: 1px solid transparent;
}

.calendar_content div.past-date {
	color: #d5d5d5;
}

.calendar_content div.today {
	font-weight: bold;
	font-size: 14px;
	color: #87b633;
	border: 1px solid #dcdcdc;
}

.calendar_content div.selected {
	background-color: #f0f0f0;
}

.calendar_header {
	width: 100%;
	text-align: center;
}

.calendar_header h2 {
	padding: 0 10px;
	font-family: 'Muli', sans-serif;
	font-weight: 300;
	font-size: 18px;
	color: #87b633;
	float: left;
	width: 70%;
	margin: 0 0 10px;
}

button.switch-month {
	background-color: transparent;
	padding: 0;
	outline: none;
	border: none;
	color: #dcdcdc;
	float: left;
	width: 15%;
	transition: color .2s;
}

button.switch-month:hover {
	color: #87b633;
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
	$(document)
			.ready(
					function() {
						function c(passed_month, passed_year, calNum) {
							var calendar = calNum == 0 ? calendars.cal1
									: calendars.cal2;
							makeWeek(calendar.weekline);
							calendar.datesBody.empty();
							var calMonthArray = makeMonthArray(passed_month,
									passed_year);
							var r = 0;
							var u = false;
							while (!u) {
								if (daysArray[r] == calMonthArray[0].weekday) {
									u = true
								} else {
									calendar.datesBody
											.append('<div class="blank"></div>');
									r++;
								}
							}
							for (var cell = 0; cell < 42 - r; cell++) { // 42 date-cells in calendar
								if (cell >= calMonthArray.length) {
									calendar.datesBody
											.append('<div class="blank"></div>');
								} else {
									var shownDate = calMonthArray[cell].day;
									var iter_date = new Date(passed_year,
											passed_month, shownDate);
									if (((shownDate != today.getDate() && passed_month == today
											.getMonth()) || passed_month != today
											.getMonth())
											&& iter_date < today) {
										var m = '<div class="past-date">';
									} else {
										var m = checkToday(iter_date) ? '<div class="today">'
												: "<div>";
									}
									calendar.datesBody.append(m + shownDate
											+ "</div>");
								}
							}

							var color = "#444444";
							calendar.calHeader.find("h2").text(
									i[passed_month] + " " + passed_year);
							calendar.weekline.find("div").css("color", color);
							calendar.datesBody.find(".today").css("color",
									"#87b633");

							// find elements (dates) to be clicked on each time
							// the calendar is generated
							var clicked = false;
							selectDates(selected);

							clickedElement = calendar.datesBody.find('div');
							clickedElement
									.on(
											"click",
											function() {
												clicked = $(this);
												var whichCalendar = calendar.name;

												if (firstClick && secondClick) {
													thirdClicked = getClickedInfo(
															clicked, calendar);
													var firstClickDateObj = new Date(
															firstClicked.year,
															firstClicked.month,
															firstClicked.date);
													var secondClickDateObj = new Date(
															secondClicked.year,
															secondClicked.month,
															secondClicked.date);
													var thirdClickDateObj = new Date(
															thirdClicked.year,
															thirdClicked.month,
															thirdClicked.date);
													if (secondClickDateObj > thirdClickDateObj
															&& thirdClickDateObj > firstClickDateObj) {
														secondClicked = thirdClicked;
														// then choose dates again from the start :)
														bothCals
																.find(
																		".calendar_content")
																.find("div")
																.each(
																		function() {
																			$(
																					this)
																					.removeClass(
																							"selected");
																		});
														selected = {};
														selected[firstClicked.year] = {};
														selected[firstClicked.year][firstClicked.month] = [ firstClicked.date ];
														selected = addChosenDates(
																firstClicked,
																secondClicked,
																selected);
													} else { // reset clicks
														selected = {};
														firstClicked = [];
														secondClicked = [];
														firstClick = false;
														secondClick = false;
														bothCals
																.find(
																		".calendar_content")
																.find("div")
																.each(
																		function() {
																			$(
																					this)
																					.removeClass(
																							"selected");
																		});
													}
												}
												if (!firstClick) {
													firstClick = true;
													firstClicked = getClickedInfo(
															clicked, calendar);
													selected[firstClicked.year] = {};
													selected[firstClicked.year][firstClicked.month] = [ firstClicked.date ];
												} else {
													secondClick = true;
													secondClicked = getClickedInfo(
															clicked, calendar);

													// what if second clicked date is before the first clicked?
													var firstClickDateObj = new Date(
															firstClicked.year,
															firstClicked.month,
															firstClicked.date);
													var secondClickDateObj = new Date(
															secondClicked.year,
															secondClicked.month,
															secondClicked.date);

													if (firstClickDateObj > secondClickDateObj) {

														var cachedClickedInfo = secondClicked;
														secondClicked = firstClicked;
														firstClicked = cachedClickedInfo;
														selected = {};
														selected[firstClicked.year] = {};
														selected[firstClicked.year][firstClicked.month] = [ firstClicked.date ];

													} else if (firstClickDateObj
															.getTime() == secondClickDateObj
															.getTime()) {
														selected = {};
														firstClicked = [];
														secondClicked = [];
														firstClick = false;
														secondClick = false;
														$(this).removeClass(
																"selected");
													}

													// add between dates to [selected]
													selected = addChosenDates(
															firstClicked,
															secondClicked,
															selected);
												}
												selectDates(selected);
											});

						}

						function selectDates(selected) {
							if (!$.isEmptyObject(selected)) {
								var dateElements1 = datesBody1.find('div');
								var dateElements2 = datesBody2.find('div');

								function highlightDates(passed_year,
										passed_month, dateElements) {
									if (passed_year in selected
											&& passed_month in selected[passed_year]) {
										var daysToCompare = selected[passed_year][passed_month];
										for ( var d in daysToCompare) {
											dateElements
													.each(function(index) {
														if (parseInt($(this)
																.text()) == daysToCompare[d]) {
															$(this).addClass(
																	'selected');
														}
													});
										}

									}
								}

								highlightDates(year, month, dateElements1);
								highlightDates(nextYear, nextMonth,
										dateElements2);
							}
						}

						function makeMonthArray(passed_month, passed_year) { // creates Array specifying dates and weekdays
							var e = [];
							for (var r = 1; r < getDaysInMonth(passed_year,
									passed_month) + 1; r++) {
								e.push({
									day : r,
									// Later refactor -- weekday needed only for first week
									weekday : daysArray[getWeekdayNum(
											passed_year, passed_month, r)]
								});
							}
							return e;
						}

						function makeWeek(week) {
							week.empty();
							for (var e = 0; e < 7; e++) {
								week.append("<div>"
										+ daysArray[e].substring(0, 3)
										+ "</div>")
							}
						}

						function getDaysInMonth(currentYear, currentMon) {
							return (new Date(currentYear, currentMon + 1, 0))
									.getDate();
						}

						function getWeekdayNum(e, t, n) {
							return (new Date(e, t, n)).getDay();
						}

						function checkToday(e) {
							var todayDate = today.getFullYear() + '/'
									+ (today.getMonth() + 1) + '/'
									+ today.getDate();
							var checkingDate = e.getFullYear() + '/'
									+ (e.getMonth() + 1) + '/' + e.getDate();
							return todayDate == checkingDate;

						}

						function getAdjacentMonth(curr_month, curr_year,
								direction) {
							var theNextMonth;
							var theNextYear;
							if (direction == "next") {
								theNextMonth = (curr_month + 1) % 12;
								theNextYear = (curr_month == 11) ? curr_year + 1
										: curr_year;
							} else {
								theNextMonth = (curr_month == 0) ? 11
										: curr_month - 1;
								theNextYear = (curr_month == 0) ? curr_year - 1
										: curr_year;
							}
							return [ theNextMonth, theNextYear ];
						}

						function b() {
							today = new Date;
							year = today.getFullYear();
							month = today.getMonth();
							var nextDates = getAdjacentMonth(month, year,
									"next");
							nextMonth = nextDates[0];
							nextYear = nextDates[1];
						}

						var e = 480;

						var today;
						var year, month, nextMonth, nextYear;

						var r = [];
						var i = [ "JANUARY", "FEBRUARY", "MARCH", "APRIL",
								"MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER",
								"OCTOBER", "NOVEMBER", "DECEMBER" ];
						var daysArray = [ "Sunday", "Monday", "Tuesday",
								"Wednesday", "Thursday", "Friday", "Saturday" ];

						var cal1 = $("#calendar_first");
						var calHeader1 = cal1.find(".calendar_header");
						var weekline1 = cal1.find(".calendar_weekdays");
						var datesBody1 = cal1.find(".calendar_content");

						var cal2 = $("#calendar_second");
						var calHeader2 = cal2.find(".calendar_header");
						var weekline2 = cal2.find(".calendar_weekdays");
						var datesBody2 = cal2.find(".calendar_content");

						var bothCals = $(".calendar");

						var switchButton = bothCals.find(".calendar_header")
								.find('.switch-month');

						var calendars = {
							"cal1" : {
								"name" : "first",
								"calHeader" : calHeader1,
								"weekline" : weekline1,
								"datesBody" : datesBody1
							},
							"cal2" : {
								"name" : "second",
								"calHeader" : calHeader2,
								"weekline" : weekline2,
								"datesBody" : datesBody2
							}
						}

						var clickedElement;
						var firstClicked, secondClicked, thirdClicked;
						var firstClick = false;
						var secondClick = false;
						var selected = {};

						b();
						c(month, year, 0);
						c(nextMonth, nextYear, 1);
						switchButton.on("click", function() {
							var clicked = $(this);
							var generateCalendars = function(e) {
								var nextDatesFirst = getAdjacentMonth(month,
										year, e);
								var nextDatesSecond = getAdjacentMonth(
										nextMonth, nextYear, e);
								month = nextDatesFirst[0];
								year = nextDatesFirst[1];
								nextMonth = nextDatesSecond[0];
								nextYear = nextDatesSecond[1];

								c(month, year, 0);
								c(nextMonth, nextYear, 1);
							};
							if (clicked.attr("class").indexOf("left") != -1) {
								generateCalendars("previous");
							} else {
								generateCalendars("next");
							}
							clickedElement = bothCals.find(".calendar_content")
									.find("div");
						});

						//  Click picking stuff
						function getClickedInfo(element, calendar) {
							var clickedInfo = {};
							var clickedCalendar, clickedMonth, clickedYear;
							clickedCalendar = calendar.name;
							clickedMonth = clickedCalendar == "first" ? month
									: nextMonth;
							clickedYear = clickedCalendar == "first" ? year
									: nextYear;
							clickedInfo = {
								"calNum" : clickedCalendar,
								"date" : parseInt(element.text()),
								"month" : clickedMonth,
								"year" : clickedYear
							}
							return clickedInfo;
						}

						// Finding between dates MADNESS. Needs refactoring and smartening up :)
						function addChosenDates(firstClicked, secondClicked,
								selected) {
							if (secondClicked.date > firstClicked.date
									|| secondClicked.month > firstClicked.month
									|| secondClicked.year > firstClicked.year) {

								var added_year = secondClicked.year;
								var added_month = secondClicked.month;
								var added_date = secondClicked.date;

								if (added_year > firstClicked.year) {
									// first add all dates from all months of Second-Clicked-Year
									selected[added_year] = {};
									selected[added_year][added_month] = [];
									for (var i = 1; i <= secondClicked.date; i++) {
										selected[added_year][added_month]
												.push(i);
									}

									added_month = added_month - 1;
									while (added_month >= 0) {
										selected[added_year][added_month] = [];
										for (var i = 1; i <= getDaysInMonth(
												added_year, added_month); i++) {
											selected[added_year][added_month]
													.push(i);
										}
										added_month = added_month - 1;
									}

									added_year = added_year - 1;
									added_month = 11; // reset month to Dec because we decreased year
									added_date = getDaysInMonth(added_year,
											added_month); // reset date as well

									// Now add all dates from all months of inbetween years
									while (added_year > firstClicked.year) {
										selected[added_year] = {};
										for (var i = 0; i < 12; i++) {
											selected[added_year][i] = [];
											for (var d = 1; d <= getDaysInMonth(
													added_year, i); d++) {
												selected[added_year][i].push(d);
											}
										}
										added_year = added_year - 1;
									}
								}

								if (added_month > firstClicked.month) {
									if (firstClicked.year == secondClicked.year) {
										selected[added_year][added_month] = [];
										for (var i = 1; i <= secondClicked.date; i++) {
											selected[added_year][added_month]
													.push(i);
										}
										added_month = added_month - 1;
									}
									while (added_month > firstClicked.month) {
										selected[added_year][added_month] = [];
										for (var i = 1; i <= getDaysInMonth(
												added_year, added_month); i++) {
											selected[added_year][added_month]
													.push(i);
										}
										added_month = added_month - 1;
									}
									added_date = getDaysInMonth(added_year,
											added_month);
								}

								for (var i = firstClicked.date + 1; i <= added_date; i++) {
									selected[added_year][added_month].push(i);
								}
							}
							return selected;
						}
					});
</script>
</head>
<body>
	<header>
		<sticknav>
		<div class="container-fluid" style="background-color: #1C1C71;">
			<div class="row p-3">
				<div class="col-12 col-md-8"></div>
				<div class="col-6 col-md-4 text-right">
					<a href="#" class="text-decoration-none text-white"
						data-toggle="modal" data-target="#login">Login</a>
				</div>
				<!-- Modal -->
				<div class="modal fade" id="login" role="dialog"
					aria-labelledby="login" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header bg-light">
								<h5 class="modal-title" id="login">Login</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<%-- 
							<nav class="navbar navbar-expand-lg navbar-light offset-2" style="padding-left: 45px;">
								<c:if test="${param.error != null}">
									<div class="alert alert-danger">Invalid Email and password.</div>
								</c:if>
					
								
							</nav> --%>
							
							<form:form action="passLogin" modelAttribute="datalogin" name='loginForm' method='POST'>
							<div class="modal-body">
								
									<div class="form-group">
										<label for="username" class="col-form-label">Username:</label>
										<form:input type="text" path="user_name" class="form-control" required="required" id="username"  />
									</div>
									<div class="form-group">
										<label for="password" class="col-form-label">Password:</label>
										<form:input type="password" path="password" class="form-control" required="required" id="password"/>
									</div>

								
							</div>
							<div class="modal-footer">
								<button type="submit" name="submit" class="btn btn-primary">Sign in</button>
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
							</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
		</sticknav>
	</header>
	<main>
	<div class="container-fluid bg-light mb-12">
		<div class="row">

			<div class="col-12 col-md-8 offset-1 p-5" style="height: 690px; color:#1C1C71;">
				<h1>CANDIDATE MANAGEMENT</h1>
			</div>
			<div class="col-6 col-md-3 p-2 ">
				<div
					class="calendar calendar-first border rounded-lg bg-white p-2 shadow-sm p-3 mb-5 bg-white rounded"
					id="calendar_first">
					<div class="calendar_header">
						<button class="switch-month switch-left">
							<i class="fa fa-chevron-left"></i>
						</button>
						<h2></h2>
						<button class="switch-month switch-right">
							<i class="fa fa-chevron-right"></i>
						</button>
					</div>
					<div class="calendar_weekdays"></div>
					<div class="calendar_content"></div>
				</div>
			</div>
		</div>
	</div>
	</main>
	<footer> </footer>
</body>
</html>