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
.hUmyqx {
	width: 900px;
	padding-left: 40px;
	margin-bottom: 0px;
}

.__next-wrap * {
	box-sizing: border-box;
}

.inCvfU {
	margin-bottom: 18px;
}

.eWTIVG {
	font-size: 28px;
	font-weight: bold;
	font-stretch: normal;
	font-style: normal;
	line-height: 1.3;
	letter-spacing: -1px;
	color: rgb(17, 17, 17);
}

.kySPVw {
	margin-bottom: 15px;
}

.bcElCT {
	display: inline-block;
	position: relative;
	font-size: 12px;
}

.FtVQm {
	display: inline-block;
	padding: 0px 6px;
	font-size: 12px;
	font-weight: bold;
}

.iSntUx {
	display: inline-block;
	color: rgb(204, 204, 204);
	margin: 0px 4px;
	font-weight: normal;
	font-size: 100%;
}

.bcElCT {
	display: inline-block;
	position: relative;
	font-size: 12px;
}

.FtVQm {
	display: inline-block;
	padding: 0px 6px;
	font-size: 12px;
	font-weight: bold;
}

.kySPVw {
	margin-bottom: 30px;
}

.kudapI {
	display: table;
	width: 100%;
	border-top: 2px solid rgb(51, 51, 51);
	border-bottom: 1px solid rgb(221, 221, 221);
	vertical-align: middle;
	text-align: center;
}

.edeUJs {
	display: table-cell;
	width: 500px;
	padding: 10px;
	color: rgb(51, 51, 51);
	background-color: rgb(250, 250, 250);
}

.edeVbI {
	display: table-cell;
	width: 145px;
	padding: 10px;
	color: rgb(51, 51, 51);
	background-color: rgb(250, 250, 250);
}

.edeVBa {
	display: table-cell;
	width: 239px;
	padding: 10px;
	color: rgb(51, 51, 51);
	background-color: rgb(250, 250, 250);
}

.bJWidD {
	border-bottom: 1px solid rgb(221, 221, 221);
}

.jtbsuT {
	display: table;
	vertical-align: middle;
}

.cFTQDL {
	display: table-cell;
}

.EjRUz:last-child {
	border-bottom: 0px;
}

.dGFRWj {
	display: table-cell;
	padding-left: 10px;
	width: 90px;
	vertical-align: middle;
}

.kRLzSb {
	width: 80px;
	height: 80px;
	border: 1px solid rgb(245, 245, 245);
}

.caQPNR {
	display: table-cell;
	width: 438px;
	padding: 33px 20px;
	border-right: 1px solid rgb(221, 221, 221);
	vertical-align: middle;
}

.bmFZdD {
	padding: 5px 0px;
	color: rgb(51, 51, 51);
	font-size: 14px;
	font-weight: bold;
}

.jOCXmj {
	color: rgb(136, 136, 136);
	font-size: 12px;
}

.iMzyoh {
	padding: 10px;
	display: table-cell;
	width: 145px;
	text-align: center;
	vertical-align: middle;
}

.iAHZSW {
	font-weight: bold;
}

.htAHSf {
	padding: 10px;
	display: table-cell;
	position: relative;
	width: 230px;
	border-left: 1px solid rgb(221, 221, 221);
	text-align: center;
	vertical-align: middle;
	justify-content: center;
}

.jaEVdd {
	padding-bottom: 10px;
	text-align: center;
	display: inline-block;
	user-select: none;
	position: relative;
	width: 230px;
	vertical-align: middle;
	font-size: 15px;
}

.CcvjB {
	display: inline-block;
	user-select: none;
	position: relative;
	width: 80px;
	vertical-align: middle;
}

.kySPVw {
	margin-bottom: 30px;
}

.gUVNuv {
	padding: 5px 0px;
	font-size: 14px;
	font-weight: bold;
}

.nXoWQ {
	width: 100%;
	border-top: 2px solid rgb(17, 17, 17);
	border-bottom: 1px solid rgb(221, 221, 221);
	vertical-align: middle;
	text-align: left;
}

.kxmjSw {
	display: table;
	width: 100%;
}

.jaHLaz {
	display: table-cell;
	width: 160px;
	padding: 10px;
	background-color: rgb(250, 250, 250);
	font-weight: normal;
}

