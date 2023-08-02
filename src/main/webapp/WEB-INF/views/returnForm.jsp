<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
.padding_mybox {
   padding: 80px 0px;
}

.l_w_title h2 {
   margin-bottom: 20px;
   margin-top: 20px;
   font-size: 30px;
   color: black;
   font-weight: 500;
   line-height: 40px;
   position: relative;
   display: inline;
}

.padding_top_order {
   padding-top: 40px;
}

.confirmation_part .single_confirmation_details_order {
   background-color: #ecfdff;
   padding: 35px 40px;
}

@media ( max-width : 991px) {
   /* line 11, ../../01 cl html template/03_jun 2019/188_Aranoz shop_html/sass/_confirmation_part.scss */
   .confirmation_part .single_confirmation_details_order {
      margin-bottom: 15px;
   }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
   /* line 11, ../../01 cl html template/03_jun 2019/188_Aranoz shop_html/sass/_confirmation_part.scss */
   .confirmation_part .single_confirmation_details_order {
      margin-bottom: 30px;
   }
}

.itembox {
   padding-left: 15px;
   float: left;
}

.itembox h2 {
   font-size: 18px;
   margin-bottom: 0px;
}

.rating {
   font-size: 16px;
   float: right;
   padding-bottom: 45px;
}

/* line 20, ../../01 cl html template/03_jun 2019/188_Aranoz shop_html/sass/_confirmation_part.scss */
.confirmation_part .single_confirmation_details_order h4 {
   font-size: 24px;
   font-weight: 500;
   color: #222222;
   text-transform: capitalize;
   margin-bottom: 16px;
}

/* line 34, ../../01 cl html template/03_jun 2019/188_Aranoz shop_html/sass/_confirmation_part.scss */
.confirmation_part .single_confirmation_details_order ul li p {
   left: 0;
   top: 0;
   line-height: 21px;
   color: #777777;
}

/* line 41, ../../01 cl html template/03_jun 2019/188_Aranoz shop_html/sass/_confirmation_part.scss */
.confirmation_part .single_confirmation_details_order ul li span {
   color: #222222;
}

.single_confirmation_details_order ul li {
   text-transform: capitalize;
   padding-left: 20%;
   margin-bottom: 3px;
}

.testbox {
   width: 800px;
   border-radius: 12px;
   box-shadow: rgba(0, 0, 0, 0.9) 0px 2px 4px 0px, rgba(0, 0, 0, 0.16) 0px
      0px 1px 0px;
   background-color: rgb(255, 255, 255);
   margin-bottom: 20px;
   padding: 24px 24px 16px;
}

.testbox2 {
   height: 28px;
   display: flex;
   -webkit-box-pack: justify;
   justify-content: space-between;
}

.testbox3 {
   display: inline-block;
   padding-top: 20px;
   width: 100%;
   height: 28px;
   font-size: 20px;
   font-weight: bold;
   font-stretch: normal;
   font-style: normal;
   line-height: 1.4;
   letter-spacing: -0.5px;
   color: rgb(17, 17, 17);
   width: 100%;
}

.testbox4 {
   text-align: right;
   font-size: 16px;
   font-weight: normal;
   font-stretch: normal;
   font-style: normal;
   line-height: 1.5;
   letter-spacing: -0.5px;
   color: rgb(52, 106, 255);
   display: inline-flex;
   vertical-align: middle;
   position: relative;
   width: auto;
   -webkit-box-pack: end;
   justify-content: flex-end;
}

.testbox5 {
   height: 16px;
   line-height: 1;
   margin: auto;
   font-family: 나눔고딕, nanumgothic, 돋움, dotum, sans-serif;
}

.testbox6 {
   border-radius: 8px;
   border: 1px solid rgb(238, 238, 238);
   background-color: rgb(255, 255, 255);
   margin-top: 16px;
}


.testbox7 {
   margin-top: 10px;
}

.testtbody {
   display: table-row-group;
   vertical-align: middle;
   border-color: inherit;
}

.testtr {
   display: table-row;
   vertical-align: inherit;
   border-color: inherit;
}

.testtd {
   height: 100%;
   padding: 20px;
   vertical-align: top;
}

.testdiv1 {
   display: flex;
   -webkit-box-align: center;
   align-items: center;
   margin-bottom: 4px;
}

.testdiv2 {
   -webkit-box-pack: start;
   justify-content: flex-start;
   -webkit-box-align: center;
   align-items: center;
   width: 100%;
   display: flex;
   line-height: 1.5;
}

.testfont {
   font-size: 1rem;
   font-weight: bold;
   color: rgb(17, 17, 17);
}

