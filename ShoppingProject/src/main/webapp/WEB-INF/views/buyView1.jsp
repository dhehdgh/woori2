<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
     <c:set var="user" value="${sessionScope.user}" />
    <c:forEach items="${response.buyView1}" var="cart">
         
         <c:set var="cartno" value="${cart.cartno}" scope="request" />
         
         <c:set var="point" value="${cart.memberDTO.point}" scope="request" />
         
         <c:set var="ratingstring" value="${cart.codetableDTO.ratingstring}" scope="request" />
         
         <c:set var="name" value="${cart.memberDTO.name}" scope="request" />
         
         <c:set var="roadaddr" value="${cart.addressDTO.delroadaddr}" scope="request" />
         
         <c:set var="jibunaddr" value="${cart.addressDTO.deljibunaddr}" scope="request" />
         
         <c:set var="detailaddr" value="${cart.addressDTO.deldetailaddr}" scope="request" />
         
         <c:set var="extraaddr" value="${cart.addressDTO.delextraaddr}" scope="request" />
         
         <c:set var="postcode" value="${cart.addressDTO.delpostcode}" scope="request" />
         
         <c:set var="tel" value="${cart.memberDTO.tel}" scope="request" />
         
         <c:set var="email" value="${cart.memberDTO.email}" scope="request" />
         
         <c:set var="point" value="${cart.memberDTO.point}" scope="request" />
         
          <c:set var="rating" value="${cart.codetableDTO.ratingstring}" scope="request" />
          
          <c:set var="itempay" value="${cart.itemDTO.itempay}" scope="request" />
          
          <c:set var="sale" value="${cart.itemDTO.sale}" scope="request" />
          
          <c:set var="itemcnt" value="${cart.itemcnt}" scope="request" />
          
          <c:set var="addrnum" value="${cart.addressDTO.addrnum}" scope="request" />
    
          <c:if test="${rating eq '신입'}">
  <c:set var="ratingsale" value="0.01" scope="request" />
</c:if>

<c:if test="${rating eq '브론즈'}">
  <c:set var="ratingsale" value="0.02" scope="request" />
</c:if>

<c:if test="${rating eq '실버'}">
  <c:set var="ratingsale" value="0.03" scope="request" />
</c:if>

<c:if test="${rating eq '골드'}">
  <c:set var="ratingsale" value="0.04" scope="request" />
</c:if>

<c:if test="${rating eq '플래티넘'}">
  <c:set var="ratingsale" value="0.05" scope="request" />
</c:if>

<c:if test="${rating eq '다이아'}">
  <c:set var="ratingsale" value="0.06" scope="request" />
</c:if>
          
</c:forEach>


<link rel="stylesheet" type="text/css" href="//optimizer.poxo.com/css/common/95e43917fa9099b01522486040fb6574b0ca77c9/1688952011" crossorigin="anonymous" /><link rel="stylesheet" type="text/css" href="//optimizer.poxo.com/css/amrcn1/84b0e639cdf398a57cb4f9b45c31debf2647b032.dca4420561c149f7b97aff7a32b1121c/1688952011" crossorigin="anonymous" />

<title>NUSINSA</title>
<meta name="path_role" content="ORDER_ORDERFORM" />
<meta name="author" content="NUSINSA" />
<meta name="description" content="가성비 좋은 기본템은 역시 NUSINSA" />
<meta name="keywords" content="NUSINSA" /></head><body id="userStyle">    <!-- [상단영역] -->

			

    <header id="header"><!-- app tag --><div id="ec-orderform-header-head"></div>
    
    <div class="header">
        <h1 class="xans-element- xans-layout xans-layout-logotop "><a href="${contextPath}">NUSINSA</a>
</h1>
        <div class="headerMenu gLeft">
            <span class="xans-element- xans-layout xans-layout-mobileaction btnBack "><a href="#none" onclick="document.referrer ? history.go(-1) : location.href='/';return false;">뒤로가기</a>
