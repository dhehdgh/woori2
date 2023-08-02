<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
   width: : 100%;
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
   width: 50%;
   height: 28px;
   font-size: 20px;
   font-weight: bold;
   font-stretch: normal;
   font-style: normal;
   line-height: 1.4;
   letter-spacing: -0.5px;
   color: rgb(17, 17, 17);
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

.testtable {
   border-collapse: collapse;
   border-spacing: 0;
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
   border-right: 1px solid rgb(238, 238, 238);
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
.tttt {
    color: rgb(136, 136, 136);
    font-size: 12px;
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
   width: 200px;
   height: 100%;
   text-align: center;
   border-left: 1px solid rgb(238, 238, 238);
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
   color: white;
   background-color: #ff3368;
   border: 1px solid #ff3368;
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
}.hxalxw {
    position: absolute;
}
.iNvfPT {
    position: absolute;
    top: -115px;
    right: -460px;
    width: 230px;
    height: 100px;
    border: 1px solid rgb(204, 204, 204);
    border-radius: 8px;
    background-color: rgb(255, 255, 255);
    display: flex;
    flex-direction: column;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    font-size: 0.875rem;
}
.bFFfRi {
    display: flex;
}
.gGhWUY {
    margin-left: 10px;
    cursor: pointer;
}
.leiHDW {
    margin-top: 10px;
}
.eydkkT {
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
    height: 1.75rem;
    border-radius: 4px;
    color: rgb(52, 106, 255);
    background-color: rgb(255, 255, 255);
    border: 1px solid rgb(52, 106, 255);
    -webkit-tap-highlight-color: rgba(52, 106, 255, 0.1);
    font-size: 0.75rem;
}
.eUWhvZ {
    position: absolute;
    top: 94px;
    width: 10px;
    height: 10px;
    border-bottom: 1px solid rgb(204, 204, 204);
    border-right: 1px solid rgb(204, 204, 204);
    background-color: rgb(255, 255, 255);
    transform: rotate(45deg);
}
</style>
</head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
$(function(){
    
    $("input:button[name='button']").on('click',function(){
        var kind = $(this).val();       //버튼이 클릭 되었을 시, 개별 버튼의 값이 kind 변수에 담겨집니다.
        var url = "${pageContext.request.contextPath}/board/myorderlist";       
       $("#kindInput").val(kind);
       dateForm.submit();
    });
    
}); 
</script>
<script type="text/javascript">
</script>

<%@ include file="include/header.jsp"%>
<body>
 <section class="cat_product_area section_padding">
 
  <div class="container">
    <div class="row"> 
<%@ include file="include/mypage_left_column.jsp"%>
   <div class="col-lg-10" style="padding-top: 50px;">
      <div class="l_w_title" style="float: left;">
         <h2>내주문목록</h2>
      </div>

      <div
         class="product_top_bar d-flex justify-content-between align-items-center"
         style="border-bottom: 1px solid rgba(238, 238, 238); padding-bottom: 20px;">
         <form action="${contextPath}/board/myorderlist" method="POST" id="dateForm">
         <div class="button-group-area mt-20" style="padding-left: 20px;">
         <input type="hidden" name="kind" id="kindInput">
            <input type="button" value="6개월" id="button" name="button" class="genric-btn info circle small" /> 
            <input type="button" value="2023" id="button" name="button" class="genric-btn info-border circle small" />  
            <input type="button" value="2022" id="button" name="button" class="genric-btn info-border circle small" /> 
            <input type="button" value="2021" id="button" name="button" class="genric-btn info-border circle small" /> 
            <input type="button" value="2020" id="button" name="button" class="genric-btn info-border circle small" /> 
         </div>
         </form>
         <form action="${contextPath}/board/myorderlist" method="GET" >
         <div class="input-group" style="width: 350px;">
            <input type="text" class="form-control" placeholder="상품이름 검색" name="keyword" id="keyword" value="${keyword}"
                  aria-describedby="inputGroupPrepend" style="display:inline-block;width:268px">
               <div class="input-group-prepend" style="display:inline-block">
                  <button  style="height:39px" type="submit" class="input-group-text" id="inputGroupPrepend"><i
                     class="ti-search"  ></i></button>
            </div>
         </div>
         </form>
      </div>

      <div style="padding-top: 40px; padding-left: 20px;">
      
         <c:forEach var="dv_orderlist" items="${dv_orderlist}" varStatus="status">
         <input type="hidden" value="${dv_orderlist.dv_order_itemDTO.dv_itemno}" />
         <input type="hidden" value="${dv_orderlist.dv_order_itemDTO.buynum}" />
            <div class="testbox">
               <div class="testbox2">
                  <div class="testbox3"> ${dv_orderlist.buydate}
                  </div>
                  <div class="testbox4">
                     <a type="button" class="testbox5"
                        href="${contextPath}/board/orderdetail?dv_itemno=${dv_orderlist.dv_order_itemDTO.dv_itemno}&buynum=${dv_orderlist.dv_order_itemDTO.buynum}">주문상세보기</a>
                  </div>
               </div>
               <div class="testbox6">
                  <table class="testtable">
                     <colgroup>
                        <col width="600">
                        <col width>
                     </colgroup>
                     <tbody class="testtbody">
                        <tr class="testtr">
                           <td class="testtd">
                              <div class="testdiv1">
                                 <div class="testdiv2">
                                    <span style="font-size: 1.25rem" class="testfont">${dv_orderlist.sta}</span>
                                    <span size="4" class="sc-13xhsmd-0 test_dv2"> <span
                                       size="4" class="sc-13xhsmd-1 test_dv"> </span></span> <span
                                       class="fontsize dv_date">${dv_orderlist.deliveryday} 
                                       <a style="color: black;">도착</a>
                                    </span>
                                 </div>
                              </div>
                              <div style="display: block;">
                                 <div class="testbox8" style="height: 150px">
                                    <div class="testimg">
                                       <a href="itemdetail?itemnum=${dv_orderlist.dv_order_itemDTO.cartDTO.itemnum}">               
                                        <img  style="max-width: 150px"  
                                          src="${dv_orderlist.dv_order_itemDTO.cartDTO.imgDTO.url}${dv_orderlist.dv_order_itemDTO.cartDTO.imgDTO.imgname}"
                                          alt=""
                                          loading="lazy"
                                        /></a>
                                    </div>
                                    <div class="testbox9">
                                       <div class="testbox10" style="padding-top: 20px;margin-left: 66px">
                                          <span class="testbox11">${dv_orderlist.dv_order_itemDTO.cartDTO.itemDTO.itemname}</span>
                                          <span class="tttt" style="padding-top: 10px;">옵션: ${dv_orderlist.color}/${dv_orderlist.size}</span>
                                          <div>
                                             <div class="testbox13" style="padding-top: 15px;">
                                                <span class="testbox14">${dv_orderlist.dv_order_itemDTO.cartDTO.itemcnt}개 <br><fmt:formatNumber value="${dv_orderlist.dv_order_itemDTO.cartDTO.itemcnt*dv_orderlist.dv_order_itemDTO.cartDTO.itemDTO.itempay}" pattern="#,###"/>원
                                                   </span> <span class="testbox14"> <span
                                                   class="testbox15"> </span></span> <span class="testbox11">
                                                     </span> <a class="ttest testbox12"
                                                   style="padding-left: 120px;"></a><form method="POST">
                                                   <input type="hidden" name="iv_itemnum" value="${dv_orderlist.dv_order_itemDTO.cartDTO.iv_itemnum}">
                                                  <input type="hidden" name="itemnum" value="${dv_orderlist.dv_order_itemDTO.cartDTO.itemnum}">
                                                <button class="testbtn testbtn2" id="cartinsert"
                                                 type="button" 
                                                 onclick="if(confirm('상품을 장바구니에 담겠습니까?')){
                								alert('장바구니 담기완료')
                								location.href='${contextPath}/board/orderlistcartinsert?itemnum=${dv_orderlist.dv_order_itemDTO.cartDTO.itemnum}&iv_itemnum=${dv_orderlist.dv_order_itemDTO.cartDTO.iv_itemnum}'
                								if(confirm('장바구니로 이동 하시겠습니까?')){
                								location.href='${contextPath}/board/cart'
                								}
                								return false;
                							} else {
                								alert('취소되었습니다')
                								return false;
                							}"
                                                 >장바구니 담기
                                                 
                                                 </button>
                                                 </form>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </td>
                           <td class="testtd2" style="width: 205px;">
                              <div class="testbox20">
                              <!-- 배송완료(1)고, 리뷰 안썼으면(1)// 반품신청 + 리뷰 작성-->
                              <!-- 배송완료(1) 구매미확정일경우 구매확정버튼추가 -->
                              <!-- 배송중(2)이면 // 반품신청 -->
                              <!-- 주문확인(3)이면 // 주문취소 신청 -->
                              <!-- 리뷰 썻으면(2) // 작성리뷰보기 -->
                              <!-- 구매확정(8) 교환/반품만 -->
                                 <c:choose>
                                    <c:when test="${dv_orderlist.state eq 1 && dv_orderlist.review eq 1}">
                                       <a type="button" class="retunrbtn1 retunrbtn2"
                                          href="${contextPath}/board/returnForm?dv_itemno=${dv_orderlist.dv_order_itemDTO.dv_itemno}&buynum=${dv_orderlist.dv_order_itemDTO.buynum}">교환/반품 신청</a>
                                       <button class="reviewbtn1 reviewbtn2"
                                          onclick="location.href='${contextPath}/board/reviewForm?buynum=${dv_orderlist.buynum}'">리뷰
                                          작성하기</button><button class="reviewbtn1 reviewbtn2"
                                          onclick="if(confirm('정말로 구매확정하시겠습니까?')){
                								alert('구매확정되었습니다.')
                								location.href='${contextPath}/board/buyok?buynum=${dv_orderlist.dv_order_itemDTO.buynum}'
                								return true;
                							} else {
                								alert('취소되었습니다.')
                								return false;
                							}">구매확정하기</button>
                                    </c:when>
                                    <c:when test="${dv_orderlist.state eq 1 && dv_orderlist.review eq 2}">
                                    <input type="hidden" name="buynum" id="buynum" value="${dv_orderlist.dv_order_itemDTO.buynum}">
                                       <a type="button" class="retunrbtn1 retunrbtn2"
                                          href="${contextPath}/board/returnForm?dv_itemno=${dv_orderlist.dv_order_itemDTO.dv_itemno}&buynum=${dv_orderlist.dv_order_itemDTO.buynum}">교환/반품 신청</a>
                                       <button class="reviewbtn1 reviewbtn2" 
                                          onclick="if(confirm('정말로 구매확정하시겠습니까?')){
              								alert('구매확정되었습니다.')
            								location.href='${contextPath}/board/buyok?buynum=${dv_orderlist.dv_order_itemDTO.buynum}'
            								return true;
            							} else {
            								alert('취소되었습니다.')
            								return false;
            							}">구매확정하기</button>
                                    </c:when>
                                    <c:when test="${dv_orderlist.state eq 8 && dv_orderlist.review eq 1}">
                                    	<input type="hidden" value="" id="reviewnum${status.index}" name="reviewnum${status.index}">
                                       <a type="button" class="retunrbtn1 retunrbtn2"
                                          href="${contextPath}/board/returnForm?dv_itemno=${dv_orderlist.dv_order_itemDTO.dv_itemno}&buynum=${dv_orderlist.dv_order_itemDTO.buynum}">교환/반품 신청</a>
                                       <button class="reviewbtn1 reviewbtn2"
                                          onclick="location.href='${contextPath}/board/reviewForm?buynum=${dv_orderlist.buynum}'">리뷰 작성하기</button>
                                          
                                    </c:when>
                                    <c:when test="${dv_orderlist.state eq 8 && dv_orderlist.review eq 2}">
                                       <a type="button" class="retunrbtn1 retunrbtn2"
                                          href="${contextPath}/board/returnForm?dv_itemno=${dv_orderlist.dv_order_itemDTO.dv_itemno}&buynum=${dv_orderlist.dv_order_itemDTO.buynum}">교환/반품 신청</a>
                                          <button class="reviewbtn1 reviewbtn2"
                                          onclick="location.href='${contextPath}/board/reviewdetail?reviewno=${dv_orderlist.reviewDTO.reviewno}'">작성 리뷰보기</button>
                                    </c:when>
                                    <c:when test="${dv_orderlist.state eq 2}">                                                               
                                       <a type="button" class="retunrbtn1 retunrbtn2"
                                          href="${contextPath}/board/returnForm?dv_itemno=${dv_orderlist.dv_order_itemDTO.dv_itemno}&buynum=${dv_orderlist.dv_order_itemDTO.buynum}">교환/반품 신청</a>
                                    </c:when>
                                    <c:when test="${dv_orderlist.state eq 3}">
                                       <a type="button" class="retunrbtn1 retunrbtn2"
                                          href="${contextPath}/board/cancelForm?dv_itemno=${dv_orderlist.dv_order_itemDTO.dv_itemno}&buynum=${dv_orderlist.dv_order_itemDTO.buynum}">주문취소 신청</a>
                                    </c:when>
                                    <c:when test="${dv_orderlist.state eq 4 or dv_orderlist.state eq 5
                                    or dv_orderlist.state eq 6 or dv_orderlist.state eq 7}">
                                    
                                       <a type="button" class="retunrbtn1 retunrbtn2"
                                          href="${contextPath}/board/myreturnlist">내역보러가기</a>
                                    </c:when>                 
                                    <c:otherwise>
                                    </c:otherwise>
                                 </c:choose>
                              </div>
                           </td>
                        </tr>
                     </tbody>
                  </table>
               </div>
               <div class="testbox7"></div>
            </div>
         </c:forEach>
