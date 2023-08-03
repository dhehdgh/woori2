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
	    
		<div id="content" class="col-md-9">
			<div class="breadcrumb">
				<span>HOME</span><i class="bi bi-chevron-right"></i>리뷰관리<i class="bi bi-chevron-right"></i>신고리뷰리스트
			</div>
			
			<div class="s_wrap">
				<h1>신고리뷰리스트</h1>
				<h2>기본검색</h2>
				<form name="fsearch" id="fsearch" method="get">
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
							<select id="searchType" name="searchType">
								<option value="D.drnum">신고번호</option>
								<option value="R.reviewno">리뷰번호</option>
								<option value="R.membernum">회원번호</option>
								<option value="M.id">회원아이디</option>
							</select>
							<input type="text" name="search" id="search" class="frm_input" size="30">
						</td>
					</tr>
					<tr>
						<th scope="row">기간검색</th>
						<td>
							<select name="dateType">
								<option value="drdate">신고날짜</option>
								<option value="rdate">리뷰날짜</option>
							</select>
							<label for="startDate" class="sound_only">시작일</label>
							<input type="text" name="startDate" id="startDate" class="frm_input w80" maxlength="10">
							 ~ 
							<label for="endDate" class="sound_only">종료일</label>
							<input type="text" name="endDate" id="endDate" class="frm_input w80" maxlength="10">
							<span class="btn-group">
							    <input type="button" onclick="setDateRange('오늘');" class="btn btn-sm btn-light" value="오늘">
						        <input type="button" onclick="setDateRange('어제');" class="btn btn-sm btn-light" value="어제">
						        <input type="button" onclick="setDateRange('일주일');" class="btn btn-sm btn-light" value="일주일">
						        <input type="button" onclick="setDateRange('지난달');" class="btn btn-sm btn-light" value="지난달">
						        <input type="button" onclick="setDateRange('1개월');" class="btn btn-sm btn-light" value="1개월">
						        <input type="button" onclick="setDateRange('3개월');" class="btn btn-sm btn-light" value="3개월">
						        <input type="button" onclick="setDateRange('전체');" class="btn btn-sm btn-light" value="전체">
							</span>
						</td>
					</tr>
					<tr>
						<th scope="row">상태</th>
						<td>
							<label><input type="radio" name="R.del" value="" checked="checked"> 전체</label>
							<label><input type="radio" name="R.del" value="1"> 유지</label>
							<label><input type="radio" name="R.del" value="2"> 숨김</label>
							<label><input type="radio" name="R.del" value="3"> 삭제</label>
						</td>
					</tr>
					</tbody>
					</table>
				</div>
				<div class="btn_confirm ">
				    <input type="button" value="검색" class="btn btn-dark btn-medium" id="searchButton" name="searchButton">
				    <input type="button" value="초기화" class="btn btn-secondary btn-medium" onclick="resetForm();">
				</div>
				</form>
			
				<div class="local_ov mart30 mt-3">
					전체 : <b class="fc_red">${cnt}</b> 건 조회
				</div>
				
				<div class="tbl_head01">
					<table id="myTable" class="table table-bordered table-striped table-hover table-responsive" table-layout: auto;">
						<colgroup>
							<col style="width:5%">
							<col style="width:5%">
							<col style="width:5%">
							<col style="width:5%">
							<col style="width:15%">
							<col style="width:20%">
							<col style="width:20%">
							<col style="width:15%">
						</colgroup>
						<thead>
							<tr>
						        <th scope="col" onclick="sortTable(0)" class="active">신고번호</th>
						        <th scope="col" onclick="sortTable(1)" class="active">상품번호</th>
						        <th scope="col" onclick="sortTable(2)" class="active">리뷰번호</th>
						        <th scope="col" onclick="sortTable(3)" class="active">회원번호</th>
						        <th scope="col" onclick="sortTable(4)" class="active">회원아이디</th>
						        <th scope="col" onclick="sortTable(5)" class="active">신고날짜</th>
						        <th scope="col" onclick="sortTable(6)" class="active">리뷰날짜</th>
						        <th scope="col" onclick="sortTable(7)" class="active">리뷰상태</th>
						    </tr>
						</thead>
						<tbody class="list">
							<c:forEach items="${adminReview}" var="adminReview">
						        <tr onclick="window.location.href = '${contextPath}/board/adminReviewDetail?drnum=${adminReview.drnum}';" onmouseover="this.style.cursor='pointer';">
						            <td>${adminReview.drnum}</td>
						            <td>${adminReview.reviewDTO.itemnum}</td>
						            <td>${adminReview.reviewDTO.reviewno}</td>
						            <td>${adminReview.reviewDTO.membernum}</td>
						            <td>${adminReview.reviewDTO.memberDTO.id}</td>
						            <td>${adminReview.drdate}</td>
						            <td>${adminReview.reviewDTO.rdate}</td>
						            <td>${adminReview.reviewDTO.del_nm}</td>
						        </tr>
						    </c:forEach>
						</tbody>
					</table>
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
		// 검색 기능
	    $(function(){
	    	$("#searchButton").click(function(){
	    		
	       	 	var formData = $("#fsearch").serialize(); 
	
		        $.ajax({
		            url: "${contextPath}/board/adminReviewSearch",
		            type: "get",
		            data: formData,
		            dataType: "json",
		            
		            success: function (response) {
		                
		                var tableBody = $(".list");
		                tableBody.empty();
		                
		                for (var i = 0; i < response.searchResult.length; i++) {
		                    var review = response.searchResult[i];
							
		                    var row = $("<tr>").appendTo(tableBody);
		                    $("<td>").text(review.drnum).appendTo(row);
		                    $("<td>").text(review.reviewDTO.itemnum).appendTo(row);
		                    $("<td>").text(review.reviewDTO.reviewno).appendTo(row);
		                    $("<td>").text(review.reviewDTO.membernum).appendTo(row);
		                    $("<td>").text(review.reviewDTO.memberDTO.id).appendTo(row);
		                    $("<td>").text(review.drdate).appendTo(row);
		                    $("<td>").text(review.reviewDTO.rdate).appendTo(row);
		                    $("<td>").text(review.reviewDTO.del_nm).appendTo(row);
		                    // 클릭 시 회원 상세 페이지로 이동
		                    row.on("click", function () {
		                        var drnum = review.drnum;
		                        window.location.href = "${contextPath}/board/adminReviewDetail?drnum=" + drnum;
		                    });
	
		                    // 마우스 오버 시 커서 변경
		                    row.css("cursor", "pointer");
		                }
		                
		                $(".fc_red").text(response.searchCount);
		            },
		            error: function (xhr, status, error) {
		                console.log(xhr);
		                console.log(status);
		                console.log(error);
		            }
		        });
	    	});
	    });
	    
	    // 폼 초기화
	    function resetForm() {
	        document.getElementById("fsearch").reset();
	    }   
	    
	    
	 // 테이블 정렬
	    function sortTable(n) {
		  	const table = document.getElementById("myTable");
		  	const tbody = table.querySelector("tbody");
		 	const rows = Array.from(tbody.querySelectorAll("tr"));
		   
		    rows.sort((rowA, rowB) => {
		      	const cellA = rowA.querySelectorAll("td")[n].textContent;
		      	const cellB = rowB.querySelectorAll("td")[n].textContent;
		      	return cellA.localeCompare(cellB, undefined, { numeric: true, sensitivity: 'base' });
		    });
		  	
		  	if (table.getAttribute("data-sort-dir") === "asc") {
		    	rows.reverse();
		    	table.setAttribute("data-sort-dir", "desc");
		  	} else {
		    	table.setAttribute("data-sort-dir", "asc");
		  	}
		
		  	table.removeChild(tbody);
		  	rows.forEach(row => tbody.appendChild(row));
		  	table.appendChild(tbody);
		}
	    
    </script>
</body>
</html>