</span>
        </div>
        <div class="headerMenu gRight">
            <span class="xans-element- xans-layout xans-layout-orderbasketcount btnBasket "><a href="${contextPath}/board/cartView?membernum=${user.membernum}">장바구니<span class="count  EC-Layout_Basket-count-display"><span class="EC-Layout-Basket-count">${response.count1}</span></span></a>
</span>
                        <a href="${contextPath}/board/myorderlist?membernum=${user.membernum}" class="xans-element- xans-layout xans-layout-statelogon btnMy ">
                        </a>
        </div>
    </div>
    <div class="titleArea">
        <h1>주문/결제</h1>
    </div>

    <!-- app tag -->
    <div id="ec-orderform-header-tail"></div>
</header><div id="titleArea" class="titleArea">
    <h1>주문/결제</h1>
</div>


<div id="mCafe24Order" class="xans-element- xans-order xans-order-form typeHeader xans-record-">
<div id="ec-jigsaw-area-productdetail">
    </div>
    
<form method = "post" action = "orderInsert1">
<input type="hidden" id="payment" name="payment" value="">
<input type="hidden" id="point" name="point" value="">
<input type="hidden" id="pointvalue" name="pointvalue" value="">
<input type="hidden" id="salevalue" name="salevalue" value="">
<input type="hidden" id="usePoint" name="usePoint" value="">
<input type="hidden" id="membernum" name="membernum" value="${user.membernum}">


    <div id="ec-jigsaw-area-shippingInfo" class="ec-base-fold eToggle selected">
        <div id="ec-jigsaw-title-shippingInfo" class="title">
            <h2>배송지</h2>
        </div>
        <div class="contents">
                   
</div>
                

                <!-- 배송지 -->
                <div id="ec-shippingInfo-newAddress" class="tabCont newShipArea ">
                    <div class="segment ec-shippingInfo-sameaddr ">
                        <input id="addrnum1" name="addrnum" value="${addrnum}" type="radio" autocomplete="off" checked>
						<label for="addrnum1" id="addressChangeLabel1">기본배송지</label>
						<input id="addrnum2" name="addrnum" value="" type="radio" autocomplete="off">
						<label for="addrnum2" id="addressChangeLabel">배송지정보 변경</label>
					
						                
						</div>
                    <div class="ec-base-table typeWrite">
                        <table border="1">
<caption>배송 정보 입력</caption>
                            <colgroup>
<col style="width:102px">
<col style="width:auto">
</colgroup>
<tbody>
<tr class="ec-shippingInfo-newAddress-name">
<th scope="row">받는사람 <span class="icoRequired">필수</span>
</th>
                                <td><input id="rname" name="rname" value="${name}" class="inputTypeText" placeholder="이름" size="15" value="" type="text" required ></td>
                            </tr>
<tr id="ec-receiver-address">
<th scope="row">주소 <span class=""><span class="icoRequired">필수</span></span>
</th>
                                          <td>
            <ul>
              <li>
                <input type="text" value="${postcode}" id="postcode" name="postcode" placeholder="우편번호" required >
                <!-- <input id="btn_search_rzipcode"  class="btnBasic" type="button" style="cursor: pointer;"  onclick="execDaumPostcode()" value="우편번호 찾기"><br>  -->
              </li>
              <li>
                <input type="text" value="${roadaddr}" id="roadAddress" name="roadAddress" placeholder="도로명주소" required  >
              </li>
              <li>
                <input type="text" value="${jibunaddr}" id="jibunAddress" name="jibunAddress" placeholder="지번주소" required  >
              </li>
              <li>
                <input type="text" value="${detailaddr}" id="detailAddress" name="detailAddress" placeholder="상세주소">
              </li>
              <li>
                <input type="text" value="${extraaddr}" id="extraAddress" name="extraAddress" placeholder="참고항목" required  >
              </li>
            </ul>
          </td>
      
                            </tr>
<tr class="ec-shippingInfo-receiverPhone displaynone">
<th scope="row">일반전화 <span class="displaynone"><span class="icoRequired">필수</span></span>
</th>
                                <td><div class="ec-base-mail"></div></td>
                            </tr>
