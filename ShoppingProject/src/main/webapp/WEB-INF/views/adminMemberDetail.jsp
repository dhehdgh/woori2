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
	            <dd class="m10 active">
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
	            <dd class="m10">
	                <a class="nav-link" href="${contextPath}/board/adminReview">신고리뷰리스트</a>
	            </dd>	            
	        </dl>
	    </div>
    
	    <div id="content" class="col-md-9">
	        <div class="breadcrumb">
			    <span>HOME</span><i class="bi bi-chevron-right"></i>회원관리<i class="bi bi-chevron-right"></i>회원 정보관리<i class="bi bi-chevron-right"></i>회원 상세정보
			</div>
	        <div class="s_wrap">
	            <h1>회원 상세정보</h1>
				<form name="fmemberform" id="fmemberform" action="${contextPath}/board/adminMemberDetail" method="post">
					<div id="memberform_pop" class="new_win">
						<h3 class="anc_tit mt-5">기본정보</h3>
						<div class="tbl_frm01">
							<table class="tablef">
							<colgroup>
								<col class="w130">
								<col>
								<col class="w130">
								<col>
							</colgroup>
							<tbody>
							<tr>
								<th scope="row">회원번호</th>
								<td>
									<input type="text" id="membernum" name="membernum" value="${member.membernum}" class="frm_input" readonly>
								</td>
								<th scope="row">아이디</th>
								<td>
									<input type="text" class="frm_input required" id="id" name="id" value="${member.id}" readonly>
								</td>
							</tr>
							<tr>
								<th scope="row">회원명</th>
								<td>
									<input type="text" id="name" name="name" value="${member.name}" class="frm_input">
									<span id="nameMsg" class="text-xs"></span>
								</td>
								<th scope="row">생년월일</th>
								<td><input type="text" id="birth" name="birth" value="${member.birth}" class="frm_input"></td>
							</tr>
							<tr>
							  	<th scope="row">전화번호</th>
							  	<td>
							    	<select id="tel1" name="tel1">
									  <option value="010" ${tel1 == '010' ? 'selected' : ''}>010</option>
									  <option value="011" ${tel1 == '011' ? 'selected' : ''}>011</option>
									  <option value="019" ${tel1 == '019' ? 'selected' : ''}>019</option>
									</select> - 
							    	<input type="text" id="tel2" name="tel2" value="${tel2}" class="frm_input" size="5" maxlength="4"> - 
							    	<input type="text" id="tel3" name="tel3" value="${tel3}" class="frm_input" size="5" maxlength="4">
							    	<span id="telMsg" class="text-xs"></span>
							    	<input type="hidden" id="tel" name="tel">
							  	</td>
							  	<th scope="row">E-Mail</th>
							  	<td>
							  		<input type="text" id="email1" name="email1" value="${email1}" class="frm_input" size="12"> @ 
							    	<select id="email2" name="email2">
								      	<option value="gmail.com" ${email2 == "gmail.com" ? "selected" : "" }>gmail.com</option>
								      	<option value="naver.com" ${email2 == "naver.com" ? "selected" : "" }>naver.com</option>
								      	<option value="daum.net" ${email2 == "daum.net" ? "selected" : "" }>daum.net</option>
							    	</select>
							    	<span id="emailMsg" class="text-xs"></span>
							    	<input type="hidden" id="email" name="email">
							  	</td>
							</tr>
							<tr>
							    <th scope="row">성별</th>
							    <td>
							        <input type="radio" name="gender" id="male" value="1" ${member.gender == "1" ? "checked" : ""} class="frm_input">
							        <label for="male">남성</label>
							        <input type="radio" name="gender" id="female" value="2" ${member.gender == "2" ? "checked" : ""} class="frm_input">
							        <label for="female">여성</label>
							    </td>
							    <th scope="row">가입일</th>
								<td><input type="text" name="joindate" value="${member.joindate}" class="frm_input" readonly></td>
							</tr>
							<tr>
								<th scope="row">주소</th>
								<td colspan="3">
									<p class="mart5"><input type="text" id="postcode" name="postcode" value="${member.postcode}" class="frm_input" size="8" maxlength="5" readonly> 우편번호</p>
									<input type="button" onclick="sample4_execDaumPostcode()" class="genric-btn primary-border small" value="우편번호 찾기"><br>
									<p class="mart5"><input type="text" id="roadaddr" name="roadaddr" value="${member.roadaddr}" class="frm_input" size="60" readonly> 도로명주소</p>
									<span id="guide" style="color:#999;display:none"></span>
									<p class="mart5"><input type="text" id="extraaddr" name="extraaddr" value="${member.extraaddr}" class="frm_input" size="60" readonly> 참고항목
									<p class="mart5"><input type="text" id="detailaddr" name="detailaddr" value="${member.detailaddr}" class="frm_input" size="60"> 상세주소</p>
									<input type="hidden" id="jibunaddr" name="jibunaddr" value="${member.jibunaddr}">
								</td>
							</tr>
							<tr>
								<th scope="row">포인트</th>
								<td>
									<b>${member.point}</b> Point
								</td>
								<th scope="row">누적포인트</th>
								<td>
									<b>${member.pointac}</b> Point
									<a href="#" onclick="openPopup('${contextPath}/board/adminMemberDetailPoint?membernum=${member.membernum}', '600', '500')"class="genric-btn primary-border small">강제적립</a>
								</td>
							</tr>
							<tr>
								<th scope="row">등급</th>
								<td>
									<input type="text" value="${member.ratinglistDTO.rating_nm}" readonly>
								</td>
								<th scope="row">권한</th>
							    <td>
							        <input type="radio" name="authority" id="general" value="1" ${member.authority == "1" ? "checked" : ""} class="frm_input">
							        <label for="male">일반회원</label>
							        <input type="radio" name="authority" id="admin" value="2" ${member.authority == "2" ? "checked" : ""} class="frm_input">
							        <label for="female">관리자</label>
							    </td>
							</tr>
							<tr>
								<th scope="row">회원상태</th>
								<td>
							        <input type="radio" name="state" id="active" value="1" ${member.state == "1" ? "checked" : ""} class="frm_input">
							        <label for="male">활동회원</label>
							        <input type="radio" name="state" id="inactive" value="2" ${member.state == "2" ? "checked" : ""} class="frm_input">
							        <label for="female">휴면회원</label>
							    </td>
							    <th scope="row">개인정보수집동의</th>
								<td>
							        <input type="radio" name="agree" id="agree_yes" value="1" ${member.agree == "1" ? "checked" : ""} class="frm_input">
							        <label for="male">예</label>
							        <input type="radio" name="agree" id="agree_no" value="2" ${member.agree == "2" ? "checked" : ""} class="frm_input">
							        <label for="female">아니오</label>
							    </td>
							</tr>
							</tbody>
							</table>
						</div>
						<div class="btn_confirm">
							<button type="submit" id="updateButton" class="genric-btn success large thick">회원정보 수정</button>
							<button type="button" class="genric-btn danger large thick" onclick="member_leave();">회원탈퇴</button>
						</div>
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
    
    <script>
	    var membernum = ${member.membernum};
		function member_leave() {
			if (confirm("정말로 회원탈퇴를 하시겠습니까?")) {
		        $.ajax({
		            type: "POST",
		            url: "${contextPath}/board/adminMemberDelete",
		            data: { membernum: membernum },
		            success: function(response) {
		                alert("회원탈퇴가 완료되었습니다.");
		                window.location.href = "${contextPath}/board/adminMember";
		            },
		            error: function() {
		                alert("회원탈퇴에 실패했습니다. 다시 시도해주세요.");
		            }
		        });
		    }
		}
	
	
	
	$(function(){
		$("#name").keyup(function() {
		    var name = $(this).val();
		    var nameReg = /^[가-힣]{2,6}$/;
		    
		    if (name.length === 0) {
		    	$("#nameMsg").text("");
		    } else if (!nameReg.test(name)) {
		      	$("#nameMsg").text("2~6글자의 한글로 적어주세요.").css("color", "red");
		    } else {
		    	$("#nameMsg").text("올바른 형식입니다.").css("color", "blue");
		    }
		  });
		 $("#tel3").keyup(function(){
			 var tel2 = document.getElementById("tel2").value;
			 var tel3 = document.getElementById("tel3").value;
			 var telReg = /^\d{4}$/;
			 
			 if(tel2.length==0 || tel3.length==0){
				 $("#telMsg").text("");
			 }else if(!telReg.test(tel2) || !telReg.test(tel3)){
				 $("#telMsg").text("각각 4자리 숫자로 입력해주세요.").css("color","red");
			 }else{
				 $("#telMsg").text("올바른 형식입니다.").css("color","blue");
			 }
		  });
		 $("#birth").datepicker({
			  dateFormat: 'yy.mm.dd',
			  prevText: '이전 달',
			  nextText: '다음 달',
			  monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			  monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			  dayNames: ['일', '월', '화', '수', '목', '금', '토'],
			  dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
			  dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
			  showMonthAfterYear: true,
			  yearSuffix: '년',
			  yearRange: "1900:2023",
			  changeYear: true,
			  changeMonth: true
		  	  });
		 
		 $("#email1").keyup(function(){
			 var email1 = document.getElementById("email1").value;
			 var email2 = document.getElementById("email2").value;
			 var email = email1 +"@"+ email2;
			 var emailReg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			 
			 if(email1.length==0){
				 $("#emailMsg").text("");
			 }else if(!emailReg.test(email)){
				 $("#emailMsg").text("이메일 형식으로 써주세요.").css("color","red");
			 }else{
				 $("#emailMsg").text("올바른 형식입니다.").css("color","blue");
			 }
		  });
		 
		 $("#updateButton").click(function(){
			
			  	var userName = document.getElementById("name").value;
			 	var nameReg = /^[가-힣]{2,6}$/; 
				 
			  	if(userName.length==0){
					   alert("이름을 입력해주세요.");
					   return false;
			 	 }else if(!nameReg.test(userName)){
				 	 alert("이름을 확인해주세요.");
				 	 return false;
			  	}
			  
			  	 var tel1 = document.getElementById("tel1").value;
			  	 var tel2 = document.getElementById("tel2").value;
				 var tel3 = document.getElementById("tel3").value;
				 var telReg = /^\d{4}$/;
				 
				 if(tel2.length==0 || tel3.length==0){
					 alert("핸드폰 번호를 입력해주세요.");
					 return false;
				 }else if(!telReg.test(tel2) || !telReg.test(tel3)){
					 alert("핸드폰 번호를 확인해주세요.")
					 return false;
				 }
				 
				 $("#tel").attr('value',tel1+"-"+tel2+"-"+tel3);
				 
				 var email1 = document.getElementById("email1").value;
				 var email2 = document.getElementById("email2").value;
				 var email = email1+"@"+email2;
				 var emailReg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
				 
				 if(email1.length==0){
					 alert("이메일 주소를 입력해주세요.");
					 return false;
				 }else if(!emailReg.test(email)){
					 alert("이메일 주소를 확인해주세요.");
					 return false;
				 }
				 
				$("#email").attr('value',email1+"@"+email2);
				
			  	alert("수정이 완료되었습니다.");
		 });
		});
	</script>
	
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("roadaddr").value = roadAddr;
                document.getElementById("jibunaddr").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("extraaddr").value = extraRoadAddr;
                } else {
                    document.getElementById("extraaddr").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
	
	// 팝업창
	function openPopup(url, width, height) {
        var left = (screen.width - width) / 2;
        var top = (screen.height - height) / 2;
        var popup = window.open(url, 'popup', 'width=' + width + ', height=' + height + ', left=' + left + ', top=' + top + ', resizable=no');
        
     	// 팝업창이 닫힐 때 이벤트 리스너 등록
        popup.onbeforeunload = function () {
            // 부모창 새로고침
            window.location.reload();
        };
    }
	
	</script>
</body>

</html>