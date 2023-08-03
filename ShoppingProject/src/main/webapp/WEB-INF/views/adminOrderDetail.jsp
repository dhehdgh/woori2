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
            <dd class="m10">
                <a class="nav-link" href="${contextPath}/board/adminItemInsert">상품 추가하기</a>
            </dd>
            <dt class="m10 menu_toggle">고객지원</dt>
            <dd class="m10">
                <a class="nav-link" href="${contextPath}/board/adminHelp">1:1 상담문의</a>
            </dd>
            <dt class="m10 menu_toggle">주문관리</dt>
            <dd class="m10 active">
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
		    <span>HOME</span><i class="bi bi-chevron-right"></i>주문관리<i class="bi bi-chevron-right"></i>주문리스트
		</div>
		<div class="s_wrap">
			<h1>주문내역 상세</h1>
			<form action="${contextPath}/board/adminOrderDetail" method="post">
				<div class="compare_wrap">
					<section class="compare_top">
						<h4 class="anc_tit">주문상품 목록</h4>
						<div class="local_desc02 local_desc">
							<c:forEach items="${order}" var="order">
								<c:set var="buynum" value="${order.dv_orderDTO.buynum}" scope="request" />
								<c:set var="buydate" value="${order.dv_orderDTO.buydate}" scope="request" />
								<c:set var="payment" value="${order.dv_orderDTO.payment}" scope="request" />
								<c:set var="paymethod_nm" value="${order.dv_orderDTO.paymethod_nm}" scope="request" />
								<c:set var="pointvalue" value="${order.dv_orderDTO.pointvalue}" scope="request" />
								<c:set var="membernum" value="${order.dv_order_itemDTO.cartDTO.membernum}" scope="request" />
								<c:set var="id" value="${order.dv_order_itemDTO.cartDTO.memberDTO.id}" scope="request" />
								<c:set var="name" value="${order.dv_order_itemDTO.cartDTO.memberDTO.name}" scope="request" />
								<c:set var="tel" value="${order.dv_order_itemDTO.cartDTO.memberDTO.tel}" scope="request" />
								<c:set var="delpostcode" value="${order.dv_orderDTO.addressDTO.delpostcode}" scope="request" />
								<c:set var="delroadaddr" value="${order.dv_orderDTO.addressDTO.delroadaddr}" scope="request" />
								<c:set var="deljibunaddr" value="${order.dv_orderDTO.addressDTO.deljibunaddr}" scope="request" />
								<c:set var="delextraaddr" value="${order.dv_orderDTO.addressDTO.delextraaddr}" scope="request" />
								<c:set var="deldetailaddr" value="${order.dv_orderDTO.addressDTO.deldetailaddr}" scope="request" />
								<c:set var="discount" value="${order.dv_order_itemDTO.cartDTO.memberDTO.ratinglistDTO.discount}" scope="request" />
								<c:set var="accumulation" value="${order.dv_order_itemDTO.cartDTO.memberDTO.ratinglistDTO.accumulation}" scope="request" />
							</c:forEach>
							<p>
								주문일시 <strong>${buydate}</strong> <span class="fc_214">|</span>
								주문총액 <strong>${payment}</strong>원
							</p>
						</div>
						<div class="tbl_head01">
							<table id="sodr_list">
							<colgroup>
								<col class="w60">
								<col>
								<col class="w90">
								<col class="w90">
								<col class="w60">
								<col class="w70">
								<col class="w70">
								<col class="w70">
								<col class="w70">
								<col class="w70">
							</colgroup>
							<thead>
							<tr>
								<th scope="col">이미지</th>
								<th scope="col">주문상품</th>
								<th scope="col">주문상태</th>
								<th scope="col">수량</th>
								<th scope="col">상품금액</th>
							</tr>
							</thead>
							<tbody class="list">
								<c:forEach items="${order}" var="order">
							        <tr onclick="window.location.href = '${contextPath}/board/adminItemDetail?itemnum=${order.dv_order_itemDTO.cartDTO.itemnum}';" onmouseover="this.style.cursor='pointer';">
							            <td>
											<a href="상품판매페이지"><img src="${order.dv_order_itemDTO.cartDTO.itemDTO.imgDTO.url}${order.dv_order_itemDTO.cartDTO.itemDTO.imgDTO.imgname}" width="40" height="40"></a>
										</td>
							            <td>
							            	<a href="${contextPath}/board/adminItemDetail?itemnum=${order.dv_order_itemDTO.cartDTO.itemnum}">${order.dv_order_itemDTO.cartDTO.itemDTO.itemname}</a>
							            </td>
							            <td class="tar">${order.dv_orderDTO.state_nm}</td>
							            <td>${order.dv_order_itemDTO.cartDTO.itemcnt}</td>
							            <td class="td_price">${order.dv_order_itemDTO.cartDTO.itemDTO.itempay}</td>
							        </tr>
							    </c:forEach>
							</tbody>
							</table>
						</div>
					</section>
					<section class="compare_left">
						<h3 class="thick">결제상세정보</h3>
						<div class="tbl_frm01">
							<table>
							<colgroup>
								<col class="w150">
								<col>
							</colgroup>
							<tbody>
							<tr>
								<th scope="row">주문번호</th>
								<td class="td_thick">${buynum}</td>
							</tr>
							<tr>
								<th scope="row">주문일시</th>
								<td class="td_thick">${buydate}</td>
							</tr>
							<tr>
								<th scope="row">결제방법</th>
								<td class="td_thick">${paymethod_nm}</td>
							</tr>
							<tr>
								<th scope="row">총 주문금액</th>
								<td class="td_thick">${payment}원</td>
							</tr>
							<tr>
							  	<th scope="row">등급할인</th>
							  	<td class="td_thick">(-) <span id="discountAmount">${(payment * discount / 100)}</span>원</td>
							</tr>
							<tr>
								<th scope="row">포인트결제</th>
								<td class="td_thick">(-) <span id="pointValue">${pointvalue}</span>원</td>
							</tr>
							<tr>
								<th scope="row">실 결제금액</th>
								<td class="td_thick"><span id="finalAmount">${(payment-pointvalue - payment * discount / 100)}</span>원</td>
							</tr>
							<tr>
								<th scope="row">포인트적립</th>
								<td class="td_thick"><span id="accumulationAmount">${(payment * accumulation / 100)}</span>원</td>
							</tr>
							</tbody>
							</table>
						</div>
					</section>
					<section class="compare_right">
						<h3 class="thick">주문자 정보</h3>
						<div class="tbl_frm01">
							<table>
							<colgroup>
								<col class="w150">
								<col>
							</colgroup>
							<tbody>
							<tr>
								<th scope="row">회원번호</th>
								<td class="td_thick"><a href="${contextPath}/board/adminMemberDetail?membernum=${membernum}">${membernum}</a></td>
							</tr>
							<tr>
								<th scope="row">아이디</th>
								<td class="td_thick"><a href="${contextPath}/board/adminMemberDetail?membernum=${membernum}">${id}</a></td>
							</tr>
							<tr>
								<th scope="row">이름</th>
								<td class="td_thick">${name}</td>
							</tr>
							<tr>
								<th scope="row">전화번호</th>
								<td class="td_thick">${tel}</td>
							</tr>
							<tr>
								<th scope="row">주소</th>
								<td colspan="3">
									<p class="mart5"><input type="text" id="postcode" name="postcode" class="frm_input" value="${delpostcode}" size="8" maxlength="5" readonly> 우편번호</p>
									<p class="mart5"><input type="text" id="roadaddr" name="roadaddr" class="frm_input" value="${delroadaddr}" size="40" readonly> 도로명주소</p>
									<p class="mart5"><input type="text" id="jibunaddr" name="jibunaddr" class="frm_input" value="${deljibunaddr}" size="40" readonly> 지번주소</p>
									<span id="guide" style="color:#999;display:none"></span>
									<p class="mart5"><input type="text" id="extraaddr" name="extraaddr"class="frm_input" value="${delextraaddr}" size="40" readonly> 참고항목
									<p class="mart5"><input type="text" id="detailaddr" name="detailaddr" class="frm_input" value="${deldetailaddr}" size="40" readonly> 상세주소</p>
								</td>
							</tr>
							</tbody>
							</table>
						</div>
					</section>
				</div>
				<input type="hidden" name="buynum" value="${buynum}">
				<div class="btn_confirm">
					<button type="submit" class="genric-btn info large thick">주문처리</button>
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
	    $(document).ready(function() {
	        $("#discountAmount").text(Math.floor(${(payment * discount / 100)}));
	        $("#pointValue").text(Math.floor(${pointvalue}));
	        $("#finalAmount").text(Math.floor(${(payment-pointvalue - payment * discount / 100)}));
	        $("#accumulationAmount").text(Math.floor(${(payment * accumulation / 100)}));
	    });
	</script>
</body>
</html>