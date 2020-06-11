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
					//배열 생성
					var arr1 = ["Maserati","Benz","BMW"];
					var arr2 = new Array("Maserati","Benz","BMW");
					
					//length 속성
					for (var i=0; i<arr1.length; i++){
							console.log(arr1[i]);
					}
					
					//배열 요소 값 바꾸기
					arr2[0]="마세라티";
					arr2[1]="벤츠";
					arr2[2]="비엠더블유";
					console.log(arr2);
					
					//객체 배열 생성하기
					var arr3 = [
						{mid:"summer", mname: "하여름"},
						{mid:"fall", mname: "추가을"},
						{mid:"winter", mname: "동겨울"}
					];
					//특정 배열요소 추출하기
					console.log(arr3);
					console.log(arr3[1].mname);
					
					//빈 배열에 요소 넣기 - push
					var arr4 = [];
					arr4[0] = "파이썬";
					arr4[1] = "자바스크립트";
					arr4.push("자바");
					console.log(arr4);
					
					//배열에서 요소 하나씩 추출하기
					var arr5 = ["Banana", "Orange", "Apple", "Mango"];
					var length = arr5.length;
					// HOW 1 - pop 이용 - 뒤에서부터 처리
					for (var i=0; i<length ; i++){
						console.log(arr5.pop());
					}
					// HOW 2 - forEach( )이용 - 앞에서부터 처리
					var arr5 = ["Banana", "Orange", "Apple", "Mango"];
					arr5.forEach(function(value, index){
					console.log("value: " + value, ", index: " + index);
					});
					
					//요소 삽입 및 교체 - splice(어느 위치에, 기존요소 중 삭제하고, 새롭게 교체할 요소 수, 새로 넣을 요소)
					var arr6 = ["Banana", "Orange", "Apple", "Mango"];
					arr6.splice(2, 0, "Lemon", "Kiwi");
					console.log(arr6);
					
					function fun2(){
						var now = new Date();
						console.log(now.getFullYear() + "-" + (now.getMonth()+1) + "-" + now.getDate());
					}
					
					function fun3() {
						var obj = {
								mid: "summer",
								mname: "홍길동",
								mage: 30,
								hobby: ["movie","cooking", "traveling"],
								adult: true
							};
						
						//Object -> JSON
						var strJson = JSON.stringify(obj);
						console.log(strJson);
						
						//JSON -> Object
						var obj2 = JSON.parse(strJson);
						console.log(obj2);
						console.log(obj2.mname);
						console.log(obj2.hobby);
					}
		</script>
		
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam10_built_in_object.jsp</h5>
		
		<div>
				<button onclick="fun1()">Array</button>
				<button onclick="fun2()">Date</button>
				<button onclick="fun3()">JSON 문자열 처리</button>
		</div>
	</body>
</html>