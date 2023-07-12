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
	<section class="checkout_area padding_top">
	    <div class="container">  
	      <div class="billing_details">
	        <h3>회원 상세정보</h3>
	        <div class="row justify-content-center">
	          <div class="col-lg-8">
	            	<form class="row contact_form" id="deleteform" action="${contextPath}/board/adminMemberDelete" method="post">
		            	<div class="col-md-2 form-group p_star">
			              <label for="membernum" class="col-form-label">회원 번호</label>
			            </div>  
		              	<div class="col-md-10 form-group p_star">
			              <input type="text" class="form-control" id="membernum" name="membernum" value="${member.membernum}" readonly>
			            </div>
			            <div class="col-md-2 form-group p_star">
			              <label for="id" class="col-form-label">아이디</label>
			            </div>
			            <div class="col-md-10 form-group p_star">
			              <input type="text" class="form-control" id="id" name="id" value="${member.id}" readonly>
			            </div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="name" class="col-form-label">이름</label>
			            </div>
			        	<div class="col-md-10 form-group p_star">
			            	<input type="text" class="form-control" id="name" name="name" value="${member.name}" readonly>
			            </div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="email" class="col-form-label">이메일</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="email" name="email" value="${member.email}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="tel" class="col-form-label">전화번호</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="tel" name="tel" value="${member.tel}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="birth" class="col-form-label">생년월일</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="birth" name="birth" value="${member.birth}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="point" class="col-form-label">포인트</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="point" name="point" value="${member.point}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="pointac" class="col-form-label">누적포인트</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="pointac" name="pointac" value="${member.pointac}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="roadaddr" class="col-form-label">도로명주소</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="roadaddr" name="roadaddr" value="${member.roadaddr}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="jibunaddr" class="col-form-label">지번주소</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="jibunaddr" name="jibunaddr" value="${member.jibunaddr}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="detailaddr" class="col-form-label">상세주소</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="detailaddr" name="detailaddr" value="${member.detailaddr}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="extraaddr" class="col-form-label">참고항목</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="extraaddr" name="extraaddr" value="${member.extraaddr}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="postcode" class="col-form-label">우편번호</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="postcode" name="postcode" value="${member.postcode}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="joindate" class="col-form-label">가입일</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="joindate" name="joindate" value="${member.joindate}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="state" class="col-form-label">회원상태</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="state" name="state" value="${member.state}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="authority" class="col-form-label">권한</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="authority" name="authority" value="${member.authority}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="gender" class="col-form-label">성별</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="gender" name="gender" value="${member.gender}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="agree" class="col-form-label">개인정보수집동의</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="agree" name="agree" value="${member.agree}" readonly>
		              	</div>
	          		</form>
		            <div class="row">
			            <div class="col-md-12 form-group text-center">
			              <button type="button" class="btn btn-primary" onclick="location.href='adminMemberUpdate?membernum=${member.membernum}'">회원정보 수정</button>
			              <button type="button" class="btn btn-danger">회원탈퇴</button>
			            </div>
			    	</div>
	          	</div>
	        </div>
	      </div>
	    </div>
  	</section>
    <!-- 끝 -->

    <!--::footer_part start::-->
	<%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
	<%@ include file="include/javascript.jsp" %>
    <%@ include file="include/style.jsp" %>
    <script>
    	$(function(){
    		$(".btn-danger").click(function(){
    			var memberNum = $("#membernum").val();
    			
    			if (confirm("정말로 회원 탈퇴 처리 하시겠습니까?")) {
    				$("#deleteform").submit();
    				alert("탈퇴 처리되었습니다");
    			}
    		});
    	});
    </script>
</body>

</html>