<tr class="ec-shippingInfo-receiverCell ">
<th scope="row">휴대전화 <span class=""><span class="icoRequired">필수</span></span>
</th>
                                <td><div class="ec-base-mail"><select id="rphone2_1" name="rphone2_[]">
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>
</select>-<input id="rphone2_2" name="rphone2_[]" maxlength="4"  size="4" value="${tel.substring(4, 8)}" type="text" required >
-<input id="rphone2_3" name="rphone2_[]" maxlength="4"  size="4" value="${tel.substring(9, 13)}" type="text" required ></div></td>
                            </tr>
<tr class="ec-orderform-emailRow ec-shop-deliverySimpleForm ">
<th scope="row">이메일 <span class="icoRequired icon_order_email" style="">필수</span>
</th>
                                <td>
                                    <div class="ec-base-mail">
            <input id="oemail1" name="oemail1" class="mailId" value="${fn:split(email,'@')[0]}" type="text" required >@
            <span class="mailAddress">
  <select id="oemail3" >
    <option value="" ${!email.endsWith('@naver.com') && !email.endsWith('@daum.net') && !email.endsWith('@nate.com') && !email.endsWith('@gmail.com') ? 'selected' : ''}>-이메일 선택-</option>
    <option value="naver.com" ${email.endsWith('@naver.com') ? 'selected' : ''}>naver.com</option>
    <option value="daum.net" ${email.endsWith('@daum.net') ? 'selected' : ''}>daum.net</option>
    <option value="nate.com" ${email.endsWith('@nate.com') ? 'selected' : ''}>nate.com</option>
    <option value="gmail.com" ${email.endsWith('@gmail.com') ? 'selected' : ''}>gmail.com</option>
    <option value="etc" id="directInputOption">직접입력</option>
  </select>

  <span class="directInput ec-compact-etc">
    <input id="oemail2" name="oemail2" placeholder="직접입력" value="${fn:split(email,'@')[1]}" type="text"> 
  </span>
</span>


        </div>
                                </td>
                            </tr>
</tbody>
</table>
</div>
                </div>
                



            <!-- 국내배송 기본 배송지 사용 -->


        <!-- 국내배송상품 주문내역 -->
        <c:forEach items="${response.buyView1}" var="cart">
         <input type="hidden" id="cartnoList${cart.cartno}" name="cartnoList" value="${cart.cartno}" class="type01">
         <input type="hidden" id="iv_itemnumList${cart.iv_itemnum}" name="iv_itemnumList" value="${cart.iv_itemnum}" class="type02">
         <input type="hidden" id="itemcntList${cart.itemcnt}" name="itemcntList" value="${cart.itemcnt}" class="type03">
         
        <div class="orderArea ">
            <!-- 기본배송 -->
            <div class="xans-element- xans-order xans-order-normallist"><!-- 참고: 상품반복 -->
<div class="ec-base-prdInfo xans-record-">
                    <div class="prdBox">
                        <div class="displaynone"><input id="chk_order_cancel_list0" name="chk_order_cancel_list_basic0" value="105:000B:F:26183" type="checkbox" disabled=""></div>
                        <div class="thumbnail"><a href="/product/detail.html?product_no=105&amp;cate_no=88"><img src="${cart.imgDTO.url}${cart.imgDTO.imgname}" alt="" width="90" height="90"></a></div>
                        <div class="description">
                            <strong class="prdName" title="상품명"> <a href="/product/쿨링-밴딩-와이드-팬츠/105/category/88/" class="ec-product-name">${cart.itemDTO.itemname}</a></strong>
                            <ul class="info">
                                <li title="옵션">
                                    <p class="option ">[옵션:${cart.codetableDTO.colorstring},${cart.codetableDTO.sizestring}]</p>
                                    </li>
                                <li>수량: ${cart.itemcnt}</li>
                                
                            </ul>
