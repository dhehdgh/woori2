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
	    	<div class="row mb-3 align-items-center">
		        <div class="col-6">
		            <h1 class="text-heading" style="font-size: 1.5rem;">신고리뷰 상세</h1>
		        </div>
		    </div>
	      <div class="billing_details">
	        <div class="row justify-content-center">
	          <div class="col-lg-8">
	            	<form class="row contact_form" action="${contextPath}/board/adminReviewDetail3" method="post" id="form">
		            	<div class="col-md-2 form-group p_star">
			              <label for="drnum" class="col-form-label">신고번호</label>
			            </div>  
		              	<div class="col-md-10 form-group p_star">
			              <input type="text" class="form-control" id="drnum" name="drnum" value="${detail.drnum}" readonly>
			            </div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="drdate" class="col-form-label">신고날짜</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="drdate" name="drdate" value="${detail.drdate}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="drcontent" class="col-form-label">신고내용</label>
			            </div>
			        	<div class="col-md-10 form-group p_star">
			        		<textarea class="form-control" id="drcontent" name="drcontent" readonly>${detail.drcontent}</textarea>
			            </div>
			            <div class="col-md-2 form-group p_star">
			              <label for="reviewno" class="col-form-label">리뷰번호</label>
			            </div>
			            <div class="col-md-10 form-group p_star">
			              <input type="text" class="form-control" id="reviewno" name="reviewno" value="${detail.reviewno}" readonly>
			            </div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="itemnum " class="col-form-label">상품번호</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="itemnum " name="itemnum " value="${detail.reviewDTO.itemnum }" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="membernum" class="col-form-label">회원번호</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="membernum" name="membernum" value="${detail.reviewDTO.membernum}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="rcontent" class="col-form-label">리뷰내용</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		              		<textarea class="form-control" id="rcontent" name="rcontent" readonly>${detail.reviewDTO.rcontent}</textarea>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="rdate" class="col-form-label">리뷰날짜</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="rdate" name="rdate" value="${detail.reviewDTO.rdate}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="reviewreport" class="col-form-label">리뷰신고</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="reviewreport" name="reviewreport" value="${detail.reviewDTO.reviewreport}" readonly>
		              	</div>
	              		<div class="col-md-2 form-group p_star">
			            	<label for="del" class="col-form-label">리뷰상태</label>
			            </div>
		              	<div class="col-md-10 form-group p_star">
		                	<input type="text" class="form-control" id="del" name="del" value="${detail.reviewDTO.del}" readonly>
		              	</div>
	          		</form>
		            <div class="row">
			            <div class="col-md-12 form-group text-center">
			              <button type="button" class="btn btn-primary">게시</button>
			              <button type="button" class="btn btn-danger">삭제</button>
			              <a href="adminReview" class="btn btn-info">목록으로</a>
			            </div>
			    	</div>
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
    <script type="text/javascript">
    	$(function(){
    		$(".btn-primary").click(function(){
    			
    			var url = "${pageContext.request.contextPath }/board/adminReviewDetail2";
    			var drnum = $("#drnum").val();
    			
    			 $.ajax({
 			    	url:   url,
 			        dataType: 'text',
 			       	data: { drnum: drnum },
 			        type: 'POST',
 			        success: function(result){
 			           console.log(result);
 			           console.log("성공");
 			           window.location.href = "${contextPath}/board/adminReviewDetail?drnum="+drnum
 			        },
 			        error: function(result){
 			           console.log(result);
 			           console.log("실패");
 			        }
 				});
    		});
    		$(".btn-danger").click(function(){
    			$("#form").submit();
    		});
    	});
    </script>
</body>

</html>