.fontsize {
   font-size: 1.25rem;
}

.test_dv {
   width: 4px;
   height: 4px;
   border-radius: 50%;
   background-color: rgb(17, 17, 17);
   opacity: 0.2;
}

.test_dv2 {
   position: relative;
   display: inline-flex;
   -webkit-box-pack: center;
   justify-content: center;
   -webkit-box-align: center;
   align-items: center;
   width: 4px;
   height: 1em;
   vertical-align: middle;
   margin-left: 6px;
   margin-right: 6px;
}

.dv_date {
   font-size: 1rem;
   font-weight: normal;
   color: rgb(0, 140, 0);
}

.testbox8 {
   display: flex;
   flex-direction: row;
}

.testimg {
   display: flex;
   width: 100px;
   position: relative;
   margin-right: 16px;
}

.testimg2 {
   -webkit-box-pack: center;
   justify-content: center;
   -webkit-box-align: center;
   align-items: center;
   overflow: hidden;
   user-select: none;
   cursor: pointer;
   border-radius: 4px;
   display: inline-flex;
}

.testimg3 {
   opacity: 1;
}

.testbox9 {
   user-select: none;
   overflow: hidden;
   flex: 1 1 0%;
   display: flex;
}

.testbox10 {
   display: flex;
   flex: 1 1 0%;
   user-select: none;
   min-width: 0px;
   flex-direction: column;
}

.testbox11 {
   color: #171717;
   font-size: 1rem;
}

.testbox12 {
   -webkit-box-align: center;
   align-items: center;
   -webkit-box-pack: justify;
   justify-content: space-between;
}

.testbox13 {
   width: 100%;
   display: flex;
   color: rgb(85, 85, 85);
   -webkit-box-align: center;
   align-items: center;
   -webkit-box-pack: start;
   justify-content: flex-start;
}

.testbox14 {
   font-size: 1rem;
   font-weight: normal;
   color: rgb(85, 85, 85);
}

.testbox15 {
   position: relative;
   display: inline-flex;
   -webkit-box-pack: center;
   justify-content: center;
   -webkit-box-align: center;
   align-items: center;
   width: 2px;
   height: 1em;
   vertical-align: middle;
   margin-left: 4px;
   margin-right: 4px;
}

.testbox16 {
   width: 2px;
   height: 2px;
   border-radius: 50%;
   background-color: rgb(17, 17, 17);
   opacity: 0.2;
}

.ttest {
   display: flex;
   line-height: 1.5;
}

.testbtn {
   display: inline-flex;
   -webkit-box-pack: center;
   justify-content: center;
   -webkit-box-align: center;
   align-items: center;
   padding-left: 12px;
   padding-right: 12px;
   user-select: none;
   cursor: pointer;
   text-decoration: none;
   outline: none;
   appearance: none;
   height: 2.25rem;
   border-radius: 4px;
   color: rgb(17, 17, 17);
   background-color: rgb(255, 255, 255);
   border: 1px solid rgb(221, 221, 221);
   -webkit-tap-highlight-color: rgba(52, 106, 255, 0.1);
   font-size: 0.875rem;
}

.testbtn2 {
   float: right;
   min-height: 2.25rem;
   padding: 0px 10px;
}

.testtd2 {
   display: flex;
   flex-flow: column wrap;
   height: 100%;
   -webkit-box-align: center;
   align-items: center;
   -webkit-box-pack: justify;
   justify-content: space-between;
   padding: 20px;
}

.testbox20 {
   display: flex;
   flex-flow: column wrap;
   height: 100%;
   -webkit-box-align: center;
   align-items: center;
   -webkit-box-pack: justify;
   justify-content: space-between;
   padding: 20px;
}

.reviewbtn1 {
   min-height: 2.25rem;
   font-size: 0.875rem;
   width: 160px;
   margin: 5px 0px;
}

.reviewbtn2 {
   display: inline-flex;
   -webkit-box-pack: center;
   justify-content: center;
   -webkit-box-align: center;
   align-items: center;
   padding-left: 12px;
   padding-right: 12px;
   user-select: none;
   cursor: pointer;
   text-decoration: none;
   outline: none;
   appearance: none;
   height: 2.25rem;
   width: 100%;
   border-radius: 4px;
   color: rgb(52, 106, 255);
   background-color: rgb(255, 255, 255);
   border: 1px solid rgb(52, 106, 255);
   -webkit-tap-highlight-color: rgba(52, 106, 255, 0.1);
   font-size: 0.875rem;
}

