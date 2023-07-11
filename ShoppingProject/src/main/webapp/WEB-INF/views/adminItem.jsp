<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="include/header.jsp" %>

    <!-- 여기부터 작성-->
	<div class="d-flex justify-content-center">
		<table class="table table-bordered table-striped" style="max-width: 1800px;">
			<thead class="thead-dark">
			    <tr>
			        <th>상품번호</th>
			        <th>상품이름</th>
			        <th>가격</th>
			        <th>판매량</th>
			        <th>등록날짜</th>
			        <th>대분류</th>
			        <th>소분류</th>
			        <th>평점</th>
			    </tr>
		    </thead>
		    <c:forEach items="${adminItem}" var="adminItem">
		        <tr onclick="window.location.href = '${contextPath}/board/adminItemDetail?itemnum=${adminItem.itemnum}';">
		            <td>${adminItem.itemnum}</td>
		            <td>${adminItem.itemname}</td>
		            <td>${adminItem.itempay}</td>
		            <td>${adminItem.itembuycnt}</td>
		            <td>${adminItem.itemdate}</td>
		            <td>${adminItem.itemb}</td>
		            <td>${adminItem.items}</td>
		            <td>${adminItem.rstar}</td>
		        </tr>
		    </c:forEach>
		</table>
   	</div>
    <!-- 끝 -->

    <!--::footer_part start::-->
	<%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
	<%@ include file="include/javascript.jsp" %>
    <%@ include file="include/style.jsp" %>
</body>

</html>