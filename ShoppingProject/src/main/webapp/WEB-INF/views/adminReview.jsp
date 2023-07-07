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
			        <th>신고번호</th>
			        <th>상품번호</th>
			        <th>리뷰번호</th>
			        <th>신고날짜</th>
			    </tr>
		    </thead>
		    <c:forEach items="${adminReview}" var="adminReview">
		        <tr>
		            <td>${adminReview.drnum}</td>
		            <td>${adminReview.reviewDTO.itemnum}</td>
		            <td>${adminReview.reviewDTO.reviewno}</td>
		            <td>${adminReview.drdate}</td>
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