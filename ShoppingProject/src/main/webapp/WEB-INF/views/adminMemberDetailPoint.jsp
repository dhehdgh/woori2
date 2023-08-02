<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/style.css">
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/admin.css">
    <!-- 여기부터 작성-->
	<form id="form" method="post" action="${contextPath}/board/adminMemberDetailPointUpdate">
	
		<h2 class="newp_tit">포인트적립, 차감</h2>
		<div class="newp_wrap">
			<div class="tbl_frm01">
				<table>
					<colgroup>
						<col class="w100">
						<col>
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">아이디</th>
							<td>${point.id}</td>
						</tr>
						<tr>
							<th scope="row">회원명</th>
							<td>${point.name}</td>
						</tr>
						<tr>
							<th scope="row">포인트</th>
							<td>${point.point} P</td>
						</tr>
						<tr>
							<th scope="row">누적포인트</th>
							<td>${point.pointac} P</td>
						</tr>
						<tr>
							<th scope="row"><label for="pointAdd">포인트</label></th>
							<td><input type="text" name="pointAdd" id="pointAdd" required class="required frm_input" size="10"> P (음수 입력시 포인트차감)</td>
						</tr>
					</tbody>
				</table>
			</div>
			<input type="hidden" name="id" id="id" value="${point.id}">
			<div class="btn_confirm">
				<input type="button" value="포인트적용" onclick="submitFormAndClosePopup();" class="btn_medium">
				<button type="button" onclick="closePopup();" class="btn_medium bx-white">닫기</button>
			</div>
		</div>
	</form>
   
    <!-- 끝 -->
	
    <!-- jquery plugins here-->
	<%@ include file="include/javascript.jsp" %>
    <%@ include file="include/style.jsp" %>
    <script>
	 	function submitFormAndClosePopup() {
	         var id = $("#id").val();
	         var pointAdd = $("#pointAdd").val();
	
	         var formData = {
	             id: id,
	             pointAdd: pointAdd
	         };
	
	         $.ajax({
	             url: "${contextPath}/board/adminMemberDetailPointUpdate",
	             type: "POST",
	             data: JSON.stringify(formData),
	             contentType: "application/json",
	             success: function() {
	                 // 폼 제출이 완료된 후 팝업창을 닫음
	                 window.close();
	             },
	             error: function() {
	                 alert("포인트 적용에 실패하였습니다.");
	             }
	         });
	     }
    	
        function closePopup() {
            window.close();
        }
    </script>
</body>

</html>