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
	<section class="checkout_area padding_top">
	    <div class="container">  
	      <div class="billing_details">
	        <h3>교환 상세정보</h3>
	        <div class="row justify-content-center">
	          <div class="col-lg-8">
	            	<form class="row contact_form" action="${contextPath}/board/adminExchangeDetail" method="post">
		            	<div class="col-md-2 form-group p_star">
			              <label for="returnnum" class="col-form-label">교환번호</label>
			            </div>  
		              	<div class="col-md-10 form-group p_star">
			              <input type="text" class="form-control" id="returnnum" name="returnnum" value="${ex.returnnum}" readonly>
			            </div>
			            <div class="col-md-2 form-group p_star">
			              <label for="buynum" class="col-form-label">주문번호</label>
			            </div>
			            <div class="col-md-10 form-group p_star">
			              <input type="text" class="form-control" id="buynum" name="buynum" value="${ex.buynum}" readonly>
			            </div>
			            <div class="col-md-2 form-group p_star">
			              <label for="cartno" class="col-form-label">장바구니번호</label>
			            </div>
			            <div class="col-md-10 form-group p_star">
			              <input type="text" class="form-control" id="cartno" name="cartno" value="${ex.orderDTO.cartno}" readonly>
			            </div>
			            <div class="col-md-2 form-group p_star">
			              <label for="addrnum" class="col-form-label">배송지</label>
			            </div>
			            <div class="col-md-10 form-group p_star">
			              <input type="text" class="form-control" id="addrnum" name="addrnum" value="${ex.orderDTO.addrnum}" readonly>
			            </div>
			            <div class="col-md-2 form-group p_star">
			              <label for="paymethod" class="col-form-label">결제방식</label>
			            </div>
			            <div class="col-md-10 form-group p_star">
			              <input type="text" class="form-control" id="paymethod" name="paymethod" value="${ex.orderDTO.paymethod}" readonly>
			            </div>
			            <div class="col-md-2 form-group p_star">
			              <label for="payment" class="col-form-label">결제금액</label>
			            </div>
			            <div class="col-md-10 form-group p_star">
			              <input type="text" class="form-control" id="payment" name="payment" value="${ex.orderDTO.payment}" readonly>
			            </div>
			            <div class="col-md-2 form-group p_star">
			              <label for="buydate" class="col-form-label">주문날짜</label>
			            </div>
			            <div class="col-md-10 form-group p_star">
			              <input type="text" class="form-control" id="buydate" name="buydate" value="${ex.orderDTO.buydate}" readonly>
			            </div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="returncontent" class="col-form-label">교환사유</label>
			            </div>
			        	<div class="col-md-10 form-group p_star">
			            	<input type="text" class="form-control" id="returncontent" name="returncontent" value="${ex.returncontent}" readonly>
			            </div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="returndate" class="col-form-label">교환신청일</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="returndate" name="returndate" value="${ex.returndate}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="recomdate" class="col-form-label">교환처리일</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="recomdate" name="recomdate" value="${ex.recomdate}" readonly>
		              	</div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="hidden" class="form-control" id="state" name="state" value="${ex.state}" readonly>
		              	</div>
			            <div class="col-md-12 form-group text-center">
				            <div class="d-inline-block mx-1">
						        <button type="submit" class="btn btn-primary">교환처리</button>
						    </div>
						    <div class="d-inline-block">
						        <a href="adminReturn" class="btn btn-secondary">취소</a>
						    </div>
				    	</div>
	          		</form>
	          	</div>
	        </div>
	      </div>
	    </div>
  	</section>
    <!-- 끝 -->

    <!--::footer_part start::-->
	<%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
	<%@ include file="include/javascript.jsp" %>
    <%@ include file="include/style.jsp" %>
</body>

</html>