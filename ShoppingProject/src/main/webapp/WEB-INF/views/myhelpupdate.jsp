<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
.helpbody {
	width: 830px;
	float: left;
}

.helpcontent {
	margin: 0 0 0 30px;
	zoom: 1;
}

.my-review {
	letter-spacing: -1px;
	margin-top: 20px;
	margin-bottom: 80px;
}

.my__container {
	position: relative;
	min-height: 1000px;
	font-size: 12px;
	line-height: 1.42857;
	color: #333;
	font-family: Dotum, "돋움", Helvetica, AppleSDGothicNeo, Arial,
		sans-serif !important;
}

.helpmaintitle {
	padding-bottom: 13px;
	border-bottom: 1px black solid;
}

.helpmaintitle .helpheader {
	width: 122px;
	height: 33px;
	font-size: 28px;
	color: #111111;
	font-weight: bold;
}
.my-review__modify__review {
    display: table;
    width: 100%;
    border-bottom: 1px solid #ddd;
}
.review-intake-form .my-review__field__content {
    padding: 25px 10px 10px 20px;
}
.review-intake-form .my-review__field__content__input.summary {
    width: 100%;
}
.review-intake-form .my-review__field__content__input {
    box-sizing: border-box;
    padding: 2px 10px 0;
}
.my-review__modify__survey__content__input.summary, .my-review__field__content__input.summary {
    width: 100%;
}
.my-review__modify__survey__content__input, .my-review__field__content__input {
    height: 28px;
    padding: 0 10px;
    border: 1px solid #ddd;
    line-height: 30px;
    outline: none;
}
.my-review__modify__review {
    display: table;
    width: 100%;
    border-bottom: 1px solid #ddd;
}
.my-review__modify__field__title {
    display: table-cell;
    width: 100px;
    padding: 30px 20px;
    font-size: 14px;
    color: #111;
    font-weight: bold;
}
.review-intake-form .my-review__modify__review__content {
    padding-top: 25px;
}
.my-review__modify__review__content {
    display: table-cell;
    padding: 10px 10px 10px 20px;
    vertical-align: middle;
}
.my-review__modify__review__content__text-wrap {
    overflow: hidden;
    padding-left: 10px;
    border: 1px solid #ddd;
}
.my-review__modify__review__content__text-area {
    width: 100%;
    height: 146px;
    padding: 10px 0px;
    margin-bottom: 20px;
    border: none;
    color: #111;
    outline: none;
    resize: none;
}
.review-intake-form .my-review__field__content {
    padding: 25px 10px 10px 20px;
}
.my-review__modify__survey__content, .my-review__field__content {
    display: table-cell;
    padding: 25px 10px 25px 20px;
    vertical-align: middle;
}
.back-button{
    width: 120px;
    height: 38px;
    box-sizing: border-box;
    background-color: #fff;
    font-size: 14px;
    font-weight: bold;
    color: #111;
    cursor: pointer;
    outline: none;
    border: 1px solid #ccc;
    margin-right: 4px;
}
.cancel-button {
    width: 120px;
    height: 38px;
    box-sizing: border-box;
    background-color: #fff;
    font-size: 14px;
    font-weight: bold;
    color: #111;
    cursor: pointer;
    outline: none;
    border: 1px solid #ccc;
    margin-right: 4px;
}
.submit-button {
    width: 120px;
    height: 38px;
    box-sizing: border-box;
    border: none;
    background-color: #FF3368;
    font-size: 14px;
    font-weight: bold;
    color: #fff;
    cursor: pointer;
    outline: none;
}
.review-intake-register {
    padding-top: 30px;
    text-align: center;
}
</style>
</head>
<%@ include file="include/header.jsp"%>
<body>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#ok').click(function(){
		if(confirm('정말로 수정하시겠습니까?')){
			alert("수정되었습니다.")
			return true;
		} else {
			alert("취소되었습니다.")
			return false;
		}
	})
	$('#cancel').click(function(){
		if(confirm('수정을 취소하시겠습니까?')){
			alert("취소되었습니다.")
			window.history.back();
			return true;
		} else {
			return false;
		}
	})
})	
</script>

	<%@ include file="include/mypage_left_column.jsp"%>

	<div class="helpbody">
		<div class="helpcontent">
			<div class="helpmaintitle">
				<span class="helpheader">내문의내역</span>
				</div><form method="POST">
				<div class="review-intake-form__summary">
					<div class="my-review__modify__review">
						<div class="my-review__modify__field__title">문의제목</div>
						<div class="my-review__field__content">
							<input
								class="my-review__field__content__input summary"
								name="title" type="text" value="${helpupdate.title}" maxlength="30">
						</div>
					</div>

				</div>
				<div class="my-review__modify__review">
					<div class="my-review__modify__field__title">문의내용</div>

					<div class="my-review__modify__review__content">

						<div class="my-review__modify__review__content__text-wrap">
							<textarea
								class="my-review__modify__review__content__text-area"
								 rows="5" name="content">${helpupdate.content}</textarea>
						</div>
					</div>
				</div>
			<div class="review-intake-register">
            <button class="cancel-button" id="cancel" name="cancel" type="button">수정취소하기</button>
            <button class="submit-button" id="ok" name="ok" type="submit">수정완료</button>
        </div></form>
		</div>
	</div>
	<!-- 레프트컬럼 끝 -->
	</div>
	</div>
	</section>
	<!-- 레프트컬럼 끝 -->

	<!--::footer_part start::-->
	<%@ include file="include/footer.jsp"%>
	<!--::footer_part end::-->
</body>
<!-- jquery plugins here-->
<%@ include file="include/javascript.jsp"%>
<%@ include file="include/style.jsp"%>

</html>