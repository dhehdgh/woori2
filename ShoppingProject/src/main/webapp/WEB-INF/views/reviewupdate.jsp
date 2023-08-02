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
.my-area-body {
	width: 830px;
	float: left;
}

.my-area-contents {
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

.my-review__title {
	padding-bottom: 13px;
	border-bottom: 1px black solid;
}

.my-review__title .my-review__main__header {
	width: 122px;
	height: 33px;
	font-size: 28px;
	color: #111111;
	font-weight: bold;
}

.my-review__modify {
	border-top: 1px solid #111;
}

.review-intake-form {
	padding-top: 25px;
}

.review-intake-form .review-intake-form__head {
	padding-bottom: 25px;
	border-bottom: 1px solid #ddd;
}

.review-intake-form .review-intake-form__title {
	line-height: 26px;
}

.review-intake-form .review-intake-form__title .review-intake-form__logo
	{
	height: 26px;
	vertical-align: middle;
}

.review-intake-form .review-intake-form__title .review-intake-form__text
	{
	font-size: 24px;
	color: #111;
	padding-left: 10px;
	vertical-align: middle;
	font-weight: bold;
}

.review-intake-form .review-intake-form__subtitle {
	padding-top: 10px;
}

.review-intake-form .review-intake-form__subtitle .review-intake-form__sub-text
	{
	font-size: 14px;
	color: #111;
	vertical-align: middle;
}

.review-intake-form .review-intake-form__rating {
	border-bottom: 1px solid #ddd;
}

.review-table {
	display: table;
	width: 100%;
}

.review-table .review-table__cell.review-intake-head {
	padding: 25px 20px;
}

.review-table .review-table__cell.title {
	width: 140px;
	padding: 36px 20px;
	box-sizing: border-box;
	font-size: 14px;
	font-weight: bold;
	line-height: 1.29;
	letter-spacing: -0.8px;
	color: #111111;
	vertical-align: top;
}

.review-table .review-table__cell {
	display: table-cell;
}

img {
	vertical-align: top;
}

fieldset, img {
	border: 0;
	padding: 0;
}

.review-intake-form .review-intake-form__rating .review-intake-form__product-title
	{
	padding-top: 19px;
	font-size: 14px;
	font-weight: bold;
	line-height: 1.29;
	color: #111;
}

.review-intake-form .my-review__modify__star {
	border-bottom: none;
}

.review-intake-form .my-review__modify__star__content {
	padding: 12px 0 0 0;
}

.my-review__modify__star__content {
	display: table-cell;
	padding-left: 20px;
	vertical-align: middle;
}

.my-review__modify__star__content__value {
	width: 30px;
	height: 30px;
	border: 0;
	margin: 0;
	padding: 0;
	vertical-align: middle;
	background:
		url(//img1a.coupangcdn.com/image/coupang/review/web/mycoupang/writing-star@2x.png)
		0 0px no-repeat;
	background-size: 30px 30px;
	cursor: pointer;
	outline: none;
}

body, input, textarea, select, button, table {
	font-family: sans-serif;
	font-size: 100%;
}

button {
	appearance: auto;
	font-style:;
	font-variant-ligatures:;
	font-variant-caps:;
	font-variant-numeric:;
	font-variant-east-asian:;
	font-variant-alternates:;
	font-weight:;
	font-stretch:;
	font-size:;
	font-family:;
	font-optical-sizing:;
	font-kerning:;
	font-feature-settings:;
	font-variation-settings:;
	text-rendering: auto;
	color: buttontext;
	letter-spacing: normal;
	word-spacing: normal;
	line-height: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: center;
	align-items: flex-start;
	cursor: default;
	box-sizing: border-box;
	background-color: buttonface;
	margin: 0em;
	padding: 1px 6px;
	border-width: 2px;
	border-style: outset;
	border-color: buttonborder;
	border-image: initial;
}

.review-intake-form .my-review__modify__star__content__status {
	margin-top: 0;
	vertical-align: middle;
}

.review-intake-form .default-review-star {
	font-weight: normal;
	color: #333;
}

.my-review__modify__star__content__status {
	display: inline-block;
	padding-left: 5px;
	margin-top: 9px;
	vertical-align: top;
	font-size: 14px;
	font-weight: bold;
}

.after {
	content: '';
	clear: both;
}

.my-review__modify__review {
	display: table;
	width: 100%;
	border-bottom: 1px solid #ddd;
}

.my-review__modify__field__title {
	display: table-cell;
	width: 80px;
	padding: 30px 20px;
	font-size: 14px;
	color: #111;
	font-weight: bold;
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

.my-review__flip-write-tooltip {
	top: -25px;
	left: 13px;
	color: #777777;
	font-size: 10px;
	position: relative;
	perspective: 10000px !important;
}

.my-review__modify__review__content__count {
	margin-bottom: 10px;
	text-align: right;
	font-size: 12px;
	font-weight: bold;
	color: #111;
	margin-top: -10px;
}

.my-review__modify__review__content__count {
	margin-bottom: 10px;
	text-align: right;
	font-size: 12px;
	font-weight: bold;
	color: #111;
	margin-top: -10px;
}

.review-intake-register {
	padding-top: 30px;
	text-align: center;
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

button {
	appearance: auto;
	font-style:;
	font-variant-ligatures:;
	font-variant-caps:;
	font-variant-numeric:;
	font-variant-east-asian:;
	font-variant-alternates:;
	font-weight:;
	font-stretch:;
	font-size:;
	font-family:;
	font-optical-sizing:;
	font-kerning:;
	font-feature-settings:;
	font-variation-settings:;
	text-rendering: auto;
	color: buttontext;
	letter-spacing: normal;
	word-spacing: normal;
	line-height: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: center;
	align-items: flex-start;
	cursor: default;
	box-sizing: border-box;
	background-color: buttonface;
	margin: 0em;
	padding: 1px 6px;
	border-width: 2px;
	border-style: outset;
	border-color: buttonborder;
	border-image: initial;
}

.star {
	width: 14px;
	height: 14px;
	border: 0;
	margin: 0;
	padding: 0;
	vertical-align: middle;
	background:
		url(//img1a.coupangcdn.com/image/coupang/review/web/mycoupang/rate-star-l@2x.png)
		0 0px no-repeat;
	background-size: 14px 14px;
	cursor: pointer;
	outline: none;
}

.nostar {
	width: 14px;
	height: 14px;
	border: 0;
	margin: 0;
	padding: 0;
	vertical-align: middle;
	background:
		url(//img1a.coupangcdn.com/image/coupang/review/web/mycoupang/writing-star@2x.png)
		0 0px no-repeat;
	background-size: 14px 14px;
	cursor: pointer;
	outline: none;
}
</style>
</head>
<%@ include file="include/header.jsp"%>
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
<body>

	<%@ include file="include/mypage_left_column.jsp"%>
	<div class="my-area-body">
		<div class="my-area-contents">
		<form method="POST">
			<div class="my-review__title">
				<span class="my-review__main__header">리뷰수정</span>
				<div class="product-review _product-review-container">
					<div class="my-review__modify">
						<div class="review-intake-form">
							<div class="review-intake-form__rating">
								<div class="review-table">
									<div class="review-table__cell review-intake-head title">
										<img src="${reviewdetail[0].imgDTO.url}${reviewdetail[0].imgDTO.imgname}" width="100" height="100" title="${reviewdetail[0].itemDTO.itemname}"
											alt="등록된 사진이 없습니다.">
									</div>
									<div class="review-table__cell description">
										<div class="review-intake-form__product-title">${reviewdetail[0].itemDTO.itemname}</div>

											<div class="my-review__modify__star__content">

												<div>
													<c:if test="${reviewdetail[0].reviewDTO.rstar eq 1}">
														<button class="star" type="button" disabled></button>
														<button class="nostar" type="button" disabled></button>
														<button class="nostar" type="button" disabled></button>
														<button class="nostar" type="button" disabled></button>
														<button class="nostar" type="button" disabled></button>
													</c:if>
													<c:if test="${reviewdetail[0].reviewDTO.rstar eq 2}">
														<button class="star" type="button" disabled></button>
														<button class="star" type="button" disabled></button>
														<button class="nostar" type="button" disabled></button>
														<button class="nostar" type="button" disabled></button>
														<button class="nostar" type="button" disabled></button>
													</c:if>
													<c:if test="${reviewdetail[0].reviewDTO.rstar eq 3}">
														<button class="star" type="button" disabled></button>
														<button class="star" type="button" disabled></button>
														<button class="star" type="button" disabled></button>
														<button class="nostar" type="button" disabled></button>
														<button class="nostar" type="button" disabled></button>
													</c:if>
													<c:if test="${reviewdetail[0].reviewDTO.rstar eq 4}">
														<button class="star" type="button" disabled></button>
														<button class="star" type="button" disabled></button>
														<button class="star" type="button" disabled></button>
														<button class="star" type="button" disabled></button>
														<button class="nostar" type="button" disabled></button>
													</c:if>
													<c:if test="${reviewdetail[0].reviewDTO.rstar eq 5}">
														<button class="star" type="button" disabled></button>
														<button class="star" type="button" disabled></button>
														<button class="star" type="button" disabled></button>
														<button class="star" type="button" disabled></button>
														<button class="star" type="button" disabled></button>
													</c:if>
													<span
														class="my-review__modify__star__content__status js_reviewModifyStatus default-review-star">별점은
														변경 불가입니다.</span>
												</div>
												<div class="after"></div>


											</div>

									</div>
								</div>
							</div>

							<div class="review-intake-form__detail-review">


								<div class="my-review__modify__review">
									<div class="my-review__modify__field__title"
										style="width: 100px;">상세리뷰</div>

									<div class="my-review__modify__review__content">
								
										<div class="my-review__modify__review__content__text-wrap">
											<textarea
												class="my-review__modify__review__content__text-area" name="rcontent"
												rows="5">${reviewdetail[0].reviewDTO.rcontent}</textarea>

										</div>
								

										<div class="my-review__flip-write-tooltip"
											style="perspective: 28px; position: relative; transform-style: preserve-3d;">
											상품 품질과 관계 없는 내용은 비공개 처리될 수 있습니다.</div>

										<div class="my-review__modify__review__content__count">
											<span class="js_reviewModifyTextCount"></span>
										</div>
									</div>
								</div>





							</div>
						</div>
					</div>
				</div>
				<div class="review-intake-register">
					<button class="cancel-button _review-cancel" id="cancel" name="cancel" type="button">취소하기</button>
					<button class="submit-button _review-submit" id="ok" name="ok" type="submit">수정완료</button>
				</div>
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