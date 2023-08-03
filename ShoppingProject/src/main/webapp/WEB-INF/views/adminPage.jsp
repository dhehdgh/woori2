<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="include/admin_header.jsp" %>

    <!-- 여기부터 작성-->
	<div class="box-container">
		<div class="box">
		    <a href="adminMember">
		      	<img src="${contextPath}/resources/bootstrap/img/회원관리.png" alt="adminMember">
		      	회원관리
		    </a>
		</div>
	
	  	<div class="box">
	    	<a href="adminItem">
	      		<img src="${contextPath}/resources/bootstrap/img/상품관리.png" alt="adminItem">
	      		상품관리
	    	</a>
		</div>
	  
	  
		<div class="box">
		    <a href="adminHelp">
		      	<img src="${contextPath}/resources/bootstrap/img/고객지원.png" alt="adminHelp">
		      	고객지원
		    </a>
		</div>
	  
	  
	  	<div class="box">
	    	<a href="adminOrder">
	      		<img src="${contextPath}/resources/bootstrap/img/주문관리.png" alt="adminOrder">
	      		주문관리
	    	</a>
		</div>
	  	<div class="box">
	    	<a href="adminReview">
	      		<img src="${contextPath}/resources/bootstrap/img/리뷰관리.png" alt="adminReivew">
	      		리뷰관리
	    	</a>
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