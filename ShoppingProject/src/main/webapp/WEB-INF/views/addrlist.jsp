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
<title>배송지관리</title>
</head>
<body>
	<div class="container grid px-6 mx-auto">
	<div>
	<%@ include file="include/mypage_left_column.jsp" %>
	</div>
	<table>
		<th>
		배송지
		</th>
		<td>
		배송지
		</td>
		<th>
		배송지
		</th>
		<td>
		배송지
		</td>
	</table>
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