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
			        <th>번호</th>
			        <th>아이디</th>
			        <th>이름</th>
			        <th>이메일</th>
			        <th>전화번호</th>
			        <th>생년월일</th>
			        <th>포인트</th>
			        <th>누적포인트</th>
			        <th>도로명주소</th>
			        <th>지번주소</th>
			        <th>상세주소</th>
			        <th>참고항목</th>
			        <th>우편번호</th>
			        <th>가입일</th>
			        <th>회원상태</th>
			        <th>권한</th>
			        <th>성별</th>
			        <th>개인정보수집동의</th>
			    </tr>
		    </thead>
		    <c:forEach items="${adminMember}" var="adminMember">
		        <tr>
		            <td>${adminMember.membernum}</td>
		            <td>${adminMember.id}</td>
		            <td>${adminMember.name}</td>
		            <td>${adminMember.email}</td>
		            <td>${adminMember.tel}</td>
		            <td>${adminMember.birth}</td>
		            <td>${adminMember.point}</td>
		            <td>${adminMember.pointac}</td>
		            <td>${adminMember.roadaddr}</td>
		            <td>${adminMember.jibunaddr}</td>
		            <td>${adminMember.detailaddr}</td>
		            <td>${adminMember.extraaddr}</td>
		            <td>${adminMember.postcode}</td>
		            <td>${adminMember.joindate}</td>
		            <td>${adminMember.state}</td>
		            <td>${adminMember.authority}</td>
		            <td>${adminMember.gender}</td>
		            <td>${adminMember.agree}</td>
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