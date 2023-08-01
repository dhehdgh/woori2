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
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>

</script>

<c:if test="${param.error == 'true'}">
	<script>
		alert("일치하는 정보가 없습니다.");
	</script>
</c:if>


<%@ include file="include/header.jsp"%>
<body>
 <section class="cat_product_area section_padding">
 
  <div class="container">
    <div class="row"> 
		<%@ include file="include/mypage_left_column.jsp"%>
 
     <div class="card-body"> 
    	 <div style="width:1000px; word-break:break-all"> 
	    	<h4 
	            class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300"
	         >
	         아이디 찾기
	         </h4>	       	         
		</div>      
		   	
             	<div style="margin-top: 20px;padding: 20px;border: 1px solid #dae5eb;background-color: #e9f4fa;text-align:center">
		            <p class="secession-validate-user-msg">
		                <strong>해당 이메일로 가입된 아이디는</strong>
		            </p>
		           	
		            <label>		    
						   		${member.id} 입니다.
		            </label>            		            
				</div>
				<div style="float: right;margin-right: 45%;margin-top: 10px">
				        				<a type="button"
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
					    						href="${contextPath}/board/loginForm">확인
					                          </a>       		 
        		
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