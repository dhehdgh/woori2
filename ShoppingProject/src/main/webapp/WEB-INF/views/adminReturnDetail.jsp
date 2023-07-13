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
	        <h3>반품 상세정보</h3>
	        <div class="row justify-content-center">
	          <div class="col-lg-8">
	            	<form class="row contact_form" action="${contextPath}/board/adminReturnDetail" method="post">
		            	<div class="col-md-2 form-group p_star">
			              <label for="returnnum" class="col-form-label">반품번호</label>
			            </div>  
		              	<div class="col-md-10 form-group p_star">
			              <input type="text" class="form-control" id="returnnum" name="returnnum" value="${re.returnnum}" readonly>
			            </div>
			            <div class="col-md-2 form-group p_star">
			              <label for="buynum" class="col-form-label">주문번호</label>
			            </div>
			            <div class="col-md-10 form-group p_star">
			              <input type="text" class="form-control" id="buynum" name="buynum" value="${re.buynum}" readonly>
			            </div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="returncontent" class="col-form-label">반품사유</label>
			            </div>
			        	<div class="col-md-10 form-group p_star">
			            	<input type="text" class="form-control" id="returncontent" name="returncontent" value="${re.returncontent}" readonly>
			            </div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="returndate" class="col-form-label">반품신청일</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="returndate" name="returndate" value="${re.returndate}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="recomdate" class="col-form-label">반품완료일</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="recomdate" name="recomdate" value="${re.recomdate}" readonly>
		              	</div>
			            <div class="row">
				            <div class="col-md-12 form-group text-center">
				              <button type="submit" class="btn btn-primary" >반품처리</button>
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