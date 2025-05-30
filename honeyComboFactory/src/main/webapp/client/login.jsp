<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.do"%>
	<%@ include file="naverlogin.jsp" %>
	
<!doctype html>
<html lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>로그인 - 꿀조합팩토리</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/logo/iconLogo.jpg">
<<script>
(function(){
  const memberNumber = "<%= session.getAttribute("loginedMemberNumber") %>";
  if (memberNumber && memberNumber !== "null" && !sessionStorage.getItem("loginedMemberNumber")) {
    sessionStorage.setItem("loginedMemberNumber", memberNumber);
    alert("이미 로그인된 상태입니다.");
    location.href = "main.do";
  }
})();
</script>

</head>
<body>
	<!-- 헤더 영역 -->
	<%@ include file="header.jsp"%>

	<main>
		<!--================login_part Area =================-->
		<section class="login_part">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-6 col-md-6">
						<div class="login_part_text text-center">
							<div class="login_part_text_iner">
								<h2>이번이 처음이신가요?</h2>
								<p>
									다양한 편의점 상품을 조합하여<br> 고객 맞춤형 세트를 제공하는 온라인 쇼핑몰입니다.<br>
									간편하고 새로운 상품 조합을 통해<br> 새로운 맛을 느껴보세요.
								</p>
								<a href="join.do" class="btn_3">회원가입 하러가기</a>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="login_part_form">
							<div class="login_part_form_iner">
								<h3>
									방문을 환영합니다 ! <br> Welcome your visit
								</h3>
								<form id="loginForm" class="row contact_form" method="post">
									<div class="col-md-12 form-group p_star">
										<input type="text" class="form-control" id="memberId"
											name="memberId" placeholder="아이디" required>
									</div>
									<div class="col-md-12 form-group p_star">
										<input type="password" class="form-control"
											id="memberPassword" name="memberPassword" placeholder="비밀번호"
											required>
									</div>
									<div class="col-md-12 form-group">
										<button type="submit" value="submit" class="btn_3">
											로그인</button>
										<a href="javascript:void(0);" onclick="kakaoLogin()"> <img
											alt="카카오 로그인 이미지" src="assets/img/login/kakaoLoginBtn.png">
										</a> <br> <br> 	<a href="<%= apiURL %>"> 
											<img alt="네이버 로그인 이미지" src="assets/img/login/naverLoginBtn.png">
										</a> <br> <br> <a class="lost_pass"
											href="findAccount.do">아이디 / 비밀번호 찾기</a>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--================login_part end =================-->
	</main>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- 푸터 영역 -->
	<%@ include file="footer.jsp"%>

	<!-- 카카오 SDK 로드 -->
	<script type="text/javascript"
		src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<!-- 사용자 정의 js -->
	<script src="assets/js/customization/login.js"></script>
</body>
</html>