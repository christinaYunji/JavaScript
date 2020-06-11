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
				function fun1() {
						console.log("fun1() 실행");				
				}
				
				//함수에서 매개변수를 선언할 때는 var를 붙이지 않음 (초기값을 주는 것 안됨)
				//함수 호출할 땐 반드시 매개값을 선언된 매개변수대로 주어야 함 ( 이 경우는 2개)
				function fun2(a, b) {
						var result = a+b;
						return result;
				}
				
				function fun3(a, b) {
						var result = fun2(a, b);
						console.log(result);
				}
				
				function fun4(result) {
						if (result == null) {
							return false;
						}	else {
							return true;
						}
				}
				
				function fun5() {
						//document(body 전체)에서 loginForm이름의 태그를 찾고, mid 이름을 갖는 태그를 찾아서, 그것의 value(초기값)을 가져오겠다는 의미
						var mid = document.loginForm.mid.value;
						
						//test 출력해보기 (아주 잠깐 출력되고 main으로 넘어감!)
						console.log(mid);
						
						if (mid == ""){
							return false;
						}	else {
							return true;
						}
				}	
				
				// 이름이 없는 함수를 변수에 대입했음 --> 변수 자체가 함수가 됨 (함수 객체 생성) --> var6이 함수이름이 됨 | 이건 마치, function var6() {}와 같음
				var var6 = function(){
					console.log("var6( ) 함수 실행")
				};
				
		</script>
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam06_function.jsp</h5>
		
		<div>
				<button onclick="fun1()" class="btn btn-success btn-sm">fun1( ) 호출</button>
				<button onclick="fun3(3,5)" class="btn btn-danger btn-sm">fun3( ) 호출</button>
				
				<a onclick="return fun4(something)" href="main.do" class="btn btn-warning btn-sm">메인 화면으로 돌아가기</a>
				
				<form name="loginForm" method="post" action="main.do" style = "margin-top: 10px" onsubmit="return fun5()" >
						<input type="text" name="mid" />
						
						<!--  submit의 효과를 내는 3가지 -->
						<input type="submit" value="전송" class="btn btn-success btn-sm"/>
						<button class="btn btn-warning btn-sm">전송</button>
						<input type="image" src="${pageContext.request.contextPath}/resource/img/red_button.JPG" />
				</form>
				
				<button onclick="var6()" class="btn btn-warning btn-sm" style = "margin-top: 10px" >var6( ) 호출</button>
		</div>
	</body>
</html>