<div class="proPrice">
                                <span id=""><script>document.write((${cart.itemDTO.itempay * cart.itemcnt}).toLocaleString())</script>원 </span>
                                <span class="displaynone">()</span>
                            </div>
                        </div>
                        <button type="button" class="btnRemove " id="btn_product_one_delete_id0" prd="105:000B:F:26183" set_prd_type="">삭제</button>
                    </div>
                </div>
                
                <c:set var="totalItemPay" value="${totalItemPay + cart.itemDTO.itempay * cart.itemcnt}" />
                <c:set var="totalItemSalePay" value="${Math.floor(totalItemSalePay + (cart.itemDTO.itempay * cart.itemcnt) * cart.itemDTO.sale)}" />
                         
                
                
                
                </c:forEach>
<!-- //참고 -->
<!-- 참고: 상품반복 -->
<!-- //참고 -->
</div>
            <div class="totalPrice ">
                <div class="title">
                    <h3>배송비</h3>
                    <span class="deliveryFee"><span id="domestic_ship_fee">0 (무료)</span>원</span>
                </div>
            </div>

          
<div class="ec-jigsawWrapper">
    <!-- app tag -->
    <div id="ec-orderform-discount-head"></div>

    <div id="ec-jigsaw-area-discount" class="ec-base-fold eToggle selected">
        <div id="ec-jigsaw-title-discount" class="title">
            <h2>할인 / 등급:${rating}</h2>
          
        </div>
        <div class="contents">
            <div class="discountDetail" id="ec-shop-orderfom-total-benefit-view-id">
                <div class="discountList eToggle">
                    <div class="title">
                    
                    <br>
                <div class="discountList eToggle">
<div class="title">
    <div class="heading">사용 포인트</div>
    <div class="control">
        <input id="selectpoint" name="rphone2_[]" maxlength="5" fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호" fw-alone="N" fw-msg="" size="4" value="포인트입력" placeholder="포인트 입력" type="text" style="text-align: right; width: 100px;">
        <input id="btn_search_rzipcode" class="btnBasic" type="button" style="cursor: pointer;" onclick="usepoint()" value="사용">
        <input id="btn_search_rzipcode" class="btnBasic" type="button" style="cursor: pointer;" value="전액" onclick="document.getElementById('selectpoint').value = '${point}'">
        <br>
        <br>
        <span class="txtEm">잔여포인트: <span id="pointValue">${point}P</span></span>
        <input type="hidden" id="payment" name="payment">
    </div>
</div>

<br>
<div class="heading">포인트 할인</div>
<div class="control">
    <span class="txtEm"><span id="total_benefit_price_view"></span>P</span>
</div>



                    
                    <div class="contents">
                     
</div>
                </div>
                <br>
                <div class="discountList eToggle">
                    <div class="title">
                        <div class="heading">등급 &nbsp;&nbsp;&nbsp;할인</div>
                        <div class="control">
                            <span class="txtEm"><span id="total_benefit_price_view">-<script>document.write((${totalItemPay} * ${ratingsale}).toLocaleString())</script></span>원</span>
                            
                        </div>
                    </div>
                    
                    <div class="contents">
                     
</div>
                </div>
                
                    
                    <div class="contents">
                     
</div>
                </div>
                
                <br>
                <div class="discountList eToggle">
                    <div class="title">
                        <div class="heading">세일 &nbsp;&nbsp;&nbsp;할인</div>
                        <div class="control">
                            <span class="txtEm"><span id="total_benefit_price_view">
							<strong><span id="product_discount_price_front0">-
							<script>
							  var totalItemSalePay = Math.floor(${totalItemSalePay});
							  document.write(totalItemSalePay.toLocaleString());
							</script>
							</span>
							</strong><p class="displaynone"></p>
							</span>원</span>
                        </div>
                    </div>
                    
                    <div class="contents">
                     
</div>
                </div>
             