.kzrixL {
	display: table-cell;
	padding: 10px;
	border-top: 0px;
	color: rgb(51, 51, 51);
}

.kxmjSw {
	display: table;
	width: 100%;
}

.jaHLaz {
	display: table-cell;
	width: 160px;
	padding: 10px;
	background-color: rgb(250, 250, 250);
	font-weight: normal;
}

.kzrixL {
	display: table-cell;
	padding: 10px;
	border-top: 0px;
	color: rgb(51, 51, 51);
}

.beDUzG {
	margin-bottom: 30px;
}

.dfGBa-d {
	padding: 5px 0px;
	font-size: 14px;
	font-weight: bold;
}

.iLbdzB {
	float: right;
	height: 22px;
	line-height: 22px;
	padding: 0px 4px;
	margin-top: -4px;
	font-size: 11px;
	font-weight: normal;
	color: rgb(17, 17, 17);
	border: 1px solid rgb(204, 204, 204);
	border-radius: 2px;
	cursor: pointer;
}

.NkzFu {
	display: table;
	width: 100%;
	border-top: 2px solid rgb(17, 17, 17);
	border-bottom: 1px solid rgb(221, 221, 221);
	vertical-align: middle;
	text-align: left;
	table-layout: fixed;
}

.bZCQDf {
	display: table-cell;
	padding: 10px;
	vertical-align: top;
	width: 55%;
}

.bZCQDf :first-child {
	margin-top: 0px;
}

.iwWfCZ {
	display: flex;
	flex-direction: row;
	line-height: 1.5;
	-webkit-box-pack: justify;
	justify-content: space-between;
	letter-spacing: normal;
}

.kALzMT {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
}

.kDyRDu {
	display: flex;
	flex-direction: column;
	text-align: right;
}

.jtWNEg {
	font-size: 1rem;
}

.gureAN {
	font-size: 0.875rem;
}

.iYNhlM {
	margin-right: 8px;
}

.coPlHn {
	font-weight: bold;
}

.jtWNEg {
	font-size: 1rem;
}

.iGyaCB {
	display: table-cell;
	padding: 10px;
	background-color: rgb(250, 250, 250);
	width: 45%;
}

.gYOjDY {
	width: 100%;
	height: 1px;
	background-color: rgb(238, 238, 238);
	margin: 8px 0px;
}

.jTMXGV {
	padding: 5px 0px;
	font-size: 12px;
	text-align: right;
}

.jTMXGV>svg {
	position: relative;
	top: 3px;
	margin-right: 3px;
}

.ggjPko {
	width: 100%;
	margin-bottom: 10px;
	text-align: right;
}

.kEQMxz {
	height: 39px;
	width: 118px;
	margin: auto;
	font-size: 14px;
	font-weight: bold;
}

.gffiJt {
	font-size:14px;
	text-align: center;
	height: 100%;
	border: none;
	border-radius: 2px;
	padding: 8px;
	background-color: #ff3368;
	cursor: pointer;
	overflow: visible;
	box-sizing: border-box;
	color: rgb(255, 255, 255);
	font-weight: bold;
	width: 110px;
}

.gffiJt2 {
	text-align: center;
	height: 100%;
	border: 1px solid black;
	border-radius: 2px;
	padding: 8px;
	background-color: white;
	cursor: pointer;
	overflow: visible;
	box-sizing: border-box;
	color: black;
	font-weight: bold;
	width: 110px;
	font-size:14px;
}

.gHwYDP {
	position: fixed;
	width: 100%;
	height: 100%;
	top: 0px;
	left: 0px;
	z-index: 30;
}

.eJKepJ {
	position: fixed;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.7);
}

.eGWiUY {
	position: absolute;
	width: 540px;
	height: auto;
	margin: 0px auto;
	top: 50%;
	left: 0px;
	right: 0px;
	transform: translateY(-50%);
}

.goPuEW {
	display: table;
	width: 100%;
	height: auto;
	opacity: 1;
	background-color: rgb(255, 255, 255);
}

.coePZY {
	font-size: 13px;
	padding: 30px;
	color: rgb(85, 85, 85);
}

.CmiCH {
	line-height: 1.6;
	font-size: 14px;
	color: rgb(85, 85, 85);
}

.kERPNq {
	margin-top: 20px;
	text-align: center;
}

