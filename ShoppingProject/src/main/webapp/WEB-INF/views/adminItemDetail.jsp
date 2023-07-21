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
        </dl>
    </div>
    
    <!-- 사이드메뉴 끝 -->
    
    
	    <div id="content" class="col-md-9">
	        <div class="breadcrumb">
			    <span>HOME</span><i class="bi bi-chevron-right"></i>상품관리<i class="bi bi-chevron-right"></i>전체 상품관리
			</div>
	        <div class="s_wrap">
	            <h1>상품 상세정보</h1>
		        <section id="anc_sitfrm_ini">
	            	<form action="${contextPath}/board/adminItemDetail" method="post">
						<h2>기본정보</h2>
						<div class="tbl_frm02">
							<table>
								<colgroup>
									<col class="w180">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">상품번호</th>
										<td><input type="text" name="itemnum" id="itemnum" value="${item.itemnum}" readonly class="required frm_input" size="60"></td>
									</tr>
									<tr>
										<th scope="row">상품명</th>
										<td><input type="text" name="itemname" id="itemname" value="${item.itemname}" class="required frm_input" size="60"></td>
									</tr>
									<tr>
										<th scope="row">가격</th>
										<td><input type="text" name="itempay" id="itempay" value="${item.itempay}" class="required frm_input"></td>
									</tr>
									<tr>
										<th scope="row">판매량</th>
										<td><input type="text" name="itembuycnt" id="itembuycnt" value="${item.itembuycnt}" readonly class="required frm_input"></td>
									</tr>
									<tr>
										<th scope="row">등록날짜</th>
										<td><input type="text" name="itemdate" id="itemdate" value="${item.itemdate}" readonly class="required frm_input"></td>
									</tr>
									<tr>
										<th scope="row">대분류</th>
										<td colspan="3">
											<select id="itemb" name="itemb">
												<option value="0">=카테고리선택=</option>
									            <option value="1" ${item.itemb == 1 ? 'selected' : ''}>상의</option>
									            <option value="2" ${item.itemb == 2 ? 'selected' : ''}>바지</option>
									            <option value="3" ${item.itemb == 3 ? 'selected' : ''}>스커트</option>
									            <option value="4" ${item.itemb == 4 ? 'selected' : ''}>아우터</option>
									            <option value="5" ${item.itemb == 5 ? 'selected' : ''}>신발</option>
									            <option value="6" ${item.itemb == 6 ? 'selected' : ''}>모자</option>
									            <option value="7" ${item.itemb == 7 ? 'selected' : ''}>악세서리</option>
									            <option value="8" ${item.itemb == 8 ? 'selected' : ''}>원피스</option>
											</select>
										</td>
									</tr>
									<tr>
										<th scope="row">소분류</th>
										<td>
											<select id="items" name="items">
												<option value="0">=카테고리선택=</option>
											</select>
										</td>
									</tr>
									<tr>
										<th scope="row">상품설명</th>
										<td>
											<textarea rows="10" cols="70" name="itemcontent" id="itemcontent" class="required frm_textbox">${item.itemcontent}</textarea>
										</td>
									</tr>
									<tr>
										<th scope="row">평점</th>
										<td><input type="text" name="rstar" id="rstar" value="${item.rstar}" readonly class="required frm_input"></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="btn_confirm">
					    	<button type="submit" class="genric-btn info large" style="font-size:15px">상품 정보수정</button>
					    	<a href="adminItem" class="genric-btn default radius large" style="font-size:15px">목록</a>
					    </div>
					</form>
					<form action="${contextPath}/board/adminItemDetail2" method="post">
						<h2>재고현황</h2>
						<div class="tbl_head01 mt-3">
							<table class="table table-bordered table-hover table-responsive" table-layout: auto;">
								<colgroup>
									<col style="width:15%">
									<col style="width:15%">
									<col style="width:15%">
									<col style="width:15%">
									<col style="width:30%">
									<col style="width:15%">
								</colgroup>
								<thead>
					                <tr>
					                    <th scope="col">사이즈</th>
					                    <th scope="col">색깔</th>
					                    <th scope="col">현재수량</th>
					                    <th scope="col">추가할 수량</th>
					                    <th scope="col">입고일</th>
					                    <th scope="col">상태</th>
					                </tr>
					            </thead>
								<tbody class="list">
									<c:forEach items="${iv_item}" var="iv_item">
					                    <tr>
						                   <td><input type="text" name="itemsize" id="itemsize" value="${iv_item.itemsize}" readonly/></td>
	                                       <td><input type="text" name="itemcolor" id="itemcolor" value="${iv_item.itemcolor}" readonly/></td>
	                                       <td><input type="text" name="itemcnt" id="itemcnt" value="${iv_item.itemcnt}" readonly/></td>
	                                       <td><input type="text" name="itemcntadd" id="itemcntadd"/></td>
	                                       <td><input type="text" name="iv_date" id="iv_date" value="${iv_item.iv_date}" readonly/></td>
	                                       <td><input type="text" name="itemstate" id="itemstate" value="${iv_item.itemstate}" readonly /></td>
	                                   </tr>
	                                       <input type="hidden" name="iv_itemnum" id="iv_itemnum" value="${iv_item.iv_itemnum}" readonly/>
	                                       <input type="hidden" name="itemnum" id="itemnum" value="${iv_item.itemnum}" readonly/>
					                </c:forEach>
								</tbody>
							</table>
						</div>
						<div class="btn_confirm">
					    	<button type="button" class="genric-btn info large" style="font-size:15px" id="addButton">재고 추가</button>
					    	<a href="adminItem" class="genric-btn default radius large" style="font-size:15px">목록</a>
					    </div>
					</form>
				</section>
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
	    // 상위 카테고리 변경 이벤트 리스너
	    $("#itemb").on("change", function() {
	        handleCategoryChange();
	    });
	
	    // 페이지 로드 시 초기화
	    $(document).ready(function() {
	        handleCategoryChange();
	    });
	
	    function handleCategoryChange() {
	        var selectedCategory = $("#itemb").val();
	        var items = $("#selectedItems").val();
	
	        // 하위 카테고리 초기화
	        var categoryType2 = $("#items");
	        categoryType2.empty(); // 기존 옵션들 제거
	
	        // 상위 카테고리에 따라 하위 카테고리 옵션 설정
	        switch (selectedCategory) {
	        	case "0":
	        		categoryType2.append('<option value="0">=카테고리선택=</option>');
	        		break;
	            case "1": 
	                // 상위 카테고리 1에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0" >=카테고리선택=</option>');
	                categoryType2.append('<option value="1" ${item.items == 1 ? "selected" : ""}>반팔티</option>');
	                categoryType2.append('<option value="2" ${item.items == 2 ? "selected" : ""}>긴팔티</option>');
	                categoryType2.append('<option value="3" ${item.items == 3 ? "selected" : ""}>니트</option>');
	                categoryType2.append('<option value="4" ${item.items == 4 ? "selected" : ""}>셔츠</option>');
	                break;
	            case "2":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="5" ${item.items == 5 ? "selected" : ""}>반바지</option>');
	                categoryType2.append('<option value="6" ${item.items == 6 ? "selected" : ""}>청바지</option>');
	                categoryType2.append('<option value="7" ${item.items == 7 ? "selected" : ""}>면바지</option>');
	                break;
	            case "3":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="8" ${item.items == 8 ? "selected" : ""}>미니스커트</option>');
	                categoryType2.append('<option value="9" ${item.items == 9 ? "selected" : ""}>미디엄스커트</option>');
	                categoryType2.append('<option value="10" ${item.items == 10 ? "selected" : ""}>롱스커트</option>');
	                break;
	            case "4":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="11" ${item.items == 11 ? "selected" : ""}>코트</option>');
	                categoryType2.append('<option value="12" ${item.items == 12 ? "selected" : ""}>패딩</option>');
	                categoryType2.append('<option value="13" ${item.items == 13 ? "selected" : ""}>자켓</option>');
	                break;
	            case "5":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="14" ${item.items == 14 ? "selected" : ""}>운동화</option>');
	                categoryType2.append('<option value="15" ${item.items == 15 ? "selected" : ""}>슬리퍼</option>');
	                categoryType2.append('<option value="16" ${item.items == 16 ? "selected" : ""}>구두</option>');
	                categoryType2.append('<option value="17" ${item.items == 17 ? "selected" : ""}>샌들</option>');
	                break;
	            case "6":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="18" ${item.items == 18 ? "selected" : ""}>캡모자</option>');
	                categoryType2.append('<option value="19" ${item.items == 19 ? "selected" : ""}>비니</option>');
	                categoryType2.append('<option value="20" ${item.items == 20 ? "selected" : ""}>기타</option>');
	                break;
	            case "7":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="21" ${item.items == 21 ? "selected" : ""}>목걸이</option>');
	                categoryType2.append('<option value="22" ${item.items == 22 ? "selected" : ""}>벨트</option>');
	                categoryType2.append('<option value="23" ${item.items == 23 ? "selected" : ""}>시계</option>');
	                break;
	            case "8":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="24" ${item.items == 24 ? "selected" : ""}>미니원피스</option>');
	                categoryType2.append('<option value="25" ${item.items == 25 ? "selected" : ""}>미디엄원피스</option>');
	                categoryType2.append('<option value="26" ${item.items == 26 ? "selected" : ""}>롱원피스</option>');
	                break;
	                
	            default:
	                // 상위 카테고리를 선택하지 않은 경우 기본 선택 옵션
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                break;
	        }
	    }
	    
	    
	    // 재고 수정
	    $(document).ready(function() {
			$(document).on("click", "button[id='addButton']", function () {
			   
		      	var arr1 = $("[name=iv_itemnum]").map(function(){return this.value}).get();
		      	var arr2 = [];
		      	var itemcnt = $("[name=itemcnt]").map(function() { return parseInt(this.value)}).get();
		        var itemcntadd = $("[name=itemcntadd]").map(function() { return parseInt(this.value) || 0}).get();
		        
		        for (var i = 0; i < itemcnt.length; i++) {
		            var a = itemcnt[i] + itemcntadd[i];
		            arr2.push(a);
		        }
		      	
		      	var url = "${pageContext.request.contextPath }/board/adminItemDetail2";
		      	
			    var paramData   = {
			    		"itemcntadd" : itemcntadd,
			    		"arr1" : arr1,
			            "arr2" : arr2,
			    };
			    
			    $.ajax({
			    	url:   url,
			        data:   paramData,
			        dataType: 'text',
			        type: 'POST',
			        traditional: true,
			        success: function(result){
			           console.log(result);
			           console.log("성공");
			           window.location.href = "${contextPath}/board/adminItemDetail?itemnum="+$("#itemnum").val();
			        },
			        error: function(result){
			           console.log(result);
			           console.log("실패");
			        }
				});
			});
		});
	    
	</script>

</body>
</html>