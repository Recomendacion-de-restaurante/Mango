<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Appetizer - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">



<link rel="stylesheet" href="../resources/css/reviewDetail.css">
</head>
<body>
<%-- <c:import url="../template/header.jsp"></c:import> --%>
    <style>
        body.modal-open {
          overflow: auto;
        }
        body.modal-open[style] {
          padding-right: 0px !important;
        }
        .container{
          margin-top: 50px;
          margin-bottom: 50px;
        }
    </style>
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Monoton&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Miss+Fajardose&display=swap" rel="stylesheet">

   <link rel="stylesheet" href="../css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="../css/animate.css">
    
    <link rel="stylesheet" href="../css/owl.carousel.min.css">
    <link rel="stylesheet" href="../css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../css/magnific-popup.css">

    <link rel="stylesheet" href="../css/aos.css">

    <link rel="stylesheet" href="../css/ionicons.min.css">

    <link rel="stylesheet" href="../css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="../css/jquery.timepicker.css">

    <link rel="stylesheet" href="../css/flaticon.css">
    <link rel="stylesheet" href="../css/icomoon.css">
    <link rel="stylesheet" href="../css/style.css">
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('../images/bg_3.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread">Review</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="../">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Review <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>


	<section class="ftco-section ftco-wrap-about ftco-no-pb">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-sm-10 wrap-about ftco-animate text-center">
					<div class="heading-section mb-4 text-center">
						<span class="subheading">About</span>
						<h2 class="mb-4">Appetizer Restaurant</h2>
					</div>
					<p>On her way she met a copy. The copy warned the Little Blind
						Text, that where it came from it would have been rewritten a
						thousand times and everything that was left from its origin would
						be the word "and" and the Little Blind Text should turn around and
						return to its own, safe country. A small river named Duden flows
						by their place and supplies it with the necessary regelialia. It
						is a paradisematic country, in which roasted parts of sentences
						fly into your mouth.</p>

					<div class="video justify-content-center">

	<div class="reviewpicTitle">
		<h1>ID :${revo.id}</h1>

		<c:if test="${revo.star eq '5' }">
			<h1 id="reviewStar">리뷰 ★★★★★</h1>
		</c:if>
		<c:if test="${revo.star eq '4' }">
			<h1 id="reviewStar">리뷰 ★★★★☆</h1>
		</c:if>
		<c:if test="${revo.star eq '3' }">
			<h1 id="reviewStar">리뷰 ★★★☆☆</h1>
		</c:if>
		<c:if test="${revo.star eq '2' }">
			<h1 id="reviewStar">리뷰 ★★☆☆☆</h1>
		</c:if>
		<c:if test="${revo.star eq '1' }">
			<h1 id="reviewStar">리뷰 ★☆☆☆☆</h1>
		</c:if>
		<c:if test="${revo.star eq '0' }">
			<h1 id="reviewStar">리뷰 ☆☆☆☆☆</h1>
		</c:if>

	</div>

						<div id="carouselExampleControls" class="carousel slide"
							data-bs-ride="carousel">
							<div class="carousel-inner">
								<div id="revPicBox">
									<div style="width:396px; height:396px;" class="revPics">
										<c:forEach items="${revo.reviewFilesVOs }" varStatus="status"
											var="rFilesVOS">
											<div style="width:396px; height:396px;"
												class="carousel-item <c:if test="${status.index eq 0 }">active </c:if>">

												<img 
													src="../resources/upload/review/${rFilesVOS.fileName}"
													class="img-fluid" alt="..." style="object-fit:cover;">

											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							<button class="carousel-control-prev" type="button"
								data-bs-target="#carouselExampleControls" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next" type="button"
								data-bs-target="#carouselExampleControls" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</button>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="ftco-section ftco-counter img" id="section-counter"
		style="background-image: url(images/bg_4.jpg);"
		data-stellar-background-ratio="0.5">
		<!-- <section class="ftco-section ftco-counter img ftco-no-pt" id="section-counter"> -->
		<div class="container">
			<div class="row d-md-flex align-items-center justify-content-center">
				<div class="col-lg-10">
					<div class="row d-md-flex align-items-center">
						<div id="revTextBox">
							<div id="revText">
								<h3>${revo.contents }</h3>
							</div>
						</div>
						<h5>작성일 ${revo.regDate }</h5>



					</div>
				</div>
			</div>
		</div>
	</section>

	<div style="margin: 0 auto 0 auto; width: 900px">
		<button class="sUpdate btn-primary py-3 px-5"
			data-num="${revo.reviewNum }" type="button">리뷰수정</button>
		<%-- <a href="update?reviewNum=${revo.reviewNum }" role="button">Update</a> --%>
		<a href="delete?reviewNum=${revo.reviewNum }&restaurantNum=${revo.restaurantNum}" role="button"
			class="btn-danger py-4 px-5">리뷰 삭제</a>
	<button type="button" class="btn btn-primary btn-lg" id="openModalBtn" style="margin-left: 400px">신고하기</button>
	</div>

	<div class="modal" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">해당 리뷰 신고하기</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close">ss</button>
				</div>
				<div class="modal-body">
					<p>
						<div>

															<form id="frm" action="./report" method="post">
														<input type="hidden" value="${revo.restaurantNum }"
								name="restaurantNum"> 
														
																<input type="hidden" value="${revo.reviewNum }"
								name="reviewNum"> <input type="hidden" value="1"
								name="reportCheck"> <select name="reportOption">
																	<option value="1">1.욕설</option>
																	<option value="2">2.허위사실유포</option>
																	<option value="3">3.타 식당 음식 사진</option>
																	<option value="4">4.음식과 상관없는 리뷰</option>
																	<option value="5">5.지나친 비하</option>

																</select>
															</form>
														</div>
														</p>
													</div>
													<div class="modal-footer">
														<button id="closeModalBtn" type="button"
						class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
														<button id="subm" type="button" class="btn btn-primary">신고하기</button>
													</div>
												</div>
											</div>
										</div>

	


	

	

	<section class="ftco-section ftco-no-pt ftco-no-pb">
		<div class="container-fluid px-0">
			<div class="row no-gutters">
				<div class="col-md">
					<a href="#"
											class="instagram img d-flex align-items-center justify-content-center"
											style="background-image: url(images/insta-1.jpg);"> <span
											class="ion-logo-instagram"></span>
					</a>
				</div>
				<div class="col-md">
					<a href="#"
											class="instagram img d-flex align-items-center justify-content-center"
											style="background-image: url(images/insta-2.jpg);"> <span
											class="ion-logo-instagram"></span>
					</a>
				</div>
				<div class="col-md">
					<a href="#"
											class="instagram img d-flex align-items-center justify-content-center"
											style="background-image: url(images/insta-3.jpg);"> <span
											class="ion-logo-instagram"></span>
					</a>
				</div>
				<div class="col-md">
					<a href="#"
											class="instagram img d-flex align-items-center justify-content-center"
											style="background-image: url(images/insta-4.jpg);"> <span
											class="ion-logo-instagram"></span>
					</a>
				</div>
				<div class="col-md">
					<a href="#"
											class="instagram img d-flex align-items-center justify-content-center"
											style="background-image: url(images/insta-5.jpg);"> <span
											class="ion-logo-instagram"></span>
					</a>
				</div>
			</div>
		</div>
	</section>

	
					<footer class="ftco-footer ftco-bg-dark ftco-section">
		<div class="container-fluid px-md-5 px-3">
			<div class="row mb-5">
				<div class="col-md-6 col-lg-3">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Appetizer</h2>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
						<ul
							class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
							<li class="ftco-animate"><a href="#"><span
									class="icon-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-instagram"></span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-lg-3">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Open Hours</h2>
						<ul class="list-unstyled open-hours">
							<li class="d-flex"><span>Monday</span><span>9:00 -
									24:00</span></li>
							<li class="d-flex"><span>Tuesday</span><span>9:00 -
									24:00</span></li>
							<li class="d-flex"><span>Wednesday</span><span>9:00 -
									24:00</span></li>
							<li class="d-flex"><span>Thursday</span><span>9:00 -
									24:00</span></li>
							<li class="d-flex"><span>Friday</span><span>9:00 -
									02:00</span></li>
							<li class="d-flex"><span>Saturday</span><span>9:00 -
									02:00</span></li>
							<li class="d-flex"><span>Sunday</span><span> 9:00 -
									02:00</span></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-lg-3">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Newsletter</h2>
						<p>Far far away, behind the word mountains, far from the
							countries.</p>
						<form action="#" class="subscribe-form">
							<div class="form-group">
								<input type="text" class="form-control mb-2 text-center"
									placeholder="Enter email address"> <input type="submit"
									value="Subscribe" class="form-control submit px-3">
							</div>
						</form>
					</div>
				</div>
				<div class="col-md-6 col-lg-3">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Instagram</h2>
						<div class="thumb d-sm-flex">
							<a href="#" class="thumb-menu img"
								style="background-image: url(images/insta-1.jpg);"> </a> <a
								href="#" class="thumb-menu img"
								style="background-image: url(images/insta-2.jpg);"> </a> <a
								href="#" class="thumb-menu img"
								style="background-image: url(images/insta-3.jpg);"> </a>
						</div>
						<div class="thumb d-flex">
							<a href="#" class="thumb-menu img"
								style="background-image: url(images/insta-4.jpg);"> </a> <a
								href="#" class="thumb-menu img"
								style="background-image: url(images/insta-5.jpg);"> </a> <a
								href="#" class="thumb-menu img"
								style="background-image: url(images/insta-6.jpg);"> </a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">

					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="icon-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>


	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="/js/jquery.min.js"></script>
	<script src="/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.easing.1.3.js"></script>
	<script src="/js/jquery.waypoints.min.js"></script>
	<script src="/js/jquery.stellar.min.js"></script>
	<script src="/js/owl.carousel.min.js"></script>
	<script src="/js/jquery.magnific-popup.min.js"></script>
	<script src="/js/aos.js"></script>
	<script src="/js/jquery.animateNumber.min.js"></script>
	<script src="/js/bootstrap-datepicker.js"></script>
	<script src="/js/jquery.timepicker.min.js"></script>
	<script src="/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="/js/google-map.js"></script>
	<script src="/js/main.js"></script>
	<script src="../resources/js/reviewDetail.js" type="text/javascript"></script>

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<script type="text/javascript">
		$("#openModalBtn").on("click", function() {
			$(".modal").modal("show")
		})

		$("#closeModalBtn").on("click", function() {
			$(".modal").modal("hide");
		})

		$("#subm").on("click", function() {
			if (!confirm('신고하시겠습니까?'))
				return;
			$("#frm").submit();
		})
	</script>
</body>
</html>