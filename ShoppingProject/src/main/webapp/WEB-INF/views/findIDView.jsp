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
$(function() {
	
	//이메일 직접입력
	$('#selectmail').change(function(){
		   $("#selectmail option:selected").each(function () {
				
				if($(this).val()== '1'){ //직접입력일 경우
					 $("#newmail2").val('');    //값 초기화
					 $("#newmail2").attr("disabled",false); //활성화
				}else{ //직접입력이 아닐경우
					 $("#newmail2").val($(this).text());    //선택값 입력
					 $("#newmail2").attr("disabled",true); //비활성화
				}
		   });
		});
	
	//이메일 validation check
	 $("#newmail,#newmail2,#selectmail").on("keyup change",function(){
		 var newmail = document.getElementById("newmail").value;
		 var newmail2 = document.getElementById("newmail2").value;
		 var selectmail = document.getElementById("selectmail").value;
		 var email = newmail +"@"+ newmail2;
		 $("#email").attr("value",newmail +"@"+ newmail2);
		 var regmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;		 
		 if(email.length == 0 ){
			 $("#mailmsg").text("");
		 }else if(regmail.test(email) != true){
			 $("#mailmsg").text("*유효하지 않은 형식입니다.");
			 mailmsg.style.color = "red";
		 }else{
			 $("#mailmsg").text("*올바른 형식입니다.");
			 mailmsg.style.color = "#00891a";
		 }
	 }); 
	
	//확인
		$("#emailcheck").click(function() {							
			 var newmail = document.getElementById("newmail").value;
			 var newmail2 = document.getElementById("newmail2").value;
			 var selectmail = document.getElementById("selectmail").value;		 	
			 $("#email").attr("value",newmail +"@"+ newmail2);			 
			 var email = document.getElementById("email").value;
			 var emailForm = document.getElementById("emailForm");
			 var regmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;		
			 //빈칸인지 체크
			if(newmail.length == 0 || newmail2.length == 0 || selectmail.length == 0){
				alert("이메일을 입력해주세요.");	
				return false;
			//validateion 체크
			}else if(regmail.test(email) != true){
				alert("이메일을 다시 확인해주세요.");
				return false;
			}else{
				emailForm.submit();	
				
			}	
		});
	
		
});	       
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
		 <form action="${contextPath}/board/findID" method="POST" id="emailForm">     	
             	<div style="margin-top: 20px;padding: 20px;border: 1px solid #dae5eb;background-color: #e9f4fa;text-align:center">
		            <p class="secession-validate-user-msg">
		                <strong>가입할때 입력하신 이메일을 입력해주세요.</strong>
		            </p>
		           	
		            <label>
		                email:             		               
						   		<input style="	margin: -10% 1% 1% 2%;											    
											    border: 1px solid #666;
											    width: 30%;
											    " 
										type="text" id="newmail" name="newmail" placeholder="이메일" />@
								<input style="	margin:  1% 0% 1% 0%;
											    border: 1px solid #666;
											    width: 21% "
										type="text" id="newmail2" name="newmail2" />
								<select  
										 id="selectmail" name="selectmail" style="display:inline-block;border: 1px solid #666">
										 <option value= "1" selected >직접입력</option>
										 <option value= "naver.com">naver.com</option>
       									 <option value= "gmail.com">gmail.com</option>
       									 <option value= "nate.com">nate.com</option>
        								 <option value= "hanmail.com">hanmail.com</option>
								</select>	<br>																										   		
						   		<a style="margin-left: 60%;color: #666" id="mailmsg"></a>
						   		<input type="hidden" id="email" name="email" value="${member.email}" />	
		            </label>            		            
				</div>
						       		 <div style="float: right;margin-right: 40%;margin-top: 10px">
				        				<button id="emailcheck" name="emailcheck" class="btn-emailcheck"
				                          style="    width: 116px;
										    padding: 5px 3px 3px;
										    margin-bottom: 7px;
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
				    						type="button"
				    						 >확인
				                          </button>
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
					    						href="${contextPath}/board/loginForm">취소
					                          </a> <br><br>                                                                              
					                 </div>          
        		</form>
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