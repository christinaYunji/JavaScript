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
		
		<!--  공통적으로 적용되는 style 요소들 정리 css파일로 외부 내보내기함
		<style type="text/css">
		/*		작성 양식 
				선택자 {
						속성:값;
						속성:값;
						. . .
				} 						*/
				
				button {
					margin-bottom: 10px;
				}
				
				#container {
					margin-bottom: 20px; 
					padding: 10px; 
					border-top: 1px solid black;
				}
				
				#div1{
					width:100px; 
					height:100px; 
					border: 1px solid coral; 
					display: inline-block;
				}

				.class1 {
					width:100px; 
					height:100px; 
					border: 1px solid coral; 
					display: inline-block;
				}
		</style>																	-->																
		
		<!--  css 파일 외부로 저장해둔 것을 불러오는 방법 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/exam17_css.css">

	</head>
	<body>
		<h5 class="alert alert-info">/home/exam17_css.jsp</h5>
		
		<div id="container">
				<button>버튼 1</button>
				<button>버튼 2</button>
				<div>
						<div id="div1">id: div1</div>
						<div class="class1">class: class1</div>
						<div class="class1">class: class2</div>
				</div>
		</div>
	</body>
</html>