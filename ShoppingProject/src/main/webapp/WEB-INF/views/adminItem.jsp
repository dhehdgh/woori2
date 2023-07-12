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
	            <h1 class="text-heading" style="font-size: 1.5rem;">상품 관리</h1>
	        </div>
	        <div class="col-6 d-flex justify-content-end">
	            <a class="btn btn-primary" href="${contextPath}/board/adminItemInsert">상품 추가</a>
	        </div>
	    </div>
	    <div class="row justify-content-center">
	        <div class="col-12">
	            <table class="table table-bordered table-striped table-hover table-responsive" table-layout: auto;">
	                <thead class="thead-dark">
	                    <tr>
	                        <th scope="col">상품번호</th>
	                        <th scope="col">상품이름</th>
	                        <th scope="col">가격</th>
	                        <th scope="col">판매량</th>
	                        <th scope="col">등록날짜</th>
	                        <th scope="col">대분류</th>
	                        <th scope="col">소분류</th>
	                        <th scope="col">평점</th>
	                    </tr>
	                </thead>
	                <c:forEach items="${adminItem}" var="adminItem">
	                    <tr onclick="window.location.href = '${contextPath}/board/adminItemDetail?itemnum=${adminItem.itemnum}';" onmouseover="this.style.cursor='pointer';">
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