.dWdObW {
	display: inline-block;
	box-sizing: content-box;
	min-width: 63px;
	line-height: 26px;
	min-height: 1em;
	padding: 0px 5px;
	margin: -2px 10px 0px 0px;
	text-align: center;
	vertical-align: middle;
	border-radius: 2px;
	white-space: nowrap;
	appearance: none;
	font-size: 12px;
	font-weight: normal;
	border: 1px solid rgb(204, 204, 204);
	color: rgb(61, 130, 247);
	background-color: rgb(255, 255, 255);
	cursor: pointer;
	user-select: none;
}

.hdTqfu {
	display: inline-block;
	box-sizing: content-box;
	min-width: 63px;
	line-height: 26px;
	min-height: 1em;
	padding: 0px 5px;
	margin: -2px 0px 0px;
	text-align: center;
	vertical-align: middle;
	border-radius: 2px;
	white-space: nowrap;
	appearance: none;
	font-size: 12px;
	font-weight: normal;
	border: 1px solid rgb(0, 112, 204);
	color: rgb(255, 255, 255);
	background-color: rgb(61, 130, 247);
	cursor: pointer;
	user-select: none;
}
/* 페이징 스타일 */
    .pagination {
        display: flex;
        justify-content: center;
        margin-top: 20px;
    }
    .pagination a,b,
    .pagination span {
        padding: 8px 12px;
        margin-right: 5px;
        text-decoration: none;
        color: #333;
        background-color: #f2f2f2;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    .pagination a:hover {
        background-color: #e0e0e0;
    }
    .pagination .active {
        background-color: #007bff;
        color: #fff;
    }
    .pagination .disabled {
        pointer-events: none;
        cursor: default;
        background-color: #f2f2f2;
        color: #ccc;
    }
</style>
</head>
<%@ include file="include/header.jsp"%>
<body>

	<%@ include file="include/mypage_left_column.jsp"%>

	<div class="hUmyqx">
		<div class="inCvfU">
			<span class="eWTIVG">리뷰관리 <div class="ggjPko"><button class="gffiJt2" onclick="location.href='${contextPath}/board/myreviewlist?num=1'">작성한 리뷰</button>
			</span>
		</div>
		</div>
		<div class="kySPVw">
			<div class="kudapI">
				<div class="edeUJs">상품</div>
				<div class="edeVbI">배송일</div>
				<div class="edeVBa">리뷰작성하기</div>
			</div>
		<c:forEach var="noreviewlist" items="${noreviewlist}">
			<div class="bJWidD">
				<div class="jtbsuT">
					<div class="cFTQDL">
						<div class="EjRUz">
							<div class="dGFRWj">
								<a href="itemdetail?itemnum=${reviewlist.imgDTO.itemnum}"><img class="kRLzSb" loading="lazy" src="${noreviewlist.imgDTO.url}${noreviewlist.imgDTO.imgname}" alt="등록된 이미지가 없습니다">
								</a>
							</div>
							<div class="caQPNR">
								<a href="itemdetail?itemnum=${reviewlist.imgDTO.itemnum}">${noreviewlist.itemDTO.itemname}</a>
								<div class="bmFZdD"></div>
								<div class="jOCXmj">옵션 : ${noreviewlist.color} / ${noreviewlist.size}</div>
							</div>
							<div class="iMzyoh">
								<div class="iAHZSW">${noreviewlist.dv_orderDTO.deliverycom}</div>
							</div>
						</div>
					</div>
					<div class="htAHSf">
							<button class="gffiJt" onclick="location.href='${contextPath}/board/reviewForm?buynum=${noreviewlist.dv_orderDTO.buynum}'">리뷰작성하기</button>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
			<div class="pagination">
			<c:if test="${prev}">
 				<a href="${contextPath}/board/myhelplist?num=${startPageNum - 1}">이전</a>
			</c:if>
			<c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
					  <c:if test="${select != num}">
					  	 <a href="${contextPath}/board/myhelplist?num=${num}">${num}</a>
					  </c:if>    
					  <c:if test="${select == num}">
					   	<b>${num}</b>
					  </c:if>
			</c:forEach>
			<c:if test="${next}">
				 <a href="${contextPath}/board/myhelplist?num=${endPageNum + 1}">다음</a>
			</c:if>
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