<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<script language="JavaScript" type="text/JavaScript">

function linkToOpener(URL){
if (window.opener && !window.opener.closed)
window.opener.location = URL;
window.close();
}
</script>

<meta charset="EUC-KR">
<title>장바구니 담기</title>
</head>
<body>
	<div align="center">
		<br><h3>장바구니에 상품이</h3>
		<h3>정상적으로 담겼습니다.</h3>
		<a href="javascript:linkToOpener('${contextPath}/board/cartView?membernum=${user.membernum}');"><input type='BUTTON' value="장바구니 이동"></a>
		<input type='BUTTON' value="쇼핑 계속하기" onClick='window.close()'>
	</div>
</body>
</html>