<ul id="divCpn" style="display:none;" class="couponWrap"></ul>
</div>
            
            <div class="totalPay">
                <h3 class="heading">적용금액</h3>
                <div class="txtEm">
                    -<span id="total_sale_price_view"><script>document.write((${Math.floor(totalItemSalePay)} + (${totalItemPay} * ${ratingsale}) + ${salepointValue.data-salepoint}) .toLocaleString())</script></span>원     
                    <span class="refer displaynone">(<span id="total_sale_price_ref_view"><span class="eRefPrice"></span></span>)</span>
                </div>
                <span class="displaynone" id="total_addpay_price_view">0</span>
            </div>
        </div>
    </div>

<div id="ec-jigsaw-area-payment" class="ec-base-fold eToggle selected">
    <div id="ec-jigsaw-title-payment" class="title">
        <h2>결제정보</h2>
    </div>
    <div class="contents">
        <!-- app tag -->
        <div id="ec-orderform-payment-head"></div>

        <div class="segment">
            <div class="ec-base-table gCellNarrow">
                <table border="1">
<caption>결제정보 상세</caption>
                    <colgroup>
<col style="width:155px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">주문상품</th>
                        <td class="right"><span id="total_product_base_price_id" class="price"><script>document.write((${totalItemPay}).toLocaleString())</script>원</span></td>
                    </tr>
<tr class="displaynone">
<th scope="row">부가세</th>
                        <td class="right"><span class="price"><span id="total_vat_price_id">+0원</span></span></td>
                    </tr>
<tr>
<th scope="row">배송비 <span class="displaynone info">(착불 상품 포함)</span>
</th>
                        <td class="right"><span class="price">+<span id="total_ship_price_id">0원</span></span></td>
                    
<tr class="discountView">
<th scope="row">할인</th>
                        <td class="right"><span class="price"><span class="txtRed">-<span class="eRefPrice" id="payment_total_sale_price_view">
                        <script>document.write((${Math.floor(totalItemSalePay)} + (${totalItemPay} * ${ratingsale}) + ${salepointValue.data-salepoint}) .toLocaleString())</script>
                        </span></span>원</span></td>
                    </tr>
<tr id="ec-shop-payment_discount_list_view" class="paymentList">
<td colspan="2">
                            <ul>
<li id="ec-shop-payment_benefit_price2_area">
                                    <span class="discountName"><i class="ico_auto"></i> 세일 할인</span>
                                    <span class="price">-<span id="ec-shop-payment_benefit_price2_view">
                                    <script>
									  var totalItemSalePay = Math.floor(${totalItemSalePay});
									  document.write(totalItemSalePay.toLocaleString());
									</script></span>원</span>
                                    <!-- <span class="discountName"><i class="ico_copon"></i> 쿠폰 할인</span>
                                    <span class="price">-<span id="ec-shop-payment_coupon_price2_view"></span>0원</span>  -->      
                                    <span class="discountName"><i class="ico_deposit"></i> 등급 할인</span>
                                    <span class="price">-<span id="ec-shop-payment_used_deposit_view"></span><script>document.write((${totalItemPay} * ${ratingsale}).toLocaleString())</script>원</span>
                                    <span class="discountName"><i class="ico_accumulate"></i> 포인트 할인</span>
                                    <span class="price">-<span id="ec-shop-payment_used_mileage_view"></span>원</span>
                                </li>
                                
                            </ul>
</td>
                    </tr>
</tbody>
</table>
</div>
        </div>
        <div class="totalPay paymentPrice">
            <h3 class="heading">최종 결제 금액</h3>
            <strong class="txtStrong">
                <span id="payment_total_order_sale_price_view"><script>document.write((${totalItemPay } - (${Math.floor(totalItemSalePay)} + (${totalItemPay} * ${ratingsale}) + ${salepointValue.data-salepoint})).toLocaleString())</script></span>원                <span class="refer displaynone">(<span id="payment_total_order_sale_price_ref_view"><span class="eRefPrice"></span></span>)</span>
            </strong>
            <span class="displaynone"><input id="total_price" name="total_price" fw-filter="isFill" fw-label="결제금액" fw-msg="" class="inputTypeText" placeholder="" style="text-align:right;ime-mode:disabled;clear:none;border:0px;float:none;" size="10" readonly="1" value="19000" type="text" disabled=""></span>
        </div>

        <!-- app tag -->
        <div id="ec-orderform-payment-tail"></div>
    </div>
