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
	          		<div class="col">
			       		<h3>문의사항</h3>
			    		<div class="comments-area">
				       		<div class="comment-list">
					          	<div class="single-comment justify-content-between d-flex">
					             	<div class="user justify-content-between d-flex">
					                	<div class="desc">
				                   			<div class="d-flex justify-content-between">
					                      		<div class="d-flex align-items-center">
					                         		<h5>
					                            		<a href="${contextPath}/board/adminMemberDetail?membernum=${adminHelp.membernum}">${adminHelp.membernum}</a>
					                         		</h5>
					                         		<p class="date">${adminHelp.hdate}</p>
					                      		</div>
					                   		</div>
					                   		<p class="comment">
							                     ${adminHelp.content}
							                </p>
					                	</div>
					             	</div>
					          	</div>
					          			
				       		</div>
				       		<div class="comment-list">
					          	<div class="single-comment justify-content-between d-flex">
					             	<div class="user justify-content-between d-flex">
					                	<div class="desc">
				                   			<div class="d-flex justify-content-between">
					                      		<div class="d-flex align-items-center">
					                         		<h5>
					                            		<p>관리자</p>
					                         		</h5>
					                         		<p class="date">${adminHelp.rehdate}</p>
					                      		</div>
					                   		</div>
					                   		<p class="comment">
							                     ${adminHelp.recomment}
							                </p>
					                	</div>
			                		</div>
			                	</div>
		                	</div>
			    		</div>
					    <div class="comment-form">
					       	<h4>답변</h4>
					       	<form class="form-contact comment_form" action="#" id="commentForm">
					          	<div class="row">
					             	<div class="col-12">
					                	<div class="form-group">
					                   		<textarea class="form-control w-100" name="comment" id="comment" cols="30" rows="9"
					                      		placeholder="Write Comment"></textarea>
					                	</div>
					             	</div>
					          	</div>
					          	<div class="form-group mt-3">
					             	<a href="#" class="btn_3 button-contactForm">Send Message</a>
				          		</div>
				       		</form>
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
</body>

</html>