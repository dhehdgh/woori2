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
			        <th>교환번호</th>
			        <th>주문번호</th>
			        <th>교환신청일</th>
			        <th>교환완료일</th>
			        <th>상태</th>
			    </tr>
		    </thead>
		    <c:forEach items="${adminExchange}" var="adminExchange">
		        <tr>
		            <td>${adminExchange.returnnum}</td>
		            <td>${adminExchange.buynum}</td>
		            <td>${adminExchange.returndate}</td>
		            <td>${adminExchange.recomdate}</td>
		            <td>${adminExchange.state}</td>
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