</div>
            
<div id="ec-jigsaw-area-paymethod" class="ec-base-fold eToggle selected">
    <div id="ec-jigsaw-title-paymethod" class="title">
        <h2>결제수단</h2>
    </div>
    <div class="contents">
        <!-- app tag -->
        <div id="ec-orderform-paymethod-head"></div>

        <div class="segment">
            <ul class="payMethod">
<li class="ec-paymethod-recentArea displaynone">
                    <input type="radio" name="paymethod" id="paymethod-recent" class=""  disabled=""><label for="paymethod-recent">최근 결제수단</label>
                    <div id="ec-payment-recentPaymethodText" class="inner"></div>
                </li>
                <li class="ec-paymethod-newArea selected">
    <input type="radio" name="paymethod" id="paymethod" class="displaynone" checked="">
    <label for="paymethod-new"><span class="displaynone">다른 </span>결제수단 선택</label>
    <div class="inner">
        <span class="ec-base-label"><input id="addr_paymethod0" name="paymethod" value="1" type="radio" checked="checked" ><label for="addr_paymethod0">무통장입금</label></span>
        <span class="ec-base-label"><input id="addr_paymethod1" name="paymethod" value="2" type="radio" ><label for="addr_paymethod1">신용카드</label></span>
        <span class="ec-base-label"><input id="addr_paymethod2" name="paymethod" value="3" type="radio" ><label for="addr_paymethod2">가상계좌</label></span>
        <span class="ec-base-label"><input id="addr_paymethod3" name="paymethod" value="4" type="radio" ><label for="addr_paymethod3">계좌이체</label></span>
        <span class="ec-base-label"><input id="addr_paymethod4" name="paymethod" value="5" type="radio" ><label for="addr_paymethod4">카카오페이 <a href="https://www.kakaopay.com" target="_blank"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_info2.gif" alt="info"></a></label></span>
    </div>
</li>
            </ul>
</div>

        <div class="ec-paymethod-input-detail">
            <div id="payment_input_cash" class="ec-base-table typeWrite" style="">
                <table border="1">
<caption>무통장입금 정보 입력</caption>
                    <colgroup>
<col style="width:100px">
<col style="width:auto">
</colgroup>
<tbody>
<tr>
<th scope="row">입금은행 <span class="icoRequired">필수</span>
</th>
                        <td><select id="bankaccount" name="bankaccount" fw-filter="" fw-label="무통장 입금은행" fw-msg="">
<option value="-1">::: 선택해 주세요. :::</option>
<option value="bank_292:700100042379:주식회사 에이티에스티:케이뱅크:www.kbanknow.com">신한은행:110443296250 주식회사 NUSINSA</option>
</select></td>
                    </tr>
<tr>
<th scope="row">입금자명 <span class="icoRequired">필수</span>
</th>
                        <td><input id="pname" name="pname" fw-filter="" fw-label="무통장 입금자명" fw-msg="" class="inputTypeText" placeholder="" size="15" maxlength="20" value="" type="text"></td>
                    </tr>
</tbody>
</table>
</div>


       

<div id="ec-jigsaw-area-benefit" class="ec-base-fold eToggle">
    <div id="ec-jigsaw-title-benefit" class="title">
        <h2>적립 혜택</h2>
        <span id="ec-jigsaw-heading-benefit" class="txtStrong gRight"><span id="mAllMileageSum-title">${totalItemPay * 0.03}원</span> 예정</span>
    </div>
    <div class="contents">
        <!-- app tag -->
        <div id="ec-orderform-benefit-head"></div>
        <div class="segment">
            <div class="ec-base-table gCellNarrow">
                
