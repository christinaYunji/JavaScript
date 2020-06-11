<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/popper/popper.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.js"></script>
		
		<script>
				function fun1(){
					//도메인주소 창, 도구모음 등을 제외한 window창의 크기 구하기
					var width = window.innerWidth;
					var height = window.innerHeight;
					console.log(width + "x" + height);
				}
				
				function fun2() {
					for(var i=0; i<10; i++){
						var myWindow = window.open("https://www.w3schools.com", "", "width=400,height=300");
					}
				}
				
				function fun3() {
					myWindow.close();
				}
				
				function fun4(start) {
					if(start) {
						//반복 실행 시작 (intervalID는 전역 변수)
						intervalID= window.setInterval(
								function () {
									console.log("데이터를 보냄")
								},
								1000
						);
					}	else {
						//반복 실행 중지
						window.clearInterval(intervalID)
					}
				}
				
				function fun5(start) {
					if(start) {
						//예약 실행
						timeoutID= window.setTimeout(
								function () {
									console.log("알람을 울림");
								},
								3000
						);
					}	else {
						//예약 취소 - 실행되기 전에는 취소가 가능하지만, 그 이후에는 의미가 없음
						window.clearTimeout(timeoutID);
					}
				}
				
				function fun6() {
					//window는 생략해도 되고 놔둬도 됨!
					window.location.href = "https://www.w3schools.com";
				}
				
		</script>
		
	</head>
	
	<body>
		<h5 class="alert alert-info">/home/exam13_bom.jsp</h5>
		
		<ul>
				<li><a href = "javascript:fun1()">window창의 크기 정보</a></li>
				<li><a href = "javascript:fun2()">새 창 띄우기</a></li>
				<li><a href = "javascript:fun3()">새 창 닫기</a></li>
				<li><a href = "javascript:fun4(true)">Set Interval Method 주기적 실행 시작</a></li>
				<li><a href = "javascript:fun4(false)">Clear Interval Method 주기적 실행 중지</a></li>
				<li><a href = "javascript:fun5(true)">Set Timeout 예약 실행</a></li>
				<li><a href = "javascript:fun5(false)">Clear Timeout 예약 취소</a></li>
				<li><a href = "javascript:fun6()">URL 변경</a></li>
		</ul>
	</body>
</html>