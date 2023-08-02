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
	width:900px;
	padding-left:40px;
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
    margin-bottom: 30px;
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
    width: 470px;
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
    width: 498px;
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
	padding:10px;
    display: table-cell;
    width: 145px;
    text-align: center;
    vertical-align: middle;
}
.iAHZSW {
    font-weight: bold;
}
.htAHSf {
	padding:10px;
    display: table-cell;
    position: relative;
    width: 230px;
    border-left: 1px solid rgb(221, 221, 221);
    text-align: center;
    vertical-align: middle;
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
.jTMXGV > svg {
    position: relative;
    top: 3px;
    margin-right: 3px;
}
.ggjPko {
    width: 100%;
    margin-bottom: 50px;
    text-align: center;
}
.kEQMxz {
    height: 39px;
    width: 118px;
    margin: auto;
    font-size: 14px;
    font-weight: bold;
}
.gffiJt {
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
    width: 100%;
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
    width: 75px;
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
</style>
</head>
<%@ include file="include/header.jsp"%>
<body>

	<%@ include file="include/mypage_left_column.jsp"%>

	<div class="hUmyqx">
		<div class="inCvfU">
			<span class="eWTIVG">취소/반품/교환/환불내역 상세</span>
		</div>
		<div class="kySPVw">
			<div class="bcElCT">주문일 :</div>
			<div class="FtVQm">${returndetail.dv_orderDTO.buydate}</div>
			<span class="iSntUx">|</span>
			<div class="bcElCT">주문번호 :</div>
			<div class="FtVQm">1</div>
		</div>
		<div class="kySPVw">
			<div class="kudapI">
				<div class="edeUJs">상품</div>
				<div class="edeVbI">금액</div>
				<div class="edeVBa">진행 상태</div>
			</div>
			<div class="bJWidD">
				<div class="jtbsuT">
					<div class="cFTQDL">
						<div class="EjRUz">
							<div class="dGFRWj">
								<img class="kRLzSb" loading="lazy"
									src=""
									alt="등록된 이미지가 없습니다">
							</div>
							<div class="caQPNR">바지
								<div class="bmFZdD">
									</div>
								<div class="jOCXmj">바지
									</div>
							</div>
							<div class="iMzyoh">
								<div class="hytYNz">1 개</div>
								<div class="iAHZSW">10,000 원</div>
							</div>
						</div>
					</div>
					<div class="htAHSf">
						<div class="jaEVdd">
							<strong>취소완료</strong>
						</div>
						<div class="CcvjB"><button class="gffiJt2">신청취소</button></div>
					</div>
				</div>
			</div>
		</div>
		<div class="kySPVw">
			<div class="gUVNuv">상세정보</div>
			<div class="nXoWQ" style="padding-bottom: 20px;">
				<div class="kxmjSw">
					<div class="jaHLaz">취소접수일자</div>
					<div class="kzrixL">2019/2/14</div>
				</div>
				<div class="kxmjSw">
					<div class="jaHLaz">취소접수번호</div>
					<div class="kzrixL">129934146</div>
				</div>
				<div class="kxmjSw">
					<div class="jaHLaz">취소완료일</div>
					<div class="kzrixL">2019/2/14</div>
				</div>
				<div class="kxmjSw">
					<div class="jaHLaz" style="vertical-align:top;">사유</div>
				 <div class="my-review__modify__review__content__text-wrap">
                     <textarea class="my-review__modify__review__content__text-area"
                        rows="5" id="returncontent" name="returncontent" disabled></textarea>
					</div>
                  </div>
			</div>
		</div>
		<div class="beDUzG">
			<div class="dfGBa-d">
				환불안내
			</div>
			<div class="NkzFu">
				<div class="bZCQDf">
					<div class="iwWfCZ">
						<div class="kALzMT">
							<span class="jtWNEg hihGVy">상품금액</span>
						</div>
						<div class="kDyRDu">
							<span class=" jtWNEg"><span
								class="gureAN iYNhlM"></span><span
								class="jtWNEg coPlHn">10,000</span>원</span>
						</div>
					</div>
					<div class="iwWfCZ">
						<div class="kALzMT">
							<span class="jtWNEg hihGVy">할인금액</span>
						</div>
						<div class="kDyRDu">
							<span class="jtWNEg"><span
								class="gureAN iYNhlM"></span><span
								class="jtWNEg coPlHn">0</span>원</span>
						</div>
					</div>
					<div class="iwWfCZ">
						<div class="kALzMT">
							<span class="jtWNEg hihGVy">배송비</span>
						</div>
						<div class="kDyRDu">
							<span class="jtWNEg"><span
								class="gureAN iYNhlM"></span><span
								class="jtWNEg coPlHn">0</span>원</span>
						</div>
					</div>
					<div class="iwWfCZ">
						<div class="kALzMT">
							<span class="jtWNEg hihGVy">반품비</span>
						</div>
						<div class="kDyRDu">
							<span class="jtWNEg"><span
								class="gureAN iYNhlM"></span><span
								class="jtWNEg coPlHn">0</span>원</span>
						</div>
					</div>
				</div>
				<div class="iGyaCB">
					<div class="iwWfCZ">
						<div class="kALzMT">
							<span class="jtWNEg jTFSmI">환불 수단</span>
						</div>
						<div class="kDyRDu">
							<span color="#555555" class="guCUYP"><span
								class="gureAN iYNhlM">농협카드 / 일시불</span><span
								class="jtWNEg coPlHn">10,000</span>원</span>
						</div>
					</div>
					<div class="gYOjDY"></div>
					<div class="iwWfCZ">
						<div class="kALzMT">
							<span class="jtWNEg jTFSmI">환불 완료</span>
						</div>
						<div class="kDyRDu">
							<span color="#E7223D" class="jHGgSK"><span
								class="gureAN iYNhlM"></span><span
								class="jtWNEg coPlHn">10,000</span>원</span>
						</div>
					</div>
				</div>
			</div>
			<div class="jTMXGV">
				카드사로 결제 취소 요청이 전달된 후 환불까지 평일 기준 3~7일이 소요됩니다.
			</div>
		</div>
		<div class="ggjPko">
			<div class="kEQMxz">
				<button class="gffiJt">목록</button>
			</div>
		</div>
		<!--<div class="gHwYDP dptKFv">
			<div class="eJKepJ"></div>
			<div width="" class="eGWiUY">
				<div class="goPuEW">
					<div class="coePZY">
						<ul class="CmiCH"></ul>
						<div class="kERPNq">
							<button class="dWdObW">취소</button>
							<button class="hdTqfu">확인</button>
						</div>
					</div>
				</div>
			</div>
		</div>-->
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