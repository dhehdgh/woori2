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
.rat1 {
	box-sizing: border-box;
	padding-top: 30px;
}

.rat1 .CBenefitLevel {
	padding-left: 20px;
}

.ratpoint {
	display: block;
	font-weight: 400;
	font-size: 12px;
}

.ratlv {
	display: block;
	margin-bottom: 4px;
	font-weight: 700;
	font-size: 14px;
}

.rat2 {
	width: 140px;
}

.rat3 {
	width: 159px;
}

.rat4 {
	width: 159px;
}

.rattable {
	text-align: center;
	border: 1px solid #eee;
}

.rattitle {
	margin-bottom: 15px;
	font-weight: 700;
	font-size: 18px;
}

.rat1 .rat8 {
	padding-left: 20px;
}

caption {
	visibility: hidden;
	width: 0;
	height: 0;
	font-size: 0;
	line-height: 0;
}

.tattable head {
	border-bottom: 1px solid #eee;
}

.rattable tr {
	height: 50px;
	vertical-align: middle;
}

.rattable thead th {
	box-sizing: border-box;
	background-color: #f5f5f5;
	font-weight: 700;
	font-size: 14px;
	vertical-align: middle;
}

.rattable tbody th {
	border-right: 1px solid #eee;
	background-color: #f5f5f5;
	vertical-align: middle;
}

.rattable thead th+th {
	border-left: 1px solid #eee;
}

.rattable tbody td {
	box-sizing: border-box;
	font-size: 14px;
	text-align: center;
	vertical-align: middle;
}

.rattable tbody tr {
	box-sizing: border-box;
	height: 80px;
	vertical-align: middle;
}

.rattable tbody tr+tr {
	border-top: 1px solid #eee;
}
.myrat {
    box-sizing: border-box;
    padding: 30px 20px;
    border-bottom: 1px solid #ddd;
}
.myrat2 {
    margin-bottom: 12px;
    font-size: 20px;
    font-family: Musinsa,"Apple SD Gothic Neo","Noto Sans KR",sans-serif;
    line-height: 30px;
}
.myrat3 {
    overflow: hidden;
}
.CMyLevel .myrat4 {
    display: inline-block;
    vertical-align: bottom;
}
.myrat4 {
    overflow: hidden;
}
.myrat5 {
    float: left;
}
.myrat6 {
    font-weight: 300;
    font-size: 12px;
    line-height: 18px;
}
.myrat7 {
    margin-top: 4px;
    font-weight: 400;
    font-size: 20px;
    font-family: Musinsa,"Apple SD Gothic Neo","Noto Sans KR",sans-serif;
    line-height: 30px;
}
.myrat8 {
    float: left;
    margin: 0 20px;
    padding-top: 22px;
    font-weight: 800;
    font-size: 20px;
}
.CLevelCalculation__item {
    float: left;
}
.myrat9 {
    display: inline-block;
    vertical-align: bottom;
}
.myrat10 {
    font-size: 14px;
    line-height: 21px;
}
.CMyLevel .myrat10 {
    display: inline-block;
    margin: 0 0 4px 20px;
    vertical-align: bottom;
}
.myrat11 {
    font-weight: 400;
    color: #14aaff;
}
.myrat12 {
    display: block;
    margin-top: 30px;
    padding-left: 10px;
    font-size: 14px;
}
.myrat14>li {
    display: block;
    position: relative;
    text-align: left;
    word-break: break-all;
}
.myrat14>li[class$=normal] {
    color: #777;
}
.myrat14 {
    line-height: 21px;
}
.myrat15 {
	padding-left:30px;
    left: 270px;
    top: 0;
    right: 0;
}
.myrat16 {
    display: inline-block;
    color: #b3b3b3;
}
</style>
</head>
<%@ include file="include/header.jsp"%>
<body>

	<%@ include file="include/mypage_left_column.jsp"%>

