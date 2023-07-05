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
		<a href="${contextPath}/board/adminItem" class="genric-btn info-border">상품관리</a>
		<a href="${contextPath}/board/adminMember" class="genric-btn info-border">회원관리</a>
		<a href="${contextPath}/board/adminHelp" class="genric-btn info-border">문의사항</a>
		<a href="${contextPath}/board/adminReturn" class="genric-btn info-border">반품처리</a>
		<a href="${contextPath}/board/adminExchange" class="genric-btn info-border">교환처리</a>
		<a href="${contextPath}/board/adminOrder" class="genric-btn info-border">주문내역</a>
		<a href="${contextPath}/board/adminReview" class="genric-btn info-border">신고리뷰</a>
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