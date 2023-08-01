<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<c:if test="${user == ''}">
	<script>
		alert("로그인 후 이용하실 수 있습니다.");
		location.href="${contextPath}/board/loginForm";
	</script>
</c:if>

<script>
function returndelete(returnnum){
	 var answer=confirm("취소하시겠습니까?");
     if(answer){
         var url = 'returndelete.returnnum?returnnum=' + returnnum.value;
             window.open(url, "_self",  '');
     }
}


$(function(){
    
    $("input:button[name='button']").on('click',function(){
        var kind = $(this).val();       //버튼이 클릭 되었을 시, 개별 버튼의 값이 kind 변수에 담겨집니다.
        var url = "${pageContext.request.contextPath}/board/myreturnlist";       
    	$("#kindInput").val(kind);
       dateForm.submit();
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
         교환/반품/취소 관리
         </h4>
          	- 취소/반품/교환 신청한 내역을 확인할 수 있습니다.<br>
			- 하단 상품목록에 없는 상품은 1:1문의 또는 고객센터로 문의주세요.<br><br>
			
			<div
			class="product_top_bar d-flex justify-content-between align-items-center" style="border-bottom: 1px solid rgba(238,238,238); padding-bottom:20px;">
			<form action="${contextPath}/board/myreturnlist" method="POST" id="dateForm">
			<div class="button-group-area mt-20" style="padding-left: 20px;">
			<input type="hidden" name="kind" id="kindInput">
				<input type="button" value="6개월" id="button" name="button" class="genric-btn info circle small" /> 
				<input type="button" value="2023" id="button" name="button" class="genric-btn info-border circle small" />  
				<input type="button" value="2022" id="button" name="button" class="genric-btn info-border circle small" /> 
				<input type="button" value="2021" id="button" name="button" class="genric-btn info-border circle small" /> 
				<input type="button" value="2020" id="button" name="button" class="genric-btn info-border circle small" /> 
			</div>
			</form>
			<div class="input-group" style="width: 350px;">
				<form  style="margin:5%" action="${contextPath}/board/myreturnlist" method="GET" >
					<select class="" name="searchtype" id="searchtype" >
				      	<option value="1">반품</option>
				        <option value="2">교환</option>
				        <option value="3">취소</option>				         
				  	</select>
					<input type="text" class="form-control" placeholder="상품이름 검색" name="keyword" id="keyword" value="${keyword}"
						aria-describedby="inputGroupPrepend" style="display:inline-block;width:268px">
					<div class="input-group-prepend" style="display:inline-block">
						<button  style="height:39px" type="submit" class="input-group-text" id="inputGroupPrepend"><i
							class="ti-search"  ></i></button>
					</div>
				</form> 
			</div>
		</div>		
					  	 	 	
        <c:forEach var="returnlist" items="${returnlist}" varStatus="status">
        	<input type="hidden" value="${returnlist.returnnum}" id=returnnum${status.index} name=returnnum${status.index} />          		
            <div class="w-full overflow-hidden rounded-lg shadow-xs">            
                <div class="w-full whitespace-no-wrap">
                <div>
                    <div
                      class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800"
                    >
                      <h6 class="px-4 py-3">
                      ${returnlist.typename} 접수일: ${returnlist.returndate} &nbsp; /&nbsp;
                      접수번호: ${returnlist.returnnum} &nbsp; /&nbsp;
                      주문번호: ${returnlist.buynum}<br>       
                      	<span style="float:right;margin-top:-1rem" >  
                            
                      		<c:set var="name" value="${returnlist.type}" />
                      		<c:choose>
	                      		<c:when test="${name == 1}">    
		                          <a  href="returndetail?returnnum=${returnlist.returnnum}" style="color:#0073e9">상세보기</a>   
		                         </c:when>
		                         <c:when test="${name == 3}">    
		                          <a  href="canceldetail?returnnum=${returnlist.returnnum}" style="color:#0073e9">상세보기</a>   
		                         </c:when>
		                         <c:when test="${name == 2}">    
		                          <a  href="returndetail?returnnum=${returnlist.returnnum}" style="color:#0073e9">상세보기</a>   
		                         </c:when>
		                         <c:otherwise>    
		                          alert("실패")
		                         </c:otherwise>
	                         </c:choose>
                         </span>                             
                      </h6>                 
                    </div>
                  </div>
                  <div class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
                    <div class="text-gray-700 dark:text-gray-400">
                      <div class="px-4 py-3">
                      	<div  class="flex items-center text-sm">
                          <!-- Avatar with inset shadow -->
	                          <div>    
	                             <a href="itemdetail?itemnum=${returnlist.dv_order_itemDTO.cartDTO.itemnum}">            	
	                            <img  style="max-width: 150px"  
	                              src="${returnlist.dv_order_itemDTO.cartDTO.imgDTO.url}${returnlist.dv_order_itemDTO.cartDTO.imgDTO.imgname}"
	                              alt=""
	                              loading="lazy"
	                            /></a>
	                       
	                          </div>
	                          <div style="padding:50px;width: calc(100% - 300px)">
	                            <p class="font-semibold"><a href="itemdetail?itemnum=${returnlist.dv_order_itemDTO.cartDTO.itemnum}">${returnlist.dv_order_itemDTO.cartDTO.itemDTO.itemname}</a></p>
	                            <p class="text-xs text-gray-600 dark:text-gray-400">
	                              옵션: ${returnlist.color}/${returnlist.size} <br>
	                              <span class="font-semibold">
	                              ${returnlist.dv_order_itemDTO.cartDTO.itemcnt} 개
	                              </span>
	                            </p>
	                          </div>
	                          <div style="float:right;align:center">
	                           <span class="items-center text-sm" style="float:right;margin-top:5rem;width: 136px;
							    padding: 5px 3px 3px" >  
	                           <h2 style="font-size:20px;color:#0073e9;margin-bottom: 7px">${returnlist.typename} ${returnlist.sta}</h2>
	                           
	                            <h2> ${returnlist.dv_order_itemDTO.cartDTO.itemDTO.itempay} 원 / ${returnlist.pay}</h2>
	                            
	                            <button id="cart" name="cart" class="btn-cart" 
	                          	style="    
	                          	margin-top: 6px;
	                          	width: 116px;
							    padding: 5px 3px 3px;
							    font-size: 12px;
							    letter-spacing: -1px;
							    border: 1px solid #ccc;
							    border-radius: 2px;
							    color: #0073e9;
							    text-align: center;
							    background: #fff;
							    cursor: pointer;
							    border: 1px solid #346AFF;
							    position: relative"
	    						value=""
	    						 onclick="returndelete(returnnum${status.index})">취소
	                          </button> <br><br>                                                                              
	                            </span>
	                          </div>
                          </div>		
             		 </div>    
            		</div>                    
              	 </div>
              </div>            
			</div>
        </c:forEach> 
<!-- 페이징 처리 -->
<div class="pagination">
    <c:choose>
        <c:when test="${currentPage > 1}">
            <a href="${contextPath}/board/myreturnlist?page=${currentPage - 1}&pageSize=${pageSize}&keyword=${keyword}&searchtype=${searchtype}&kind=${kind}">&laquo; 이전</a>
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
                <a href="${contextPath}/board/myreturnlist?page=${pageNum}&pageSize=${pageSize}&keyword=${keyword}&searchtype=${searchtype}&kind=${kind}">${pageNum}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    <c:choose>
        <c:when test="${currentPage < totalPages}">
            <a href="${contextPath}/board/myreturnlist?page=${currentPage + 1}&pageSize=${pageSize}&keyword=${keyword}&searchtype=${searchtype}&kind=${kind}">다음 &raquo;</a>
        </c:when>
        <c:otherwise>
            <span class="disabled">다음 &raquo;</span>
        </c:otherwise>
    </c:choose>
</div>
<!-- 페이징 처리 끝 -->	
      </div>
      
     </div>
   </div>
 </section>
 
<!-- 레프트컬럼 끝 -->
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
    <script src="${contextPath}/resources/bootstrap/js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="${contextPath}/resources/bootstrap/js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
    <!-- easing js -->
    <script src="${contextPath}/resources/bootstrap/js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="${contextPath}/resources/bootstrap/js/swiper.min.js"></script>
    <!-- swiper js -->
    <script src="${contextPath}/resources/bootstrap/js/masonry.pkgd.js"></script>
    <!-- particles js -->
    <script src="${contextPath}/resources/bootstrap/js/owl.carousel.min.js"></script>
 
    <!-- slick js -->
    <script src="${contextPath}/resources/bootstrap/js/slick.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/jquery.counterup.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/waypoints.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/contact.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/jquery.ajaxchimp.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/jquery.form.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/jquery.validate.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/mail-script.js"></script>
    <!-- custom js -->
    <script src="${contextPath}/resources/bootstrap/js/custom.js"></script>
<%@ include file="include/style.jsp"%>

</html>