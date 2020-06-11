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
				//객체를 찾는 목적: 객체의 속성을 바꾸거나, 객체 안의 내용을 바꾸기 위해
				function fun1() {
						//객체 찾는 방법  1 - ID로 찾기 (중복된 ID가 있으면 안됨)
						//var div1 = document.getElementById("div1");
						
						//querySelector를 이용할 때, ID의 경우는 #을 앞에 붙여줘야 함
						var div1 = document.querySelector("#div1");
						div1.style.backgroundColor = "coral";
				}		
				
				//객체 찾는 방법  2 - Class Name으로 찾기
				function fun2() {
					//var class1 = document.getElementsByClassName("class1");
					
					//querySelectAll을 이용할 때, ClassName의 경우 앞에 . 을 붙여줘야 함
					var class1 = document.querySelectorAll(".class1");
					for ( var i=0; i<class1.length; i++){
						class1[i].style.backgroundColor = "yellow";
					}
				}
				
				//기존 속성을 변경하고자 할 때 (img의 경우는 src)
				function fun3() {
					var img1 = document.querySelector("#img1");
					img1.src= "${pageContext.request.contextPath}/resource/img/milk2.jpg";
				}
				
				//내용을 새롭게 추가하고자 할 때
				function fun4() {
					var div2 = document.querySelector("#div2");
					div2.innerHTML += "<img src= '${pageContext.request.contextPath}/resource/img/milk3.jpg' />";
				}
				
				//사용자가 입력한 값 얻는 방법
				function fun5() {
					// HOW 1 : form의 name을 읽고, form태그 내부의 input태그의 name을 읽어옴
					var mid = document.loginForm.mid.value;
				
					// HOW 2 : 만약 전체 html문서 내부에 "mpassword"의 id가 유일할 때는 아래와 같이도 작성할 수 있음
					//만약 중복된 id가 있을 경우, 먼저 언급되는 id를 불러옴! (#이 여러개 있을 때는 앞에서 언급된 것부터 찾고, 그 내부에서 순차적으로 뒤의 #를 찾음)
					var mpassword = document.querySelector("#loginForm #mpassword").value;
				
					//간단한 유효성 검사
					if (mid == "" || mpassword=="") {
						window.alert("필수 입력 값이 없음");
						return false;
						}	else {
								return true;
						}
				}
				
		</script>
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam14_dom.jsp</h5>
		
		<div style="margin-bottom: 20px; padding: 10px; border-top: 1px solid black">
				<button onclick="fun1()" style="margin-bottom: 10px;">객체 찾기 by ID</button>
				<button onclick="fun2()" style="margin-bottom: 10px;">객체 찾기 by Class</button>
				<div>
						<div id="div1" style="width:100px; height:100px; border: 1px solid coral; display: inline-block;">id: div1</div>
						<div class="class1" style="width:100px; height:100px; border: 1px solid coral; display: inline-block;">class: class1</div>
						<div class="class1" style="width:100px; height:100px; border: 1px solid coral; display: inline-block;">class: class2</div>
				</div>
		</div>
		
		<div style="margin-bottom: 20px; padding: 10px; border-top: 1px solid black">
				<button onclick="fun3()" style="margin-bottom: 10px;">속성 변경</button>
				<div>
						<img id="img1" src="${pageContext.request.contextPath}/resource/img/milk1.jpg">
				</div>
		</div>
		
		<div style="margin-bottom: 20px; padding: 10px; border-top: 1px solid black">
				<button onclick="fun4()" style="margin-bottom: 10px;">내용 채우기</button>
				<div id="div2"></div>
		</div>
		
		<div style="margin-bottom: 20px; padding: 10px; border-top: 1px solid black">
				<div>
						<form id="loginForm" name="loginForm" action="main.do" onsubmit="return fun5()">
								<!--  id는 자바스크립트에서 객체를 찾을 때 사용하고, name은 객체를 서버로 넘길 때 사용하는 매개변수의 이름 (보통 id와 name은 같은 이름으로 주어야 함) -->
								ID: <input id="mid" name="mid" type="text"/><br/>
								PW: <input id="mpassword" name="mpassword" type="password"/><br/>
								<button onclick="fun5()" style="margin-bottom: 10px;">사용자가 입력한 값 검사 후 전송하기</button>
						</form>
				</div>
		</div>
	</body>
</html>