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
	<div id="wrapper">
	
	<div id="snb" class="col-md-3">
        <div class="snb_header ico_config">
            <h2><i class="ionicons ion-ios-people fs40"></i>회원관리</h2>
        </div>
        <dl class="nav flex-column">
            <dt class="m10 menu_toggle">회원관리</dt>
            <dd class="m10">
                <a class="nav-link" href="${contextPath}/board/adminMember">회원 정보관리</a>
            </dd>
            <dd class="m10 active">
                <a class="nav-link" href="${contextPath}/board/adminMemberRank">회원 등급관리</a>
            </dd>
            <dd class="m10">
                <a class="nav-link" href="${contextPath}/board/adminMemberRegister">회원 등록하기</a>
            </dd>
            <dt class="m10 menu_toggle">상품관리</dt>
            <dd class="m10">
                <a class="nav-link" href="${contextPath}/board/adminItem">전체 상품관리</a>
            </dd>
            <dd class="m10">
                <a class="nav-link" href="${contextPath}/board/adminItemInsert">상품 추가하기</a>
            </dd>
            <dt class="m10 menu_toggle">고객지원</dt>
            <dd class="m10">
                <a class="nav-link" href="${contextPath}/board/adminHelp">1:1 상담문의</a>
            </dd>
            <dt class="m10 menu_toggle">주문관리</dt>
            <dd class="m10">
                <a class="nav-link" href="${contextPath}/board/adminOrder">주문리스트</a>
            </dd>
            <dd class="m10">
                <a class="nav-link" href="${contextPath}/board/adminReturn">반품리스트</a>
            </dd>
            <dd class="m10">
                <a class="nav-link" href="${contextPath}/board/adminExchange">교환리스트</a>
            </dd>
            <dt class="m10 menu_toggle">리뷰관리</dt>
            <dd class="m10">
                <a class="nav-link" href="${contextPath}/board/adminReview">신고리뷰리스트</a>
            </dd>            
        </dl>
    </div>
	<div id="content"  class="col-md-9">
		<div class="breadcrumb">
			<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 회원관리 <i class="ionicons ion-ios-arrow-right"></i> 회원 등급관리		
		</div>
	
		<div class="s_wrap">
			<h1>회원 등급관리</h1>
			
		<h2>세부설정</h2>
		<form name="frmlist" method="post" action="${contextPath}/board/adminMemberRank">
			<div class="tbl_head01 mt-3">
               	<table id="myTable" class="table table-bordered table-hover table-responsive" table-layout: auto;">
					<colgroup>
						<col class="w50">
						<col class="w130">
						<col class="w150">
						<col>
						<col class="w130">
					</colgroup>
					<thead>
					<tr>
						<th scope="col" onclick="sortTable(0)" class="active">등급</th>
                          	<th scope="col" onclick="sortTable(1)" class="active">등급명</th>
                          	<th scope="col" onclick="sortTable(2)" class="active">할인률</th>
                          	<th scope="col" onclick="sortTable(3)" class="active">적립률</th>
                         	<th scope="col" onclick="sortTable(4)" class="active">비고</th>
					</tr>
					</thead>
					<tbody class="list">
						<c:forEach items="${rank}" var="rank">
						    <tr>
						        <td>${rank.rating}</td>
						        <td><input type="text" value="${rank.rating_nm}" name="rating_nm" id="rating_nm"></td>
						        <td><input type="text" value="${rank.discount}" name="discount" id="discount"></td>
						        <td><input type="text" value="${rank.accumulation}" name="accumulation" id="accumulation"></td>
						        <td>
						            <input type="text" value="${rank.lowpoint}" size="8" name="lowpoint" id="lowpoint">
						            ~
						            <input type="text" value="${rank.highpoint}" size="8" name="highpoint" id="highpoint">
            					</td>
						    </tr>
            					<input type="hidden" value="${rank.rating}" name="rating" id="rating">
						</c:forEach>
					</tbody>
				</table>
            </div>
			<div class="btn_confirm">
				<input type="submit" value="저장" class="genric-btn success large thick"">
			</div>
		</form>
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