</div>
        </div>
        <div class="totalPay">
            <h3 class="heading">적립 예정금액</h3>
            <strong class="txtEm"><span id="mAllMileageSum" style="">원</span></strong>
        </div>
        <!-- app tag -->
        <div id="ec-orderform-benefit-tail"></div>
    </div>
</div>

			
			
			<div class="button-container" style="text-align: center;">
            <button type="submit" class="btnSubmit" id="orderInsert1" onclick ="return orederInsert()"  style="width: 900px; height: 65px; font-size: 20px;">
                <span id="total_order_sale_price_view">
                <script>
                document.write((${totalItemPay} - (${Math.floor(totalItemSalePay)} + (${totalItemPay} * ${ratingsale}) + ${salepointValue.data-salepoint})).toLocaleString())
                </script>
                </span>원 
                <span class="">결제하기</span>
            </button>
            </div>
            </form>
        
        
<div class="helpArea">
            <ul class="ec-base-help typeDash">
<li class="displaynone"><span class="txtEm">상기 금액은 결제 시점의 금액과 다를 수 있습니다.</span></li>
                <li>무이자할부가 적용되지 않은 상품과 무이자할부가 가능한 상품을 동시에 구매할 경우 전체 주문 상품 금액에 대해 무이자할부가 적용되지 않습니다. 무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문하여 주시기 바랍니다.</li>
                <li>최소 결제 가능 금액은 결제금액에서 배송비를 제외한 금액입니다.</li>
            </ul>
 
  
            <!-- 끝 -->

    <!--::footer_part start::-->
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
    


<script>
const label1 = document.getElementById('addressChangeLabel1');

label1.addEventListener('click', () => {
	addrSelect1();
});

function addrSelect1() {
    var membernum = ${user.membernum};
    var url = 'addrSelect1?membernum=' + membernum;
  
    console.log("membernum 결과:", membernum);
  
    $.ajax({
        url: url,
        type: "GET",
        dataType: "json",
        success: function (response) {
            console.log("서버 응답 확인:", response[0]); 
            if (response) {
            	const address = response[0];	
            	console.log("address:", address);
            	
                document.getElementById("postcode").value = address.delpostcode;
                document.getElementById("roadAddress").value = address.delroadaddr;
                document.getElementById("jibunAddress").value = address.deljibunaddr;
                document.getElementById("detailAddress").value = address.deldetailaddr;
                document.getElementById("extraAddress").value = address.delextraaddr;
            } else {
                alert("서버 응답에 오류가 있습니다.");
            }
        },
        error: function (xhr, status, error) {
            console.error("Failed to update options. Status:", status, "Error:", error, "xkr:", xhr);
            alert("오류가 발생했습니다. 자세한 내용은 콘솔에서 확인해주세요.");
        },
    });
}
</script>
<script>
function applyValue(response) {

	console.log("서버 응답 확인:", response); 
	
	const address = response[0];	
	console.log("address:", address);
	document.getElementById("addrnum2").value = address.addrnum;
    document.getElementById("postcode").value = address.delpostcode;
    document.getElementById("roadAddress").value = address.delroadaddr;
    document.getElementById("jibunAddress").value = address.deljibunaddr;
    document.getElementById("detailAddress").value = address.deldetailaddr;
    document.getElementById("extraAddress").value = address.delextraaddr;
}
</script>
<script>
  const label = document.getElementById('addressChangeLabel');

  label.addEventListener('click', () => {
    sendAjaxRequest();
  });

  function sendAjaxRequest() {
	  const xhr = new XMLHttpRequest();
	  xhr.onreadystatechange = function() {
	    if (xhr.readyState === XMLHttpRequest.DONE) {
	      if (xhr.status === 200) {
	        const response = xhr.responseText;

	        // Open a new popup window and write the JSP response into it
	        const popup = window.open("", "AddressPopup", "width=600,height=600");
	        popup.document.open();
	        popup.document.write(response);
	        popup.document.close();
	      } else {
	        console.error('Error:', xhr.status);
	      }
	    }
	  };

	  xhr.open('GET', 'popaddrlist1', true);
	  xhr.send();
	}