.retunrbtn1 {
   min-height: 2.25rem;
   font-size: 0.875rem;
   width: 160px;
   margin: 4px 0px;
}

.retunrbtn2 {
   display: inline-flex;
   -webkit-box-pack: center;
   justify-content: center;
   -webkit-box-align: center;
   align-items: center;
   padding-left: 12px;
   padding-right: 12px;
   user-select: none;
   cursor: pointer;
   text-decoration: none;
   outline: none;
   appearance: none;
   height: 2.25rem;
   width: 100%;
   border-radius: 4px;
   color: rgb(17, 17, 17);
   background-color: rgb(255, 255, 255);
   border: 1px solid rgb(221, 221, 221);
   -webkit-tap-highlight-color: rgba(52, 106, 255, 0.1);
   font-size: 0.875rem;
}

.testff h1 {
   font-size: 20px;
}

.a1 {
   border-top: 2px solid rgb(51, 51, 51);
   border-bottom: 1px solid rgb(204, 204, 204);
   width: 100%;
   font-size: 0.75rem;
}

.a2 {
   display: table-caption;
   position: static;
   height: 0px;
   line-height: 0;
   overflow: hidden;
   font-size: 0px;
   width: 1px;
   text-indent: -9999px;
   text-align: left;
}

.b1 {
   border-spacing: 0px;
   border-collapse: collapse;
   color: rgb(85, 85, 85);
   border-bottom: 1px solid rgb(221, 221, 221);
}

.b2 {
   background-color: rgb(255, 255, 255);
}

.b3 {
   background-color: rgb(255, 255, 255);
   text-align: left;
   font-weight: inherit;
   font-size: 0.875rem;
   color: rgb(85, 85, 85);
   padding: 14px 0px 8px;
   vertical-align: top;
}

.b4 {
   background-color: rgb(245, 245, 245);
   text-align: left;
   font-weight: inherit;
   font-size: 0.875rem;
   color: inherit;
   padding: 14px 16px;
   vertical-align: top;
}

.b5 {
   font-weight: normal;
}

.b6 {
   float: left;
   display: flex;
}

.b7 {
   float: right;
   color: rgb(17, 17, 17);
}

.b8 {
   float: right;
   color: rgb(17, 17, 17);
}

.b9 {
   background-color: rgb(255, 255, 255);
   text-align: left;
   font-weight: inherit;
   font-size: 0.875rem;
   color: inherit;
   padding: 0px 0px 10px;
   vertical-align: top;
}

.b10 {
   float: left;
}

.b11 {
   color: rgb(85, 85, 85);
   font-weight: normal;
   line-height: 1.42857;
   margin-top: 0px;
}

.b12 {
   border-spacing: 0px;
   border-collapse: collapse;
   color: rgb(85, 85, 85);
   border-bottom: 0px;
}

.b13 {
   margin-top: 4px;
   line-height: 1.42857;
}

.b14 {
   float: right;
   color: rgb(17, 17, 17);
}

.b15 {
   margin-top: 4px;
   line-height: 26px;
}

.b16 {
   vertical-align: -1px;
   font-size: 18px;
   color: rgb(17, 17, 17);
}

.b17 {
   background-color: rgb(255, 255, 255);
   vertical-align: bottom;
   padding: 10px 0px;
   font-size: 0.875rem;
}

.b18 {
   background-color: rgb(245, 245, 245);
   vertical-align: bottom;
   padding: 10px 15px;
   font-size: 0.875rem;
}

.after {
   content: "";
   display: table;
   height: 0px;
   clear: both;
}

.c1 {
   width: 100%;
   margin-top: 35px;
   text-align: center;
}

.c2 {
   float: right;
}

.c3 {
   color: rgb(52, 106, 255);
   font-weight: bold;
   font-size: 0.875rem;
   line-height: 19px;
   padding: 8px 10px;
   cursor: pointer;
   display: inline-block;
   overflow: visible;
   text-align: center;
   height: 38px;
   border-radius: 4px;
   border: 1px solid rgb(52, 106, 255);
   background-color: rgb(255, 255, 255);
}

.c4 {
   color: rgb(52, 106, 255);
   font-weight: bold;
   font-size: 0.875rem;
   line-height: 19px;
   padding: 8px 10px;
   cursor: pointer;
   display: inline-block;
   overflow: visible;
   text-align: center;
   height: 38px;
   border-radius: 4px;
   border: 1px solid rgb(52, 106, 255);
   background-color: rgb(255, 255, 255);
}

.d1 {
   width: 830px;
   float: left;
}

.d2 {
   margin: 0px 0px 0px 30px;
   zoom: 1;
}

