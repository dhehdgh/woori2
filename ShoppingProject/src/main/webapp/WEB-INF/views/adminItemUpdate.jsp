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
	        <div class="row justify-content-center">
	          <div class="col-lg-8">
	            <h3>상품 상세정보</h3>
	            	<form class="row contact_form" action="${contextPath}/board/adminItemUpdate" method="post">
		            	<div class="col-md-2 form-group p_star">
			              <label for="itemnum" class="col-form-label">상품번호</label>
			            </div>  
		              	<div class="col-md-10 form-group p_star">
			              <input type="text" class="form-control" id="itemnum" name="itemnum" value="${item.itemnum}" readonly>
			            </div>
			            <div class="col-md-2 form-group p_star">
			              <label for="itemname" class="col-form-label">상품명</label>
			            </div>
			            <div class="col-md-10 form-group p_star">
			              <input type="text" class="form-control" id="itemname" name="itemname" value="${item.itemname}">
			            </div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="itempay" class="col-form-label">가격</label>
			            </div>
			        	<div class="col-md-10 form-group p_star">
			            	<input type="text" class="form-control" id="itempay" name="itempay" value="${item.itempay}">
			            </div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="itembuycnt" class="col-form-label">판매량</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="itembuycnt" name="itembuycnt" value="${item.itembuycnt}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="itemdate" class="col-form-label">상품등록일</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="itemdate" name="itemdate" value="${item.itemdate}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="itemb" class="col-form-label">대분류</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="itemb" name="itemb" value="${item.itemb}">
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="items" class="col-form-label">소분류</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="items" name="items" value="${item.items}">
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="itemcontent" class="col-form-label">상품설명</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<textarea class="form-control" id="itemcontent" name="itemcontent">${item.itemcontent}</textarea>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="rstar" class="col-form-label">평점</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="rstar" name="rstar" value="${item.rstar}" readonly>
		              	</div>
			            <div class="col-md-12 text-center">
			              <button class="btn btn-primary" type="submit">상품정보 수정</button>
			              <a href="javascript:history.back()" class="btn btn-secondary">취소</a>
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