<!-- 페이징 처리 -->
<div class="pagination">
    <c:choose>
        <c:when test="${currentPage > 1}">
            <a href="${contextPath}/board/myorderlist?page=${currentPage - 1}&pageSize=${pageSize}&keyword=${keyword}&kind=${kind}">&laquo; 이전</a>
        </c:when>
        <c:otherwise>
            <span class="disabled">&laquo; 이전</span>
        </c:otherwise>
    </c:choose>
    <c:forEach var="pageNum" begin="1" end="${totalPages}">
        <c:choose>
            <c:when test="${pageNum == currentPage}">
                <span class="active">${pageNum}</span>
            </c:when>
            <c:otherwise>
                <a href="${contextPath}/board/myorderlist?page=${pageNum}&pageSize=${pageSize}&keyword=${keyword}&kind=${kind}">${pageNum}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    <c:choose>
        <c:when test="${currentPage < totalPages}">
            <a href="${contextPath}/board/myorderlist?page=${currentPage + 1}&pageSize=${pageSize}&keyword=${keyword}&kind=${kind}">다음 &raquo;</a>
        </c:when>
        <c:otherwise>
            <span class="disabled">다음 &raquo;</span>
        </c:otherwise>
    </c:choose>
</div>
<!-- 페이징 처리 끝 -->   
      </div>
      <!-- col-lg-10 끝 -->
   </div>

      </div>
      
     </div>
 </section>
 
<style>
    /* 페이징 스타일 */
    .pagination {
        display: flex;
        justify-content: center;
        margin-top: 20px;
    }
    .pagination a,
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
   <!--::footer_part start::-->
   <%@ include file="include/footer.jsp"%>
   <!--::footer_part end::-->
</body>
<!-- jquery plugins here-->
<%@ include file="include/javascript.jsp"%>
<%@ include file="include/style.jsp"%>

</html>