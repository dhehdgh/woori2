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
$(function(){
	//비밀번호 validation check 	
	$("#pw").keyup(function() {
		var newpwok = document.getElementById("newpwok").value;
		var pw = document.getElementById("pw").value;
		var regpw = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,15}$/;
		if(pw.length == 0){
			$("#pwmsg").text("");
		}else if(regpw.test(pw) != true){
			$("#pwmsg").text("*영문/숫자/특수문자를 포함한 8~15자리 조합을 입력해주세요.");
			pwmsg.style.color = "red"; 
		}else{
			$("#pwmsg").text("*사용가능한 비밀번호 입니다.");
			pwmsg.style.color = "#00891a";			
		};
	});
	//비밀번호 일치여부
	$("#newpwok").keyup(function() {
		var newpwok = document.getElementById("newpwok").value;
		var pw = document.getElementById("pw").value;		
		if(newpwok.length == 0){
			$("#pwmsg2").text("");
		}else if(newpwok == pw){
			$("#pwmsg2").text("*비밀번호가 일치합니다.");
			pwmsg2.style.color = "#00891a";
		}else{
			$("#pwmsg2").text("*비밀번호가 일치하지않습니다.");
			pwmsg2.style.color = "red";
		};
	});
	
	//비밀번호 변경완료 눌렀을때
	$("#pwchange").click(function() {
		var newpwok = document.getElementById("newpwok").value;
		var pw = document.getElementById("pw").value;
		var regpw = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,15}$/;
		var pwForm = document.getElementById("pwForm");
		//빈칸인지 확인
		if(pw == 0 || newpwok == 0){
			alert("비밀번호를 입력해주세요.");
		//비밀번호 형식이 맞지 않거나 비밀번호 체크가 아닐때
		}else if(newpwok != pw || regpw.test(pw) != true){
			alert("비밀번호를 다시 확인해주세요.")
		}else{
			alert("비밀번호가 변경되었습니다. 다시 로그인해주세요.");
			pwForm.submit();	
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
	         비밀번호 변경
	         </h4>	       	         
		</div>      
		    <form action="${contextPath}/board/pwupdate1" method="POST" id="pwForm">
             	<div style="margin-top: 20px;padding: 20px;border: 1px solid #dae5eb;background-color: #e9f4fa;text-align:center">
		            <p class="secession-validate-user-msg">	</p>
		            	<div style="display:block-inline">
		            	<input type="hidden" name="id" value="${member.id}"/>
		                	 새 비밀번호: <input  style="margin-left:5%;margin-bottom: 1%;border: 1px solid #666" type="password" id="pw" name="pw" value=""/><br>
		                	 <div style="margin: -6px 12% 0px 48%;color: #666;float: left" id="pwmsg"></div>
						</div><br>
		                <div     style="margin-left: -31px">	 
		                	 새 비밀번호 확인: <input  style="margin-left:49px;margin-bottom: 1%;border: 1px solid #666" type="password" id="newpwok" name="newpwok" /><br>
		                </div>	 
		                	 <div style="margin: -6px 12% 3px 48%;color: red;float: left" id="pwmsg2"></div>		                	
							
				</div>
				
				
							<div style="float: right;margin-right: 40%;margin-top: 10px">
				        				<button id="pwchange" name="pwchange" 
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
				    						 >비밀번호 변경
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