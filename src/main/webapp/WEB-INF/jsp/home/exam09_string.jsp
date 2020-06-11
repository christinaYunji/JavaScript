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
					var str = "010-123-4567";
					console.log(str.substr(0,3));
					console.log(str.substring(4,7));
					
					var lastIndex = str.lastIndexOf("-");
					console.log(str.slice(lastIndex+1));
				}
				
				function fun2(){
					var str1 = "010-123-4567";
					var str2 = str1.replace("010", "011");
					console.log(str1);
					console.log(str2);
				}
				
				function fun3() {
					var str1 = "123456-4567890";
					console.log(str1.charAt(7));
				}
				
				function fun4(){
					var str = "010-123-4567";
					var nums = str.split("-");
					
					//nums는 배열이 되며, 이때 length이용해서 배열의 길이 측정
					console.log("nums.length: ", nums.length);
					
					// 배열로 구성되는 nums의 요소를 출력하고자 할 때 아래와 같이 작성
					for (var i =0; i<nums.length ; i++){
						console.log(nums[i])
					}
					// 지금은 토큰의 갯수가 많지 않으니 아래와 같이 하나씩 출력해도 됨!
					console.log(nums[0]);
					console.log(nums[1]);
					console.log(nums[2]);
				}
				
				function fun5() {
					//parseInt 
					var var1= "10";
					var var2= 5;
					var result= parseInt(var1) + var2;
					console.log(result);
					
					//parseFloat
					var var3="10.3";
					var var4= 5;
					var result= parseFloat(var3) + var4;
					console.log(result);
				}
		</script>
		
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam09_string.jsp</h5>
		
		<div>
				<button onclick="fun1()">Extracting String</button>
				<button onclick="fun2()">Replacing String</button>
				<button onclick="fun3()">Extracting String Characters</button>
				<button onclick="fun4()">Splitting a String into tokens</button>
				<button onclick="fun5()">Converting Variables to numbers</button>
		</div>
	</body>
</html>