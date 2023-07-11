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
			        <th>문의번호</th>
			        <th>회원번호</th>
			        <th>제목</th>
			        <th>문의날짜</th>
			        <th>답변날짜</th>
			        <th>문의확인</th>
			    </tr>
		    </thead>
		    <c:forEach items="${adminHelp}" var="adminHelp">
		        <tr onclick="window.location.href = '${contextPath}/board/adminHelpDetail?hno=${adminHelp.hno}';">
		            <td>${adminHelp.hno}</td>
		            <td>${adminHelp.membernum}</td>
		            <td>${adminHelp.title}</td>
		            <td>${adminHelp.hdate}</td>
		            <td>${adminHelp.rehdate}</td>
		            <td>${adminHelp.state}</td>
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