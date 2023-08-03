<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="include/admin_header.jsp" %>
	<div id="wrapper">
	
	<!-- 사이드메뉴 -->
	
	<div id="snb" class="col-md-3">
        <div class="snb_header ico_config">
            <h2><i class="ionicons ion-ios-people fs40"></i>메뉴</h2>
        </div>
        <dl class="nav flex-column">
            <dt class="m10 menu_toggle">회원관리</dt>
            <dd class="m10">
                <a class="nav-link" href="${contextPath}/board/adminMember">회원 정보관리</a>
            </dd>
            <dd class="m10">
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
            <dd class="m10 active">
                <a class="nav-link" href="${contextPath}/board/adminReview">신고리뷰리스트</a>
            </dd>
        </dl>
    </div>
    
    <!-- 사이드메뉴 끝 -->
    
    
	    <div id="content" class="col-md-9">
	        <div class="breadcrumb">
			    <span>HOME</span><i class="bi bi-chevron-right"></i>리뷰관리<i class="bi bi-chevron-right"></i>신고리뷰리스트<i class="bi bi-chevron-right"></i>신고리뷰 상세정보
			</div>
	        <div class="s_wrap">
	            <h1>신고리뷰 상세정보</h1>
		        <section id="anc_sitfrm_ini">
	            	<form action="${contextPath}/board/adminReviewDetail3" method="post" id="form">
						<h2>신고정보</h2>
						<div class="tbl_frm02">
							<table>
								<colgroup>
									<col style="width:10%">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">신고번호</th>
										<td>${detail.drnum}</td>
									</tr>
									<tr>
										<th scope="row">신고날짜</th>
										<td>${detail.drdate}</td>
									</tr>
									<tr>
										<th scope="row">신고내용</th>
										<td> <textarea rows="5" cols="50" readonly>${detail.drcontent}</textarea></td>
									</tr>
									
								</tbody>
							</table>
						</div>
						<h2>리뷰정보</h2>
						<div class="tbl_frm02">
							<table>
								<colgroup>
									<col style="width:10%">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">리뷰번호</th>
										<td>${detail.reviewno}</td>
									</tr>
									<tr>
										<th scope="row">상품번호</th>
										<td>${detail.reviewDTO.itemnum}</td>
									</tr>
									
									<tr onclick="window.location.href = '${contextPath}/board/adminMemberDetail?membernum=${detail.reviewDTO.membernum}';" onmouseover="this.style.cursor='pointer';">
										<th scope="row">회원번호</th>
										<td>${detail.reviewDTO.membernum}</td>
									</tr>
									<tr onclick="window.location.href = '${contextPath}/board/adminMemberDetail?membernum=${detail.reviewDTO.membernum}';" onmouseover="this.style.cursor='pointer';">
										<th scope="row">회원아이디</th>
										<td>${detail.reviewDTO.memberDTO.id}</td>
									</tr>
									<tr onclick="window.location.href = '${contextPath}/board/adminMemberDetail?membernum=${detail.reviewDTO.membernum}';" onmouseover="this.style.cursor='pointer';">
										<th scope="row">회원이름</th>
										<td>${detail.reviewDTO.memberDTO.name}</td>
									</tr>
									<tr>
										<th scope="row">리뷰날짜</th>
										<td>${detail.reviewDTO.rdate}</td>
									</tr>
									<tr>
										<th scope="row">리뷰내용</th>
										<td><textarea rows="5" cols="50" readonly>${detail.reviewDTO.rcontent}</textarea></td> 
									</tr>
									<tr>
										<th scope="row">리뷰신고 횟수</th>
										<td>${detail.reviewDTO.reviewreport}</td>
									</tr>
									<tr>
										<th scope="row">리뷰상태</th>
										<td>${detail.reviewDTO.del_nm}</td>
									</tr>
								</tbody>
							</table>
						</div>
					<input type="hidden" id="drnum" name="drnum" value="${detail.drnum}">
					<input type="hidden" id="drdate" name="drdate" value="${detail.drdate}">
					<input type="hidden" id="drcontent" name="drcontent" value="${detail.drcontent}">
					<input type="hidden" id="reviewno" name="reviewno" value="${detail.reviewno}">
					<input type="hidden" id="itemnum" name="itemnum" value="${detail.reviewDTO.itemnum}">
					<input type="hidden" id="membernum" name="membernum" value="${detail.reviewDTO.membernum}">
					<input type="hidden" id="id" name="id" value="${detail.reviewDTO.memberDTO.id}">
					<input type="hidden" id="name" name="name" value="${detail.reviewDTO.memberDTO.name}">
					<input type="hidden" id="rdate" name="rdate" value="${detail.reviewDTO.rdate}">
					<input type="hidden" id="rcontent" name="rcontent" value="${detail.reviewDTO.rcontent}">
					<input type="hidden" id="reviewreport" name="reviewreport" value="${detail.reviewDTO.reviewreport}">
					<input type="hidden" id="del_nm" name="del_nm" value="${detail.reviewDTO.del_nm}">
					</form>
					<div class="row">
			            <div class="col-md-12 form-group text-center">
			              <button type="button" class="genric-btn info large thick" id="btnPost">게시</button>
			              <button type="button" class="genric-btn danger large thick" id="btnDelete">삭제</button>
			              <a href="adminReview" class="genric-btn default radius large thick">목록</a>
			            </div>
			    	</div>
				</section>
	        </div>
	    </div>
	</div>

	<div id="anc_header"><a href="#snb"><span><i class="fas fa-arrow-up"></i></span>TOP</a></div>
	
	<!--::footer_part start::-->
	<%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
	<%@ include file="include/javascript.jsp" %>
    <%@ include file="include/style.jsp" %>
	<script>
	$(function(){
		$("#btnPost").click(function(){
			
			var url = "${pageContext.request.contextPath }/board/adminReviewDetail2";
			var drnum = $("#drnum").val();
			
			 $.ajax({
			    	url:   url,
			        dataType: 'text',
			       	data: { drnum: drnum },
			        type: 'POST',
			        success: function(result){
			           console.log(result);
			           console.log("성공");
			           window.location.href = "${contextPath}/board/adminReviewDetail?drnum="+drnum
			        },
			        error: function(result){
			           console.log(result);
			           console.log("실패");
			        }
				});
		});
		$("#btnDelete").click(function(){
			$("#form").submit();
		});
	});
	</script>

</body>
</html>