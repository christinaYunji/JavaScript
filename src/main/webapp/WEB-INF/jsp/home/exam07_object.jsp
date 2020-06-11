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
						//객체 생성 - 자바스크립트는 동적 객체의 경우, 클래스 없이도 아래와 같이 만들 수 있음
						car = {
								//속성 (Java의 Field와 같음)
								name:"Mercedes-Benz",
								model: "세단",
								weight: 850,
								color: "red",
								speed: 0,
								
								//메소드
								start:	function(){
									console.log("시동을 걸자");
								},
								
								drive:	function(){
									// property에 접근하려면 this를 반드시 붙여야 함!
									console.log(this.speed + "로 달리자");
								},
								
								setSpeed:		function(speed){
									this.speed = speed;
								},
								
								brake:	function(){
									console.log("끼이익-브레이크!");
								},
								
								stop:	function(){
									console.log("시동을 끄자");
								}
						};
				}
				
				function fun2(){
					console.log(car.name);
					console.log(car.model);
					console.log(car.weight);
					console.log(car.color);
					console.log(car.speed);
					
					//start 메소드 호출
					car.start();
					
					//speed를 60으로 바꾸기
					car.speed = 60;
					
					// drive / brake / stop 메소드 호출
					car.drive();
					car.brake();
					car.stop();
				}
		</script>
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam07_object.jsp</h5>
		
		<div>
				<button onclick="fun1()"> 동적 객체 car 생성</button>
				<button onclick="fun2()"> 동적 객체 car 사용</button>
		</div>
	</body>
</html>