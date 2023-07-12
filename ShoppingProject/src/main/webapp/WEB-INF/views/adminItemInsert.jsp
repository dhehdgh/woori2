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
	        <div class="row">
	        	<div class="col-lg-6">
	      			<div class="billing_details">
	            	<h3>상품 상세정보</h3>
		            	<form class="row contact_form" action="${contextPath}/board/adminItemInsert" method="post">
				            <div class="col-md-2 form-group p_star">
				              	<label for="itemname" class="col-form-label">상품명</label>
				            </div>
				            <div class="col-md-10 form-group p_star">
				              	<input type="text" class="form-control" id="itemname" name="itemname">
				            </div>
		              		<div class="col-md-2 form-group p_star">
				            	<label for="itempay" class="col-form-label">가격</label>
				            </div>
				        	<div class="col-md-10 form-group p_star">
				            	<input type="text" class="form-control" id="itempay" name="itempay">
				            </div>
		              		<div class="col-md-2 form-group p_star">
				            	<label for="itemb" class="col-form-label">대분류</label>
				            </div>
			              	<div class="col-md-10 form-group p_star">
			                	<input type="text" class="form-control" id="itemb" name="itemb">
			              	</div>
		              		<div class="col-md-2 form-group p_star">
				            	<label for="items" class="col-form-label">소분류</label>
				            </div>
			              	<div class="col-md-10 form-group p_star">
			                	<input type="text" class="form-control" id="items" name="items">
			              	</div>
		              		<div class="col-md-2 form-group p_star">
				            	<label for="itemcontent" class="col-form-label">상품설명</label>
				            </div>
			              	<div class="col-md-10 form-group p_star">
			                	<textarea class="form-control" id="itemcontent" name="itemcontent"></textarea>
			              	</div>
							<div class="row mt-5">
					        	<div class="col-md-12 form-group">
					              	<button type="submit" class="btn btn-primary">상품 추가</button>
					              	<a href="adminItem" class="btn btn-secondary">취소</a>
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