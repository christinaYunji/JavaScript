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
				//클래스 정의
				class Car {
					constructor(model, year){
						console.log("constructor() 실행")
						
						//필드 선언
						this.model = model;
						this.year = year;
						this.speed = 0;
						this._mileage=30;
					}
					
					//static method
					static getModel(){
						return "Mercedes-Benz";
					}
					
					//instance method
					setSpeed(speed){
						this.speed = speed;
					}
					
					getSpeed(){
						return this.speed;
					}
					
					//getter, setter
					get mileage(){
						console.log("mileage( ) 실행");
						return this._mileage;
					}
					
					set mileage(value){
						console.log("mileage(value) 실행");
						this._mileage = value;
					}
				}
				
				//함수 정의
				function fun1(){
					//객체 생성
					var myCar = new Car("Benz", 2020);
					
					//인스턴스 필드 읽기
					console.log(myCar.model);
					console.log(myCar.year);
					
					//인스턴스 메소드 호출
					myCar.setSpeed(100);
					console.log(myCar.getSpeed());
					
					//정적 메소드 호출
					var model = Car.getModel();
					console.log(model);
					
					//private 필드 접근
					console.log(myCar._mileage);
					
					//setter 사용
					myCar.mileage = 60;
					//getter 사용
					console.log(myCar.mileage);
				}
		</script>

	</head>
	<body>
		<h5 class="alert alert-info">/home/exam12_class.jsp</h5>
		
		<button onclick="fun1()">class</button>
	</body>
</html>