.my-review__modify__review {
   padding-bottom:30px;
   display: table;
   width: 100%;
   border-bottom: 1px solid #ddd;
}

.my-review__modify__field__title {
   display: table-cell;
   width: 115px;
   padding: 30px 0px;
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
.select-select {
    display: inline-block;
}
.quantity-select {
   display: list-item !important;
   width: 52px;
}
select {
    -webkit-appearance: none;
       -moz-appearance: none;
            appearance: none;
}
.option-price-part {
   float: right;
   font-size: 12px;
   line-height: 24px;
}
.unit-cost {
   float:left;
    color: #888;
    vertical-align: top;
}
</style>
</head>



<%@ include file="include/header.jsp"%>
<body>
 <section class="cat_product_area section_padding">
 
    <div class="container">
       <div class="row"> 
<%@ include file="include/mypage_left_column.jsp"%>
   <div class="d1">
      <div class="d2 " style="padding-top: 50px;">
         <div class="l_w_title" style="float: left;">
            <h2>반품/교환 신청</h2>
            <br>
            <div style="float: right;" class="testbox3"> ${returnForm.buydate}/ 주문번호 ${returnForm.buynum}
               </div>
            <br>
         </div>
         <div
            class="product_top_bar d-flex justify-content-between align-items-center"
            style="border-bottom: 1px solid rgba(238, 238, 238); padding-bottom: 20px;">
         </div>

         <div style="padding-top: 40px;">
            <div class="testbox6">
               <table>
                  <tbody class="testtbody">
                     <tr class="testtr">
                        <td class="testtd">
                           <div class="testdiv1">
                              <div class="testdiv2">
                                 <span style="font-size: 1.25rem" class="testfont">배송상태</span>
                                 <span style="size: 4" class="test_dv2"> <span
                                    style="size: 4" class="test_dv"> </span></span> <span
                                    class="fontsize dv_date">${returnForm.deliverycom} <a
                                    style="color: black;">${returnForm.sta}</a></span>
                              </div>
                           </div>
                              <div style="display: block;">
                           <div class="testbox8" style="height: 150px">
                              <div class="testimg">
                                 <a class="testimg2 testimg3" 
                                  href="itemdetail?itemnum=${returnForm.dv_order_itemDTO.cartDTO.itemnum}"                                
                                 target="_blank"> <img
                                 src="${returnForm.dv_order_itemDTO.cartDTO.imgDTO.url}${returnForm.dv_order_itemDTO.cartDTO.imgDTO.imgname}" >
                                 </a>
                              </div>
                              <div class="testbox9">
                                 <div class="testbox10" style="padding-top: 20px; padding-left:20px;">
                                    <span class="testbox11" style="width: 50px;">${returnForm.dv_order_itemDTO.cartDTO.itemDTO.itemname}</span>
                                    <p class="text-xs text-gray-600 dark:text-gray-400">
                                                   옵션: ${returnForm.color}/${returnForm.size} <br>   </p>
                                    <div>
                                       <div class="testbox13" style="padding-top: 35px;">
                                          <span class="testbox14"style="width:100px; "><fmt:formatNumber value="${returnForm.dv_order_itemDTO.cartDTO.itemDTO.itempay*returnForm.dv_order_itemDTO.cartDTO.itemcnt}" pattern="#,###"/> 원</span> <span
                                             class="testbox14"> <span class="testbox15">
                                          </span></span> <span class="testbox11" style="width:100px; "> ${returnForm.dv_order_itemDTO.cartDTO.itemcnt} 개 </span> <a
                                             class="ttest testbox12" style="padding-left:300px;"></a>
                                          <br>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        </td>
                     </tr>
                  </tbody>
               </table>
            </div>
            <div class="testbox7"></div>
         </div>
         <div class="testff" style="margin-top: 45px;">
            <h1>
               <span>받는사람 정보</span>
            </h1>

            <table class="a1">
               <caption class="a2">받는사람 정보</caption>
               <colgroup>
                  <col width="105">
                  <col>
                  <col width="100">
               </colgroup>
               <tbody style="font-size: 0.875rem">
                  <tr>
                     <th style="color: #555; padding: 14px 0px 4px;">받는사람</th>
                     <td style="color: #111111; padding: 14px 0px 4px;">${returnForm.dv_order_itemDTO.cartDTO.memberDTO.name}</td>
                     <td></td>
                  </tr>
                  <tr>
                     <th style="color: #555; padding: 14px 0px 4px;">연락처</th>
                     <td style="color: #111111; padding: 14px 0px 4px;">${returnForm.dv_order_itemDTO.cartDTO.memberDTO.tel}</td>
                     <td></td>
                  </tr>
                  <tr>
                     <th style="color: #555; padding: 14px 0px 4px;">받는주소</th>
                     <td style="color: #111111; padding: 14px 0px 4px;">                        
                                ${returnForm.addressDTO.delpostcode}<br>                             
                                ${returnForm.addressDTO.delroadaddr} &nbsp;
                                ${returnForm.addressDTO.deldetailaddr}&nbsp;                                                          
                             </td>
                     <td></td>
                  </tr>                  
               </tbody>
            </table>
            <div class="testff" style="margin-top: 45px;">
               <h1>
                  <span>결제 정보</span>
               </h1>
               <table class="a1">
                  <caption class="a2">결제 정보</caption>
                  <colgroup>
                     <col>
                     <col width="340">
                  </colgroup>
                  <tbody class="b1">
                     <tr class="b2">
                        <th style="font-size: 0.875rem; color: #555555;" class=" b3">결제수단</th>
                        <th style="font-size: 0.875rem;" rowspan="2" class="b4">
                           <div class=" b5">
                              <div class=" b6">총 상품가격</div>
                              <div style="color: #111111" class="b7">
                                 <strong><fmt:formatNumber value="${returnForm.dv_order_itemDTO.cartDTO.itemDTO.itempay*returnForm.dv_order_itemDTO.cartDTO.itemcnt}" pattern="#,###"/> 원</strong>
                              </div>
                              <div class="after"></div>
                           </div>
                           <div class=" b5">
                              <div class=" b6">배송비</div>
                              <div style="color: #111" class=" b8">
                                 <span>0 원</span>
                              </div>
                           </div>
                        </th>
                     </tr>
                     <tr class="b2">
                        <th style="font-size: 0.875rem" class=" b9"><div
                              style="font-size: 1rem; color: #111" class=" b11">${returnForm.pay}</div></th>
                     </tr>
                  </tbody>
                  <tbody class=" b12">
                     <tr class=" b2">
                        <td style="font-size: 0.875rem" class=" b17"></td>
                        <td style="font-size: 0.875rem" class=" b18"><div
                              class=" b13">
                              <div class=" b10">${returnForm.pay}</div>
                              <div class=" b14">
                                 <strong><fmt:formatNumber value="${returnForm.dv_order_itemDTO.cartDTO.itemDTO.itempay*returnForm.dv_order_itemDTO.cartDTO.itemcnt}" pattern="#,###"/> 원</strong>
                              </div>
                              <div class="after"></div>
                           </div>
                           <div class=" b15">
                              <div style="color: #111" class=" b10">
                                 <strong>총 결제금액 </strong>
                              </div>
                              <div class="b14 b16">
                                 <strong><fmt:formatNumber value="${returnForm.dv_order_itemDTO.cartDTO.itemDTO.itempay*returnForm.dv_order_itemDTO.cartDTO.itemcnt}" pattern="#,###"/> 원</strong>
                              </div>
                           </div></td>
                     </tr>
                  </tbody>
               </table>
            </div>
            <form action ="${contextPath}/board/returninsert" method="POST" id="insertForm">
            <div class="my-review__modify__review">
            <input type="hidden" value="${returnForm.buynum}" id="buynum" name="buynum" />
            <input type="hidden" value="${returnForm.dv_order_itemDTO.dv_itemno}" id="dv_itemno" name="dv_itemno" /> 
               <div class="my-review__modify__field__title">교환
                  / 반품 사유
               <div class="option-price-part" style="float: left; padding-top: 20px;">신청타입<br>
               <input type="radio" name="type" value="1" checked>&nbsp;반품<br>
               <input type="radio" name="type" value="2">&nbsp;교환
                  </div></div>
               <div class="my-review__modify__review__content">

                  <div class="my-review__modify__review__content__text-wrap">
                     <textarea class="my-review__modify__review__content__text-area"
                        rows="5" id="returncontent" name="returncontent" placeholder="사유를 적어주세요."></textarea>

                  </div>
               </div>
            </div>
            <div class="c1">
               <div class="b10">
                  <a type="button" class="c3"
                     href="${contextPath}/board/myorderlist"> 주문목록 돌아가기 </a>
               </div>
               <div class="c2">
                  <button type="submit" id="re" name="re" class="c4" >교환 / 반품 신청</button>
               </div>
            </div>
            </form>
         </div>
      </div>
   </div>







   <!-- col-lg-10 끝 -->
   </div>
   </div>




   <!-- 레프트컬럼 끝 -->

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