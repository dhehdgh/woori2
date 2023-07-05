<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="include/header.jsp" %>

<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<body>
	<div>
		<%@ include file="include/mypage_left_column.jsp" %>
		<div>
	 	<svg class="w-5 h-5 mr-2" fill="currentColor" viewBox="0 0 20 20"> </svg>
    	</div>              
	 <h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300"> 회원탈퇴</h4>   
	</div>
<!--::subscribe_area part end::-->

    <!--::footer_part start::-->
	<%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
	<%@ include file="include/javascript.jsp" %>
    <%@ include file="include/style.jsp" %>

</body>

</html>