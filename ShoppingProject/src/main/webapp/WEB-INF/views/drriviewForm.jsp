<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">
<title>리뷰신고</title>
</head>
<body>
	<div align="center">
		<h2>리뷰신고</h2>
		<br>
		<table>
			<tr><th>신고사유</th></tr>
			<tr><td><textarea id="drcontent" rows="10" cols="40" placeholder="신고 사유를 입력해주세요"></textarea></td></tr>
		</table>
		<br>
		<input type="hidden" id="reviewno">
		<input type='BUTTON' value="제출" onClick="drreviewpost()">
		<input type='BUTTON' value="취소" onClick='window.close()'>
		<br><br>
	</div>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	// reviewno 값을 설정하는 함수
	function setReviewNo(reviewNo) {
		document.getElementById("reviewno").value = reviewNo;
	}

	// 새 창이 열리면 reviewno 값을 설정
	window.onload = function() {
		var urlParams = new URLSearchParams(window.location.search);
		var reviewNo = urlParams.get('reviewNo');
		setReviewNo(reviewNo);
	}

	function drreviewpost() {
	    var reviewNo = document.getElementById("reviewno").value;
	    var drContent = document.getElementById("drcontent").value;

	    const url1 = "${pageContext.request.contextPath}/board/drreviewpost";
	    var paramData1 = {
	        "reviewno": reviewNo,
	        "drcontent": drContent
	    };
	    $.ajax({
	        url: url1,
	        data: paramData1,
	        type: "POST",
	        success: function (result) {
	            // 첫 번째 Ajax 성공 시 실행되는 코드
	            reviewreport(); // 두 번째 Ajax 호출 실행
	        },
	        error: function (result) {
	            console.log(result);
	            alert("신고 제출 실패했습니다.");
	        }
	    });
	}

	function reviewreport() {
	    var reviewNo = document.getElementById("reviewno").value;

	    const url2 = "${pageContext.request.contextPath}/board/reviewreport";
	    var paramData2 = {
	        "reviewno": reviewNo
	    };
	    $.ajax({
	        url: url2,
	        data: paramData2,
	        type: "POST",
	        success: function (result) {
	            alert("신고 제출 되었습니다.");
	            window.close();
	        },
	        error: function (result) {
	            console.log(result);
	            alert("신고 제출 실패했습니다.");
	        }
	    });
	}

	
</script>
	
</html>