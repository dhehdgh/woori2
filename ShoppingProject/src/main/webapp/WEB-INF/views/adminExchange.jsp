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
	<div class="container">
    	<div class="row mb-3 mt-5 align-items-center">
	        <div class="col-6">
	            <h1 class="text-heading" style="font-size: 1.5rem;">교환내역</h1>
	        </div>
	    </div>
    	<div class="row justify-content-center">
	        <div class="col-12">
				<table class="table table-bordered table-striped table-hover table-responsive" table-layout: auto;">
					<thead class="thead-dark">
					    <tr>
					        <th>교환번호</th>
					        <th>주문번호</th>
					        <th>결제방식</th>
					        <th>결제금액</th>
					        <th>교환신청일</th>
					        <th>교환완료일</th>
					        <th>상태</th>
					    </tr>
				    </thead>
				    <c:forEach items="${adminExchange}" var="adminExchange">
				        <tr onclick="window.location.href = '${contextPath}/board/adminExchangeDetail?returnnum=${adminExchange.returnnum}';" onmouseover="this.style.cursor='pointer';">
				            <td>${adminExchange.returnnum}</td>
				            <td>${adminExchange.buynum}</td>
				            <td>${adminExchange.orderDTO.paymethod}</td>
				            <td>${adminExchange.orderDTO.payment}</td>
				            <td>${adminExchange.returndate}</td>
				            <td>${adminExchange.recomdate}</td>
				            <td>${adminExchange.state}</td>
				        </tr>
				    </c:forEach>
				</table>
		   	</div>
   		</div>
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