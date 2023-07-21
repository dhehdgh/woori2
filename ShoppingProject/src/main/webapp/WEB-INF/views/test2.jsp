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
	                <a class="nav-link" href="${contextPath}/board/test2">1:1 상담문의</a>
	            </dd>
	        </dl>
	    </div>
	    
		<div id="content">
			<div class="breadcrumb">
				<span>HOME</span><i class="bi bi-chevron-right"></i>고객지원<i class="bi bi-chevron-right"></i>1:1 상담문의
			</div>
			
			<div class="s_wrap">
				<h1>1:1 상담문의</h1>
				
				<h2>기본검색</h2>
				<form name="fsearch" id="fsearch" method="get">
					<input type="hidden" name="code" value="qa">
					<div class="tbl_frm01">
						<table>
						<colgroup>
							<col class="w100">
							<col>
						</colgroup>
						<tbody>
						<tr>
							<th scope="row">검색어</th>
							<td>
								<select name="sfl">
									<option value="mb_id">작성자</option>
									<option value="subject">제목</option>
								</select>
								<input type="text" name="stx" value="" class="frm_input" size="30">
							</td>
						</tr>
						</tbody>
						</table>
					</div>
					<div class="btn_confirm">
					    <input type="button" value="검색" class="btn btn-dark btn-medium" id="searchButton" name="searchButton">
					    <input type="button" value="초기화" class="btn btn-secondary btn-medium" onclick="resetForm();">
					</div>
				</form>
			
				<form name="fqalist" id="fqalist" method="post" action="./help/help_qa_delete.php" onsubmit="return fqalist_submit(this);">
					<input type="hidden" name="q1" value="code=qa">
					<input type="hidden" name="page" value="1">
			
					<div class="local_ov mart30">
						전체 : <b class="fc_red">0</b> 건 조회
					</div>
					
					<div class="tbl_head01">
						<table class="table table-bordered table-striped table-hover table-responsive" table-layout: auto;">
						<colgroup>
							<col style="width:15%">
							<col style="width:35%">
							<col style="width:15%">
							<col style="width:10%">
							<col style="width:10%">
							<col style="width:15%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">문의번호</th>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col">문의날짜</th>
								<th scope="col">답변날짜</th>
								<th scope="col">문의확인</th>
							</tr>
						</thead>
							<c:forEach items="${adminHelp}" var="adminHelp">
						        <tr onclick="window.location.href = '${contextPath}/board/adminHelpDetail?hno=${adminHelp.hno}';" onmouseover="this.style.cursor='pointer';">
						            <td>${adminHelp.hno}</td>
						            <td>${adminHelp.title}</td>
						            <td>${adminHelp.membernum}</td>
						            <td>${adminHelp.hdate}</td>
						            <td>${adminHelp.rehdate}</td>
						            <td>${adminHelp.state}</td>
						        </tr>
						    </c:forEach>
						</table>
					</div>
				</form>
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

</body>
</html>