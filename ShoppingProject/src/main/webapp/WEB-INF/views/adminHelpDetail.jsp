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
		<div id="snb" class="col-md-3">
	        <div class="snb_header ico_config">
	            <h2><i class="ionicons ion-ios-people fs40"></i>회원관리</h2>
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
	            <dd class="m10 active">
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
				<span>HOME</span><i class="bi bi-chevron-right"></i>고객지원<i class="bi bi-chevron-right"></i>1:1 상담문의
			</div>
			
			<div class="s_wrap">
				<h1>1:1 상담문의</h1>
		        <!-- 제목 -->
		        <div class="detail-title">${adminHelp.title}</div>
		
		        <!-- 작성자 및 작성일 -->
		        <div class="detail-info">
		        	작성자:
		             <a href="${contextPath}/board/adminMemberDetail?membernum=${adminHelp.membernum}">
				        <span> ${adminHelp.memberDTO.id}</span>
				    </a>
		            <span class="ml-3">작성일: ${adminHelp.hdate}</span>
		        </div>
		
		        <!-- 내용 -->
		        <div class="detail-content">${adminHelp.content}</div>
		
		        <!-- 답변이 있는 경우에만 표시 -->
		        <div id="answerForm" class="answer-section">
		            <div class="answer-title">답변</div>
		            <div class="answer-info">
		                <span>답변 작성자: 관리자</span>
		                <span class="ml-3">답변 작성일: ${adminHelp.rehdate}</span>
		            </div>
		            <div class="answer-content">${adminHelp.recomment}</div>
		        </div>
		
		        <!-- 답변 작성 폼 -->
		        <div id="commentForm" class="comment-form mt-4">
		            <div class="answer-title">답변 작성</div>
		            <form class="form-contact comment_form" action="${contextPath}/board/adminHelpUpdate" method="post">
		                <input type="hidden" name="hno" value="${adminHelp.hno}">
		                <div class="form-group mt-3">
		                    <label for="recomment">답변 내용</label>
		                    <textarea class="form-control" name="recomment" id="recomment" cols="30" rows="6">${adminHelp.recomment}</textarea>
		                </div>
		                <div class="form-group mt-3 text-center">
		                    <button type="submit" class="genric-btn info large thick">답변 작성</button>
		                </div>
		            </form>
		        </div>
		
		        <!-- 답변 수정 버튼과 메인으로 버튼 -->
		        <div class="btn-wrapper">
		            <button id="editButton" class="genric-btn info large thick">답변 수정</button>
		            <a href="${contextPath}/board/adminHelp" id="mainButton" class="genric-btn default radius large thick">목록</a>
		        </div>
			</div>
		</div>
	</div>

	<div id="ajax-loading"><img src="http://demofran.com/img/ajax-loader.gif"></div>
	<div id="anc_header"><a href="#anc_hd"><span></span>TOP</a></div>
	
	<!--::footer_part start::-->
	<%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
	<%@ include file="include/javascript.jsp" %>
    <%@ include file="include/style.jsp" %>
    <script src="${contextPath}/resources/js/dateRange.js"></script>
    
    <script>
		$(document).ready(function() {
		    var adminHelpRecomment = "${adminHelp.recomment}";
		    var commentForm = $("#commentForm");
		    var answerForm = $("#answerForm");
	
		    if (adminHelpRecomment == null || adminHelpRecomment.trim() === "") {
		        commentForm.show();
		        answerForm.hide();
		        $("#editButton").hide();
		        $("#mainButton").hide();
		    } else {
		        commentForm.hide();
		        $("#editButton").show();
		        $("#mainButton").show();
		    }
	
		    $("#editButton").click(function() {
		        commentForm.show();
		        $("#mainButton").hide();
		        $(this).hide();
		    });
		});
	</script>
</body>
</html>