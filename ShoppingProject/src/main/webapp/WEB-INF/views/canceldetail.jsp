<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$(function() {
   $(".email_icon newsletter-submit button-contactForm").click(function(){
        location.href="myreturnlist";
   });
});
</script>

<%@ include file="include/header.jsp"%>
<body>
 <section class="cat_product_area section_padding">
 
  <div class="container">
    <div class="row"> 
<%@ include file="include/mypage_left_column.jsp"%>
 
     <div class="card-body">  
       <h4 
            class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300"
         >
         교환/반품/취소 관리 - ${returndetail.typename}상품
         </h4>
             - 취소/반품/교환 신청한 내역을 확인할 수 있습니다.<br>
         - 하단 상품목록에 없는 상품은 1:1문의 또는 고객센터로 문의주세요.<br><br>
                      
        
           <input type="hidden" value="${returndetail.returnnum}" id="returnnum" name="returnnum" />           
            <div class="w-full overflow-hidden rounded-lg shadow-xs">            
                <div class="w-full whitespace-no-wrap">               
                   <table class="w-full whitespace-no-wrap">                 
                       <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800"
                       >
                         <th width="487" class="px-4 py-3" style="text-align:center">상품</th>
                         <th class="px-4 py-3" style="text-align:center">금액</th>
                         <th class="px-4 py-3" style="text-align:center">수량</th>
                         <th class="px-4 py-3" style="text-align:center">진행상태</th>                   
                       </tr>                                                        
                   <tbody>
                      
                       <td>
                          
                          <h1 style="font-size:28px;text-align:center">${returndetail.dv_order_itemDTO.cartDTO.itemDTO.itemname}</h1>
                            <h6 style="color:gray;text-align:center">
                            옵션: ${returndetail.color} / ${returndetail.size}</h6>                           
                           
                       </td>
                       <td>
                          
                             <h2 style="font-size:15px;text-align:center"> ${returndetail.dv_order_itemDTO.cartDTO.itemDTO.itempay} 원 </h2>                                                       
                       </td>
                       <td>                                                      
                              <h2 style="font-size:15px;text-align:center">${returndetail.dv_order_itemDTO.cartDTO.itemcnt} 개</h2>   
                       </td>
                       <td>
                          <div class ="px-4 py-3">
                            <h2 style="font-size:20px;color:#0056b3;text-align:center">${returndetail.typename} ${returndetail.sta}<br></h2>
                            <h6  style="color:#0056b3;text-align:center"> < ${returndetail.recomdate} > </h6>
                            </div>
                       </td>
                     
                     </tbody>
                   </table>
                    <br><br>
                         <div class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:text-gray-400 dark:bg-gray-800">
                         <h6 class="px-4 py-3"> ${returndetail.typename} 상세 정보</h6>                 
                       </div>
                   <table class="w-full whitespace-no-wrap">                 
                       <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800"
                       >
                       <th class="px-4 py-3" style="text-align:center">${returndetail.typename}접수번호</th>                         
                       <th class="px-4 py-3" style="text-align:center">주문일</th>
                       <th class="px-4 py-3" style="text-align:center">${returndetail.typename}접수일</th> 
                        <th class="px-4 py-3" style="text-align:center">${returndetail.typename}사유</th>                     
                       <th class="px-4 py-3" style="text-align:center">${returndetail.typename}완료일</th>                   
                       </tr>                                                        
                   <tbody class="border-b">
                          <td>                          
                             <h2 style="text-align:center"> ${returndetail.returnnum} </h2>                             
                       </td>
                       <td>                          
                          <h1 style="text-align:center">${returndetail.dv_orderDTO.buydate}</h1>                                                                              
                       </td>
                       <td>                          
                          <h1 style="text-align:center">${returndetail.returndate}</h1>                                                                              
                       </td>
                      <td>                          
                          <h1 style="text-align:center">${returndetail.returncontent}</h1>                                                                              
                       </td>
                       <td>
                          <div class ="px-4 py-3">                            
                            <h6  style="color:#0056b3;text-align:center">${returndetail.recomdate} </h6>
                            </div>
                       </td>
                     
                     </tbody>
                   </table>
                   <br><br>                        
                   <div class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:text-gray-400 dark:bg-gray-800">
                         <h6 class="px-4 py-3"> 환불 안내 </h6>                 
                       </div>
                
                   <table class="w-full whitespace-no-wrap">                 
                       <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800"
                       >
                       <th class="px-4 py-3" style="text-align:center">${returndetail.typename}상품금액</th>   
                       <th class="px-4 py-3" style="text-align:center">${returndetail.typename}상품수량</th>                         
                       <th class="px-4 py-3" style="text-align:center">환불수단</th>
                       <th class="px-4 py-3" style="text-align:center;color:red">환불최종금액</th>                                                           
                       </tr>                                                        
                   <tbody>
                          <td>                          
                             <h2 style="text-align:center"> ${returndetail.dv_order_itemDTO.cartDTO.itemDTO.itempay} </h2>                             
                       </td>
                        <td>                          
                          <h1 style="text-align:center">${returndetail.dv_order_itemDTO.cartDTO.itemcnt}개</h1>                                                                              
                       </td>
                       <td>                          
                          <h1 style="text-align:center">${returndetail.pay}</h1>                                                                              
                       </td>
                      <td>
                          <div class ="px-4 py-3" style="color:red;display: flex;justify-content: space-between">                            
                            <h6  style="color:#0056b3">
                             <c:set var="total" value="${total + (returndetail.dv_order_itemDTO.cartDTO.itemDTO.itempay *  returndetail.dv_order_itemDTO.cartDTO.itemcnt)}" />
                             상품 금액: </h6>
                             <h6  style="color:#0056b3;text-align:right"> 
                             ${total }원</h6>    
                          </div>   
                                    
                          <div class ="px-4 py-3" style="color:red;display: flex;justify-content: space-between">                            
                            <h6  style="color:red;text-align:left">                   
                                등급할인금액: </h6>
                            <h6  style="color:red;text-align:right">   
                            <input type="hidden" value="${returndetail.dv_orderDTO.payment}" />                                                                  
                             <c:set var="rasa" value="${rasa + 
                                                   (returndetail.dv_order_itemDTO.cartDTO.itemDTO.itempay *  returndetail.dv_order_itemDTO.cartDTO.itemcnt 
                                                   - returndetail.dv_orderDTO.payment - returndetail.dv_orderDTO.salevalue - returndetail.dv_orderDTO.pointvalue )      }" />
                             - ${rasa}원</h6>
                          </div>
                                   
                          <div class ="px-4 py-3" style="color:red;display: flex;justify-content: space-between">                            
                            <h6  style="color:red;text-align:left">                   
                                상품할인금액: </h6>
                            <h6  style="color:red;text-align:right">                   
                             - ${returndetail.dv_orderDTO.salevalue}원</h6>
                          </div>
                    
                       
                          <div class ="px-4 py-3" style="color:red;display: flex;justify-content: space-between">                            
                              <h6  style="color:red;text-align:left">                   
                                사용포인트: </h6>
                             <h6  style="color:red;text-align:right"> 
                             - ${returndetail.dv_orderDTO.pointvalue}P</h6>
                          </div><hr>
                                                
                          <div class ="px-4 py-3" style="color:#0056b3;display: flex;justify-content: space-between">
                              <h6  style="color:#0056b3;text-align:left">                   
                                환불최종금액: </h6>
                             <h6  style="color:#0056b3;text-align:right"> 
                             ${returndetail.dv_orderDTO.payment}원</h6>                                                    
                          </div>     
                       </td>                                                              
                     </tbody>
                   </table>                                                        
         </div>          
      </div>
      <br>
      <div style="float:right" class="sc-1uynrvc-3 jTMXGV">
      <svg width="14" height="14" focusable="false" viewBox="0 0 24 24" aria-hidden="true" role="presentation" style="display: inline">
      <path fill="" d="M12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10zm1-7.5l.417-9.167h-2.834L11 14.5h2zm-.92 1.667c-.372 0-.673.119-.902.356a1.24 1.24 0 0 0-.345.898c0 .36.115.658.345.893.23.235.53.353.902.353.376 0 .68-.118.909-.353.23-.235.344-.533.344-.893 0-.366-.114-.667-.344-.902-.23-.235-.533-.352-.91-.352z"></path>
      </svg>카드환불인 경우 카드사로 결제 취소 요청이 전달된 후 환불까지 평일 기준 3~7일이 소요됩니다.
      </div><br><br>
      <div style="text-align:center;disply:block">
      <button  style="background-color:#ff3368;float:center" id="list" name="list" class="email_icon newsletter-submit button-contactForm" onclick='location.href="myreturnlist";'>목록</button>
     </div>
    </div>
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