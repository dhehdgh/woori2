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

   <div id="container">          
        <div id="contents" class="momoi-fade">
            
<div class="path">
    <span>현재 위치</span>
    <ol><li><a href="/">홈</a></li>
        <li title="현재 위치"><strong>장바구니</strong></li>
    </ol></div>

<div class="titleArea">
    <h2>장바구니</h2>
</div>

<div class="xans-element- xans-order xans-order-basketpackage "><p class="orderStep"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/img_order_step1.gif" alt="01 장바구니"/></p>
<div class="xans-element- xans-order xans-order-dcinfo ec-base-box typeMember  "><div class="information">
            <h3 class="title">혜택정보</h3>
            <div class="description">
                <div class="member displaynone"></div>
                <ul class="mileage">
<li><a href="/myshop/mileage/historyList.html">포인트 : <strong>1000원</strong></a></li>
                    <li><a href="/myshop/coupon/coupon.html">등급 : <strong>뉴비</strong></a></li>
                </ul>
</div>
        </div>
</div>
<div class="xans-element- xans-order xans-order-tabinfo ec-base-tab typeLight "><ul class="menu">
<li class="selected "><a href="/order/basket.html">배송상품 (0)</a></li>
        </ul>
        
<div class="orderListArea ec-base-table typeList gBorder">


        <table border="1" summary="" class="xans-element- xans-order xans-order-normnormal xans-record-"><caption>기본배송</caption>
<colgroup>
<col style="width:27px"/>
<col style="width:92px"/>
<col style="width:auto"/>
<col style="width:88px"/>
<col style="width:110px"/>
<col style="width:88px"/>
<col style="width:88px"/>
<col style="width:85px"/>
<col style="width:98px"/>
<col style="width:110px"/>
</colgroup>
<thead><tr>
<th scope="col"><input type="checkbox" onclick="Basket.setCheckBasketList('basket_product_normal_type_normal', this);"/></th>
                <th scope="col">이미지</th>
                <th scope="col">상품정보</th>
                <th scope="col">수량</th>
                <th scope="col">상품구매금액</th>
                <th scope="col">할인금액</th>
                <th scope="col" class="mileage">적립금</th>
                <th scope="col">배송구분</th>
                <th scope="col">배송비</th>
                <th scope="col">선택</th>
            </tr></thead>
<tfoot class="right"><tr>

            </tr></tfoot><tbody class="xans-element- xans-order xans-order-list center"><tr class="xans-record-">
<td><input type="checkbox" id="basket_chk_id_0" name="basket_product_normal_type_normal"/></td>
                <td class="thumb gClearLine"><a href="#"><img src="${contextPath}/resources/bootstrap/img/banner_img.png"  alt="일상 꽈배기 반팔 니트"/></a></td>
                <td class="left gClearLine">
                    <ul class="xans-element- xans-order xans-order-optionall option"><li class="xans-record-">
<strong class="displaynone">일상 꽈배기 반팔 니트</strong>[옵션: 아이보리] <span class="displaynone">(1개)</span><br/><span class=""><a href="#none" onclick="Basket.showOptionChangeLayer('option_modify_layer_0', $(this))" class="btnNormal gBlank5 ">옵션변경</a></span>
                        </li>
</ul>
                </td>
		<td class="right">
               <span class="">
                   <span class="ec-base-qty"><input id="quantity_id_0" name="quantity_name_0" size="2" value="1" type="text"  /><a href="javascript:;" class="up" onclick="Basket.addQuantityShortcut('quantity_id_0', 0);"><img src="//img.echosting.cafe24.com/skin/base/common/btn_quantity_up.gif" alt="수량증가"/></a><a href="javascript:;" class="down" onclick="Basket.outQuantityShortcut('quantity_id_0', 0);"><img src="//img.echosting.cafe24.com/skin/base/common/btn_quantity_down.gif" alt="수량감소"/></a></span>
                   <a href="javascript:;" class="btnNormal gBlank5" onclick="Basket.modifyQuantity()">변경</a>
               </span>
           <span class="displaynone">1</span>
       </td>
                    <div id="">
<strong>17,000원</strong><p class="displaynone"></p>
</div>
                </td>
                <td rowspan="1" class="">
                    <span>-</span>
                    <div id="" class="displaynone">
