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
					// undefined - 변수가 선언만 되고, 값이 없는 것
					var var1;
					console.log("var1:" + var1);
					
					// null 값일 때
					var var2 = null;
					console.log("var2:" + var2);
					
					//true가 나옴 (undefined나 null이나 동등!)
					console.log(var1 == var2);
					
					// 두개의 if문 모두 실행이 안됨! var1과 var2가 undefined / null 이기 때문에 false와 같음
					if (var1) {
						console.log("실행1");
					}
					if (var2) {
						console.log("실행2");
					}
				}
		</script>
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam05_undefined_null.jsp</h5>
		
		<div>
				<a href="javascript:fun1()" class="btn btn-success btn-sm">fun1() 호출</a>
		</div>
		
	</body>
</html>