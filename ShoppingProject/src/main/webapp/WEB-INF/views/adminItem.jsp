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
            <dd class="m10 active">
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
    
    <!-- 사이드메뉴 끝 -->
    
    
	    <div id="content" class="col-md-9">
	        <div class="breadcrumb">
			    <span>HOME</span><i class="bi bi-chevron-right"></i>상품관리<i class="bi bi-chevron-right"></i>전체 상품관리
			</div>
	        <div class="s_wrap">
	            <h1>전체 상품관리</h1>
	            <h2>기본검색</h2>
	            
	            
	            
	            <!-- 검색폼 -->
	            
	            <form name="fsearch" id="fsearch" method="get">
					<div class="tbl_frm01">
						<table class="tablef">
							<colgroup>
								<col class="w100">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">검색어</th>
									<td colspan="3">
										<select id="searchType" name="searchType">
											<option value="I.itemnum">상품번호</option>
											<option value="itemname">상품명</option>
										</select>
										<input type="text" name="search" id="search" class="frm_input" size="30">
									</td>
								</tr>
								<tr>
									<th scope="row">카테고리</th>
									<td colspan="3">
										<select id="categoryType" name="categoryType">
											<option value="0">=카테고리선택=</option>
											<option value="1">상의</option>
											<option value="2">바지</option>
											<option value="3">스커트</option>
											<option value="4">원피스</option>
											<option value="5">아우터</option>
											<option value="6">악세서리</option>
											<option value="7">모자</option>
											<option value="8">신발</option>
										</select>
										<select id="categoryType2" name="categoryType2">
											<option value="0">=카테고리선택=</option>
										</select>
									</td>
								</tr>
								<tr>
									<th scope="row">기간검색</th>
									<td>
										<select name="dateType">
											<option value="itemdate">등록날짜</option>
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
							</tbody>
						</table>
					</div>
					<div class="btn_confirm">
					    <input type="button" value="검색" class="btn btn-dark btn-medium" id="searchButton" name="searchButton">
					    <input type="button" value="초기화" class="btn btn-secondary btn-medium" onclick="resetForm();">
					</div>
				</form>
				
				<!-- 검색폼 끝 -->
				
				
				
                <div class="local_ov mart30 mt-3">
                      총 상품수 : <b class="fc_red">${cnt}</b>개
                </div>
                <div class="row">
	               	<div class="col-md-12 text-right">
	                   	<a href="${contextPath}/board/adminItemInsert" class="genric-btn info medium">상품추가</a>
	               	</div>
	            </div>
	            
	            <div class="tbl_head01 mt-3">
	               	<table id="myTable" class="table table-bordered table-striped table-hover table-responsive">
						<colgroup>
							<col class="5%">
							<col class="15%">
							<col class="15%">
							<col class="10%">
							<col class="20%">
							<col class="10%">
							<col class="10%">
							<col class="15%">
						</colgroup>
						<thead>
						<tr>
							<th scope="col" onclick="sortTable(0)" class="active">상품번호</th>
							<th scope="col">이미지</th>
           					<th scope="col" onclick="sortTable(2)" class="active">상품명</th>
            				<th scope="col" onclick="sortTable(3)" class="active">가격</th>
                           	<th scope="col" onclick="sortTable(4)" class="active">판매량</th>
                          	<th scope="col" onclick="sortTable(5)" class="active">등록날짜</th>
                          	<th scope="col">대분류</th>
                          	<th scope="col">소분류</th>
                         	<th scope="col" onclick="sortTable(8)" class="active">평점</th>
                         	
						</tr>
						</thead>
						<tbody class="list">
							<c:forEach items="${adminItem}" var="adminItem">
                               	<tr onclick="window.location.href = '${contextPath}/board/adminItemDetail?itemnum=${adminItem.itemnum}';" onmouseover="this.style.cursor='pointer';">
                                   	<td>${adminItem.itemnum}</td>
                                   	<td>
									    <img src="${adminItem.imgDTO.url}${adminItem.imgDTO.imgname}" alt="이미지" width="70" height="40">
									</td>
			                       	<td>${adminItem.itemname}</td>
			                       	<td>${adminItem.itempay}</td>
			                       	<td>${adminItem.itembuycnt}</td>
			                       	<td>${adminItem.itemdate}</td>
			                       	<td>${adminItem.itemb_nm}</td>
			                       	<td>${adminItem.items_nm}</td>
			                       	<td>${adminItem.rstar}</td>
                               	</tr>
                       		</c:forEach>
						</tbody>
					</table>
	            </div>
	            <div class="row mt-3">
	                <div class="col-md-12 text-right">
	                    <a href="${contextPath}/board/adminItemInsert" class="genric-btn info medium">상품추가</a>
	                </div>
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
    
    <script>
	$(function(){
		$.datepicker.regional["ko"] = {
	        closeText: "닫기",
	        prevText: "이전달",
	        nextText: "다음달",
	        currentText: "오늘",
	        monthNames: ["1월(JAN)","2월(FEB)","3월(MAR)","4월(APR)","5월(MAY)","6월(JUN)", "7월(JUL)","8월(AUG)","9월(SEP)","10월(OCT)","11월(NOV)","12월(DEC)"],
	        monthNamesShort: ["1월","2월","3월","4월","5월","6월", "7월","8월","9월","10월","11월","12월"],
	        dayNames: ["일","월","화","수","목","금","토"],
	        dayNamesShort: ["일","월","화","수","목","금","토"],
	        dayNamesMin: ["일","월","화","수","목","금","토"],
	        weekHeader: "Wk",
	        dateFormat: "yymmdd",
	        firstDay: 0,
	        isRTL: false,
	        showMonthAfterYear: true,
	        yearSuffix: ""
	    };
		$.datepicker.setDefaults($.datepicker.regional["ko"]);
	});
	
	$(function(){
		// 날짜 검색 : TODAY MAX값으로 인식 (maxDate: "+0d")를 삭제하면 MAX값 해제
		$("#startDate, #endDate").datepicker({ changeMonth: true, changeYear: true, dateFormat: "yy-mm-dd", showButtonPanel: true, yearRange: "c-99:c+99", maxDate: "+0d" });
	});
	
	
	
	$(function() {
	    $("input[value='오늘']").on("click", function() {
	        setDateRange('오늘');
	    });

	    $("input[value='어제']").on("click", function() {
	        setDateRange('어제');
	    });

	    $("input[value='일주일']").on("click", function() {
	        setDateRange('일주일');
	    });

	    $("input[value='지난달']").on("click", function() {
	        setDateRange('지난달');
	    });

	    $("input[value='1개월']").on("click", function() {
	        setDateRange('1개월');
	    });

	    $("input[value='3개월']").on("click", function() {
	        setDateRange('3개월');
	    });

	    $("input[value='전체']").on("click", function() {
	        setDateRange('전체');
	    });
	});
	
	function setDateRange(range) {
	    var today = new Date(); // 현재 날짜
	    var startDate, endDate;

	    if (range === '오늘') {
	        startDate = new Date(today); // 오늘 날짜
	        endDate = new Date(today); // 오늘 날짜
	    } else if (range === '어제') {
	        startDate = new Date(today);
	        startDate.setDate(today.getDate() - 1); // 어제 날짜
	        endDate = new Date(today);
	        endDate.setDate(today.getDate() - 1); // 어제 날짜
	    } else if (range === '일주일') {
	        startDate = new Date(today);
	        startDate.setDate(today.getDate() - 7); // 7일 전 날짜
	        endDate = new Date(today); // 오늘 날짜
	    } else if (range === '지난달') {
	        startDate = new Date(today);
	        startDate.setMonth(today.getMonth() - 1); // 지난달 1일
	        startDate.setDate(1);
	        endDate = new Date(today);
	        endDate.setDate(0); // 지난달 마지막 날짜
	    } else if (range === '1개월') {
	        startDate = new Date(today);
	        startDate.setMonth(today.getMonth() - 1); // 1개월 전 날짜
	        startDate.setDate(today.getDate() + 1); // 1개월 전 날짜 + 1일
	        endDate = new Date(today); // 오늘 날짜
	    } else if (range === '3개월') {
	        startDate = new Date(today);
	        startDate.setMonth(today.getMonth() - 3); // 3개월 전 날짜
	        startDate.setDate(today.getDate() + 1); // 3개월 전 날짜 + 1일
	        endDate = new Date(today); // 오늘 날짜
	    } else if (range === '전체') {
	        startDate = null; // 시작일 없음
	        endDate = null; // 종료일 없음
	    }

	    // 시작일과 종료일을 input 태그에 설정
	    $("#startDate").val(startDate ? formatDate(startDate) : "");
	    $("#endDate").val(endDate ? formatDate(endDate) : "");
	}

	function formatDate(date) {
	    var year = date.getFullYear();
	    var month = (date.getMonth() + 1).toString().padStart(2, '0');
	    var day = date.getDate().toString().padStart(2, '0');
	    return year + '-' + month + '-' + day;
	}

	
	
	// 검색 기능
    $(function(){
    	$("#searchButton").click(function(){
    		
       	 	var formData = $("#fsearch").serialize(); 

	        $.ajax({
	            url: "${contextPath}/board/adminItemSearch",
	            type: "get",
	            data: formData,
	            dataType: "json",
	            success: function (response) {
	                console.log(response);
	                
	                var tableBody = $(".list");
	                tableBody.empty();
	                
	                for (var i = 0; i < response.searchResult.length; i++) {
	                    let item = response.searchResult[i];
	                    
	                    let row = $("<tr>").appendTo(tableBody);
	                    let imgTag = $("<img>").attr("src", item.imgDTO.url + item.imgDTO.imgname).attr("alt", "이미지").attr("width", "70").attr("height", "40");
	                    
	                    $("<td>").text(item.itemnum).appendTo(row);
	                    $("<td>").append(imgTag).appendTo(row);
	                    $("<td>").text(item.itemname).appendTo(row);
	                    $("<td>").text(item.itempay).appendTo(row);
	                    $("<td>").text(item.itembuycnt).appendTo(row);
	                    $("<td>").text(item.itemdate).appendTo(row);
	                    $("<td>").text(item.itemb_nm).appendTo(row);
	                    $("<td>").text(item.items_nm).appendTo(row);
	                    $("<td>").text(item.rstar).appendTo(row);

	                 	// 클릭 시 상품 상세 페이지로 이동
	                    row.on("click", function () {
	                        var itemnum = item.itemnum;
	                        window.location.href = "${contextPath}/board/adminItemDetail?itemnum=" + itemnum;
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
    

    // 초기화 버튼 클릭 시 폼 초기화
    function resetForm() {
        document.getElementById("fsearch").reset();
    }
	
    
 // 상위 카테고리 변경 이벤트 리스너
    $("#categoryType").on("change", function() {
        var selectedCategory = $(this).val();

        // 하위 카테고리 초기화
        var categoryType2 = $("#categoryType2");
        categoryType2.empty(); // 기존 옵션들 제거

        // 상위 카테고리에 따라 하위 카테고리 옵션 설정
        switch (selectedCategory) {
	        	case "0":
	        		categoryType2.append('<option value="0">=카테고리선택=</option>');
	        		break;
	            case "1": 
	                // 상위 카테고리 1에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0" >=카테고리선택=</option>');
	                categoryType2.append('<option value="1" ${item.items == 1 ? "selected" : ""}>니트/스웨터</option>');
	                categoryType2.append('<option value="2" ${item.items == 2 ? "selected" : ""}>후드티</option>');
	                categoryType2.append('<option value="3" ${item.items == 3 ? "selected" : ""}>맨투맨</option>');
	                categoryType2.append('<option value="4" ${item.items == 4 ? "selected" : ""}>셔츠</option>');
	                break;
	            case "2":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="5" ${item.items == 5 ? "selected" : ""}>데님팬츠</option>');
	                categoryType2.append('<option value="6" ${item.items == 6 ? "selected" : ""}>트레이닝팬츠</option>');
	                categoryType2.append('<option value="7" ${item.items == 7 ? "selected" : ""}>코튼팬츠</option>');
	                categoryType2.append('<option value="8" ${item.items == 8 ? "selected" : ""}>슬랙스</option>');
	                break;
	            case "3":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="9" ${item.items == 9 ? "selected" : ""}>미니스커트</option>');
	                categoryType2.append('<option value="10" ${item.items == 10 ? "selected" : ""}>미디스커트</option>');
	                categoryType2.append('<option value="11" ${item.items == 11 ? "selected" : ""}>롱스커트</option>');
	                break;
	            case "4":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="12" ${item.items == 12 ? "selected" : ""}>미니원피스</option>');
	                categoryType2.append('<option value="13" ${item.items == 13 ? "selected" : ""}>미디원피스</option>');
	                categoryType2.append('<option value="14" ${item.items == 14 ? "selected" : ""}>롱원피스</option>');
	                break;
	            case "5":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="15" ${item.items == 15 ? "selected" : ""}>후드집업</option>');
	                categoryType2.append('<option value="16" ${item.items == 16 ? "selected" : ""}>코트</option>');
	                categoryType2.append('<option value="17" ${item.items == 17 ? "selected" : ""}>가디건</option>');
	                categoryType2.append('<option value="18" ${item.items == 18 ? "selected" : ""}>패딩</option>');
	                categoryType2.append('<option value="19" ${item.items == 19 ? "selected" : ""}>재킷</option>');
	                break;
	            case "6":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="20" ${item.items == 20 ? "selected" : ""}>벨트</option>');
	                categoryType2.append('<option value="21" ${item.items == 21 ? "selected" : ""}>머플러</option>');
	                categoryType2.append('<option value="22" ${item.items == 22 ? "selected" : ""}>넥타이</option>');
	                categoryType2.append('<option value="23" ${item.items == 23 ? "selected" : ""}>기타 액세서리</option>');
	                break;
	            case "7":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="24" ${item.items == 24 ? "selected" : ""}>캡</option>');
	                categoryType2.append('<option value="25" ${item.items == 25 ? "selected" : ""}>비니</option>');
	                break;
	            case "8":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="26" ${item.items == 26 ? "selected" : ""}>운동화</option>');
	                categoryType2.append('<option value="27" ${item.items == 27 ? "selected" : ""}>슬리퍼</option>');
	                categoryType2.append('<option value="28" ${item.items == 28 ? "selected" : ""}>구두</option>');
	                break;
	                
	            default:
	                // 상위 카테고리를 선택하지 않은 경우 기본 선택 옵션
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                break;
	        }
    });
 
 
 
 
    function sortTable(n) {
    	const table = document.getElementById("myTable");
    	const tbody = table.querySelector("tbody");
    	const rows = Array.from(tbody.querySelectorAll("tr"));

    	rows.sort((rowA, rowB) => {
    		const cellA = rowA.querySelectorAll("td")[n].textContent;
    	  	const cellB = rowB.querySelectorAll("td")[n].textContent;
    	  	return cellA.localeCompare(cellB, undefined, {numeric: true, sensitivity: 'base'});
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