<strong>-<span id="product_discount_price_front0">3,000</span>원</strong><p class="displaynone"></p>
</div>
                </td>
                <td>
                    <span id="product_mileage0" class="txtInfo"><input id='product_mileage_all_103_000B' name='product_mileage_all' value='170' type="hidden" ><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_point.gif" /> 170원</span>
                </td>
                <td class="right">
                    <div class="txtInfo">기본배송<br/></div>
                </td>
                <td rowspan="1" class="">
<p class="displaynone">0원<span class="displaynone"><br/></span><br/></p>무료</td>
                <td class="button">
                    <a href="javascript:;" class="btnSubmit " onclick="Basket.orderBasketItem(0);">주문하기</a>
                    <a href="javascript:;" class="btnSubmit displaynone" onclick="Basket.orderBasketItem(0);">정기배송 신청</a>
                    <a href="javascript:;" class="btnNormal" onclick="BasketNew.moveWish(0);">관심상품등록</a>
                    <a href="javascript:;" class="btnNormal" onclick="Basket.deleteBasketItem(0);"><i class="icoDelete"></i> 삭제</a>
                </td>
            </tr>
</tbody>
</table>
</div>
</div>
</div>
<div class="xans-element- xans-order xans-order-selectorder ec-base-button "><span class="gLeft">
            <strong class="text">선택상품을</strong>
            <a href="#none" class="btnEm" onclick="Basket.deleteBasket()"><i class="icoDelete"></i> 삭제하기</a>

        </span>
<span class="gRight">
            <a href="#none" class="btnNormal" onclick="Basket.emptyBasket()">장바구니비우기</a>
        </span>
</div>
<!-- 총 주문금액 : 국내배송상품 -->
<div class="xans-element- xans-order xans-order-totalsummary ec-base-table typeList gBorder total  "><table border="1" summary="">
<caption>총 주문금액</caption>
            <colgroup>
<col style="width:17%;"/>
<col style="width:17%;" class="displaynone"/>
<col style="width:19%;"/>
<col style="width:17%;" class="displaynone"/>
<col style="width:auto;"/>
</colgroup>
<thead><tr>
<th scope="col"><strong>총 상품금액</strong></th>
                <th scope="col" class="displaynone"><strong>총 부가세</strong></th>
                <th scope="col"><strong>총 배송비</strong></th>
                <th scope="col" id="total_benefit_price_title_area" class="displaynone">
<strong>총 할인금액</strong> <a href="#none" class="btnNormal" onclick="OrderLayer.onDiv('order_layer_benefit', event);">내역보기</a>
</th>
                <th scope="col"><strong>결제예정금액</strong></th>
            </tr></thead>
<tbody class="center"><tr>
<td><div class="box txt16">
<strong><span class="txt23"><span class="total_product_price_display_front">17,000</span></span>원</strong> <span class="txt14 displaynone"><span class="total_product_price_display_back"></span></span>
</div></td>
                <td class="displaynone"><div class="box txt16">
<strong><span class="txt23"><span class="total_product_vat_price_front">0</span></span>원</strong> <span class="txt14 displaynone"><span class="total_product_vat_price_back"></span></span>
</div></td>
                
                <td id="total_benefit_price_area" class="displaynone"><div class="box txt16">
<strong class="txt23">- </strong><strong><span id="total_product_discount_price_front" class="txt23">3,000</span>원</strong> <span class="txt14 displaynone"><span id="total_product_discount_price_back"></span></span>
</div></td>
                <td><div class="box txtEm txt16">
<strong class="txt23">= </strong><strong><span id="total_order_price_front" class="txt23">17,000</span>원</strong> <span class="txt14 displaynone"><span id="total_order_price_back"></span></span>
</div></td>
            </tr></tbody>
</table>

<div class="orderListArea ec-base-table typeList gBorder">

 </div>
<div class="xans-element- xans-order xans-order-totalorder ec-base-button justify"><a href="#none" onclick="Basket.orderAll(this)" link-order="/order/orderform.html?basket_type=all_buy" link-login="/member/login.html" class="btnSubmitFix sizeM  ">전체상품주문</a>
<a href="#none" onclick="Basket.orderSelectBasket(this)" link-order="/order/orderform.html?basket_type=all_buy" link-login="/member/login.html" class="btnEmFix sizeM ">선택상품주문</a><span class="gRight">
           
            <a href="${contextPath}" class="btnNormalFix sizeM">쇼핑계속하기</a>
        </span>

</div>
</div>
   
    <!-- 끝 -->

    <!--::footer_part start::-->
	<%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
	<%@ include file="include/javascript.jsp" %>
    <%@ include file="include/style.jsp" %>
    <%@ include file="include/style1.jsp" %>
</body>

</html>