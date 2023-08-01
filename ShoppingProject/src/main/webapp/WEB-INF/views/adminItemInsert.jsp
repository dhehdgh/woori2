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
            <dd class="m10 active">
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
			    <span>HOME</span><i class="bi bi-chevron-right"></i>상품관리<i class="bi bi-chevron-right"></i>상품 추가하기
			</div>
	        <div class="s_wrap">
	            <h1>상품 추가</h1>
	            
	            <form action="${contextPath}/board/adminItemInsert" method="post">
		            <section id="anc_sitfrm_ini">
						<h2>기본정보</h2>
						<div class="tbl_frm02">
							<table>
								<colgroup>
									<col class="w180">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">이미지</th>
										<td>
									    	<img src="" id="uploadImg" width="1200">
											
											<input type="file" name="imageFile" id="imageFile" accept=".jpg, .jpeg, .png, .webp">
										</td>
									</tr>
									<tr>
										<th scope="row">상품명</th>
										<td><input type="text" name="itemname" id="itemname" class="required frm_input" size="60"></td>
									</tr>
									<tr>
										<th scope="row">가격</th>
										<td><input type="text" name="itempay" id="itempay" class="required frm_input"></td>
									</tr>
									<tr>
										<th scope="row">대분류</th>
										<td colspan="3">
											<select id="itemb" name="itemb">
												<option value="0">=카테고리선택=</option>
												<option value="1">상의</option>
												<option value="2">바지</option>
												<option value="3">스커트</option>
												<option value="4">아우터</option>
												<option value="5">신발</option>
												<option value="6">모자</option>
												<option value="7">악세서리</option>
												<option value="8">원피스</option>
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
											<textarea rows="10" cols="70" name="itemcontent" id="itemcontent" class="required frm_textbox"></textarea>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</section>
					<div class="btn_confirm">
				    	<button type="button" id="btnInsert" class="genric-btn info large thick">상품 추가</button>
				    	<a href="adminItem" class="genric-btn default radius large thick">목록</a>
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
    <script>
	 	// 상위 카테고리 변경 이벤트 리스너
	    $("#itemb").on("change", function() {
	        var selectedCategory = $(this).val();
	
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
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="1">반팔티</option>');
	                categoryType2.append('<option value="2">긴팔티</option>');
	                categoryType2.append('<option value="3">니트</option>');
	                categoryType2.append('<option value="4">셔츠</option>');
	                break;
	            case "2":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="5">반바지</option>');
	                categoryType2.append('<option value="6">청바지</option>');
	                categoryType2.append('<option value="7">면바지</option>');
	                break;
	            case "3":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="8">미니스커트</option>');
	                categoryType2.append('<option value="9">미디엄스커트</option>');
	                categoryType2.append('<option value="10">롱스커트</option>');
	                break;
	            case "4":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="11">코트</option>');
	                categoryType2.append('<option value="12">패딩</option>');
	                categoryType2.append('<option value="13">자켓</option>');
	                break;
	            case "5":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="14">운동화</option>');
	                categoryType2.append('<option value="15">슬리퍼</option>');
	                categoryType2.append('<option value="16">구두</option>');
	                categoryType2.append('<option value="17">샌들</option>');
	                break;
	            case "6":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="18">캡모자</option>');
	                categoryType2.append('<option value="19">비니</option>');
	                categoryType2.append('<option value="20">기타</option>');
	                break;
	            case "7":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="21">목걸이</option>');
	                categoryType2.append('<option value="22">벨트</option>');
	                categoryType2.append('<option value="23">시계</option>');
	                break;
	            case "8":
	                // 상위 카테고리 2에 해당하는 하위 카테고리 옵션 설정
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                categoryType2.append('<option value="24">미니원피스</option>');
	                categoryType2.append('<option value="25">미디엄원피스</option>');
	                categoryType2.append('<option value="26">롱원피스</option>');
	                break;
	                
	            default:
	                // 상위 카테고리를 선택하지 않은 경우 기본 선택 옵션
	                categoryType2.append('<option value="0">=카테고리선택=</option>');
	                break;
	        }
	    });
	 	
	 	// 이미지 업로드
	    $(function() {
	        $("#imageFile").on("change", function() {
	          var formData = new FormData();
    		  formData.append("imageFile", this.files[0]);

	          $.ajax({
	            url: "${contextPath}/board/adminInsertImageUpload",
	            type: "POST",
	            data: formData,
	            contentType: false,
	            processData: false,
	            dataType: "text",
	            success: function(response) {
	              $("#uploadImg").attr("src", response);
	              console.log("이미지 업로드 성공:", response);
	            },
	            error: function(error) {
	              console.log("이미지 업로드 실패:", error);
	            }
	          });
	        });
	      });
	 	
	    $(function(){
	    	$("#btnInsert").click(function(){
	    		var itemname = $("#itemname").val();
	    		var itempay = $("#itempay").val();
	    		var itemb = $("#itemb").val();
	    		var items = $("#items").val();
	    		var itemcontent = $("#itemcontent").val();
	    		
	    		if(itemname.length==0){
					   alert("상품명을 입력해주세요.");
					   return false;
			 	 }
	    		if(itempay.length==0){
					   alert("상품 가격을 입력해주세요.");
					   return false;
			 	 }
	    		if(itemb==0){
					   alert("대분류를 선택해주세요.");
					   return false;
			 	 }
	    		if(items==0){
					   alert("소분류를 선택해주세요.");
					   return false;
			 	 }
	    		if(itemcontent.length==0){
					   alert("상품 설명을 입력해주세요.");
					   return false;
			 	 }
	    		
	    		
	            var data = {
	                itemname: itemname,
	                itempay: itempay,
	                itemb: itemb,
	                items: items,
	                itemcontent: itemcontent
	            };
	            
	            $.ajax({
	                url: "${contextPath}/board/adminItemInsert",
	                type: "POST",
	                data: JSON.stringify(data),
	                contentType: "application/json",
	                success: function(response) {
	                    console.log("성공:", response);
	                },
	                error: function(error) {
	                    console.log("실패:", error);
	                }
	            });
	    		
	    		$.ajax({
	                url: "${contextPath}/board/adminImageInsert",
	                type: "POST",
	                success: function(response) {
	                	console.log("성공:", response);
	                	window.location.href = "${contextPath}/board/adminItem";
	                },
	                error: function(error) {
	                	console.log("실패:", error);
	                }
	            });
	    		
	    	});
	    });
    </script>
</body>
</html>