</script>

<script>
  const radio1 = document.getElementById('addrnum1');
  const label1 = document.querySelector('label[for="addrnum1"]');
  const radio2 = document.getElementById('addrnum2');
  const label2 = document.querySelector('label[for="addrnum2"]');

  const handleLabelClick = (radio, label) => {
    radio.checked = true;
  };

  label1.addEventListener('click', () => {
    handleLabelClick(radio1, label1);
  });

  label2.addEventListener('click', () => {
    handleLabelClick(radio2, label2);
  });

  radio1.addEventListener('click', () => {
    label1.click();
  });

  radio2.addEventListener('click', () => {
    label2.click();
  });
</script>

 <!-- 주소 관련 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode() {
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
                document.getElementById("roadAddress").value = roadAddr;
                document.getElementById("jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("extraAddress").value = '';
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
</script>
<!-- 이메일 관련 -->
<script>
  document.getElementById('oemail3').addEventListener('change', function() {
    const selectElement = document.getElementById('oemail3');
    const directInputOption = document.getElementById('directInputOption');
    const directInputEmail = document.getElementById('oemail2');

    if (selectElement.value === 'etc') {
      directInputOption.selected = true;
      directInputEmail.style.display = 'inline-block';
    } else {
      directInputEmail.style.display = 'none';
    }
  });
</script>

<!-- 포인트/결제금액 관련 -->
<script>
var salepointValue = {
		  'data-salepoint': 0
		};
var totalpayment= {
		  'payment': 0
};

window.onload = function() {
    document.getElementById('selectpoint').value = '0';
    usepoint();
};

function usepoint() {
	  var selectedPoint = document.getElementById('selectpoint').value;
	  var remainingPoint = document.getElementById('pointValue').textContent;

	  if (parseInt(selectedPoint) > parseInt(remainingPoint)) {
	    alert("잔여 포인트보다 더 큰 값을 입력하셨습니다.");
	    return;
	  }

	  document.getElementById('total_benefit_price_view').textContent = selectedPoint;
	  document.getElementById('ec-shop-payment_used_mileage_view').textContent = selectedPoint;

	  salepointValue['data-salepoint'] = parseInt(selectedPoint);

	  performCalculations();
	  document.getElementById('usePoint').value = selectedPoint;
	  document.getElementById('pointvalue').value = selectedPoint;
	}
	
function performCalculations() {
	  var itempay = ${itempay};
	  var sale = ${sale};
	  var totalItemPay = ${totalItemPay};
	  var totalItemSalePay = ${totalItemSalePay};
	  var ratingsale = ${ratingsale};

	  var totalSalePrice = Math.floor(totalItemSalePay) + (totalItemPay * ratingsale) + salepointValue['data-salepoint'];
	  var totalpayment = totalItemPay - (Math.floor(totalItemSalePay) + (totalItemPay * ratingsale) + salepointValue['data-salepoint']);
	  var totalpoint = totalItemPay * 0.03;
	  
	  // 총 할인금액 표시.
	  document.getElementById('total_sale_price_view').textContent = totalSalePrice.toLocaleString();
	  document.getElementById('payment_total_sale_price_view').textContent = totalSalePrice.toLocaleString();
  	document.getElementById('payment').value = totalpayment;
  	document.getElementById('point').value = totalpoint;
  	document.getElementById('salevalue').value = totalItemSalePay;
	  
	  // 총 결제금액 표시
	  document.getElementById('payment_total_order_sale_price_view').textContent = totalpayment.toLocaleString();
	  document.getElementById('total_order_sale_price_view').textContent = totalpayment.toLocaleString();
	  
	}
</script>


<script>


function orederInsert() {
    if (confirm("결제를 진행하시겠습니까?")) {
      alert("결제가 완료되었습니다.");
      return true;  // 결제 처리 진행
    } else {
        alert("취소되었습니다.");
       return false; // 결제 처리 취소
    }
}
</script> 

</html>