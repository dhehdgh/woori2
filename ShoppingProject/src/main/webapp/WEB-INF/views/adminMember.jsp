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
	            <h1 class="text-heading" style="font-size: 1.5rem;">회원 관리</h1>
	        </div>
	    </div>
	    <div class="row justify-content-center">
	    	<div class="col-12">
	    	<div class="table-responsive">
                <div style="overflow-x: scroll;">
				<table class="table table-bordered table-striped table-hover" style="width: max-content;">
					<colgroup>
                        <col style="width: 100px;">
                    </colgroup>
					<thead class="thead-dark">
					    <tr>
					        <th scope="col">번호</th>
					        <th scope="col">아이디</th>
					        <th scope="col">이름</th>
					        <th scope="col">이메일</th>
					        <th scope="col">전화번호</th>
					        <th scope="col">생년월일</th>
					        <th scope="col">포인트</th>
					        <th scope="col">누적포인트</th>
					        <th scope="col">도로명주소</th>
					        <th scope="col">지번주소</th>
					        <th scope="col">상세주소</th>
					        <th scope="col">참고항목</th>
					        <th scope="col">우편번호</th>
					        <th scope="col">가입일</th>
					        <th scope="col">회원상태</th>
					        <th scope="col">권한</th>
					        <th scope="col">성별</th>
					        <th scope="col">개인정보수집동의</th>
					    </tr>
				    </thead>
				    <c:forEach items="${adminMember}" var="adminMember">
				        <tr onclick="window.location.href = '${contextPath}/board/adminMemberDetail?membernum=${adminMember.membernum}';" onmouseover="this.style.cursor='pointer';">
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
				</div>
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