<div class="myrat15">
	<div class="myrat">
		<div class="CMyLevel">
	
			<div class="myrat9">
			<c:choose>
			<c:when test="${mypoint.pointac < 2000}">
				<div class="myrat2">LV.1 뉴비</div>
				</c:when><c:when test="${mypoint.pointac >= 2001 and mypoint.pointac <= 10000}">
				<div class="myrat2">LV.2 브론즈</div>
				</c:when><c:when test="${mypoint.pointac >= 10001 and mypoint.pointac <= 100000}">
				<div class="myrat2">LV.3 실버</div>
				</c:when><c:when test="${mypoint.pointac >= 100001 and mypoint.pointac <= 200000}">
				<div class="myrat2">LV.4 골드</div>
				</c:when><c:when test="${mypoint.pointac >= 200001 and mypoint.pointac <= 500000}">
				<div class="myrat2">LV.5 플래티넘</div>
				</c:when><c:when test="${mypoint.pointac >= 500001}">
				<div class="myrat2">LV.6 다이아몬드</div>
				</c:when>
				</c:choose>
				<div class="myrat3">
					<div class="myrat4">
						<dl class="myrat5">
							<dt class="myrat6">현재 포인트</dt>
							<dd class="myrat7">
								${mypoint.point}점
								<p class="myrat16"></p>
							</dd>
						</dl>
						<div class="myrat8"></div>
						<dl class="myrat5">
							<dt class="myrat6">현재 누적 포인트</dt>
							<dd class="myrat7">${mypoint.pointac}점</dd>
						</dl>
						<div class="myrat8"></div>
						<dl
							class="myrat5 myrat5--current">
							<dt class="myrat6">사용 포인트</dt>
							<dd class="myrat7">${mypoint.pointac-mypoint.point}점</dd>
						</dl>
					
					<div class="myrat10">
					<c:choose>
			<c:when test="${mypoint.pointac < 2000}">
				다음 등급까지 <strong class="myrat11">${2001-mypoint.pointac}</strong> 점 남았습니다.
						
				</c:when><c:when test="${mypoint.pointac >= 2001 and mypoint.pointac <= 10000}">
				다음 등급까지 <strong class="myrat11">${10001-mypoint.pointac}</strong> 점 남았습니다.
						
				</c:when><c:when test="${mypoint.pointac >= 10001 and mypoint.pointac <= 100000}">
				다음 등급까지 <strong class="myrat11">${100001-mypoint.pointac}</strong> 점 남았습니다.
						
				</c:when><c:when test="${mypoint.pointac >= 100001 and mypoint.pointac <= 200000}">
				다음 등급까지 <strong class="myrat11">${200001-mypoint.pointac}</strong> 점 남았습니다.
						
				</c:when><c:when test="${mypoint.pointac >= 200001 and mypoint.pointac <= 500000}">
				다음 등급까지 <strong class="myrat11">${500001-mypoint.pointac}</strong> 점 남았습니다.
						
				</c:when><c:when test="${mypoint.pointac >= 500001}">
				<strong class="myrat11">최고 등급입니다.</strong>
						
				</c:when>
				</c:choose></div>
					</div>
				</div>
			</div>
		</div>
		<ul class="myrat12">
			<li class="myrat14">회원 등급은 로그인, 마이페이지 > 내등급 접속시 갱신됩니다.</li>
				
		</ul>
	</div>





	<div class="rat1">
		<div class="rat8">
			<h4 class="rattitle">등급 혜택</h4>
			<table class=rattable>
				<caption>등급 혜택</caption>
				<colgroup>
					<col class="CBenefitLevel__table__size rat2">
					<col class="CBenefitLevel__table__size rat3">
					<col class="CBenefitLevel__table__size rat4">

				</colgroup>
				<thead style="border-bottom: 1px solid #eee">
					<tr class="rattr">
						<th scope="col">등급 점수</th>
						<th scope="col">등급 할인</th>
						<th scope="col">등급 적립</th>
					</tr>
				</thead>
				<tbody>
					<tr scope="row" id="tr_level_1">
						<th><span class="ratlv">LV.1 신입 </span> <span
							class="ratpoint">~2,000점</span></th>
						<td>1% 등급 할인</td>
						<td>1% 등급 적립</td>
					</tr>
					<tr scope="row" id="tr_level_2">
						<th><span class="ratlv">LV.2 브론즈 </span> <span
							class="ratpoint">2,001~10,000점</span></th>
						<td>1% 등급 할인</td>
						<td>2% 등급 적립</td>
						<td></td>
					</tr>
					<tr scope="row" id="tr_level_3">
						<th><span class="ratlv">LV.3 실버 </span> <span
							class="ratpoint">10,001~100,000점</span></th>
						<td>2% 등급 할인</td>
						<td>2% 등급 적립</td>
					</tr>
					<tr scope="row" id="tr_level_4">
						<th><span class="ratlv">LV.4 골드 </span> <span
							class="ratpoint">100,001~200,000점</span></th>
						<td>2% 등급 할인</td>
						<td>3% 등급 적립</td>
					</tr>
					<tr scope="row" id="tr_level_5">
						<th><span class="ratlv">LV.5 플래티넘 </span> <span
							class="ratpoint">200,001~500,000점</span></th>
						<td>3% 등급 할인</td>
						<td>3% 등급 적립</td>
					</tr>
					<tr scope="row" id="tr_level_6">
						<th><span class="ratlv">LV.6 다이아몬드 </span> <span
							class="ratpoint">500,001~</span></th>
						<td>3% 등급 할인</td>
						<td>4% 등급 적립</td>
				</tbody>
			</table>
		</div>
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