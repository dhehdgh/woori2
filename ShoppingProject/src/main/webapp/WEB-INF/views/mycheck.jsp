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
<script>
$(function() {
	$(".btn-mycheck").on("click", function(){
	    const checkPassword = $('#password').val();
		const pass = $('#pass').val();
	    if(!checkPassword || checkPassword.trim() === ""){
	        alert("비밀번호를 입력하세요.");
	    } else{
	        	if(pass == checkPassword){	        		
	        		 var url = 'myupdate.membernum?membernum=' + ${member.membernum};
	                 window.open(url, "_self",  '');
	        	 }else{
	        		 alert("비밀번호가 맞지 않습니다.");
	        		 return false;
	        	 }
	             
	         }    
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
    	 <div style="width:1000px; word-break:break-all"> 
	    	<h4 
	            class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300"
	         >
	         내정보 수정
	         </h4>	       	         
		</div>           	
             	<div style="margin-top: 20px;padding: 20px;border: 1px solid #dae5eb;background-color: #e9f4fa;text-align:center">
		            <p class="secession-validate-user-msg">
		                <strong>보안을 위해 회원님의 비밀번호를 확인 합니다.</strong>
		            </p>
		            <label>
		                <span>ID : </span>
		                <input class="secession-validate-user-tf-name" type="text" readonly="true" value="${member.id}">
		            </label>            
		            <label>
		                <span>비밀번호 : </span>
		                 <input type="hidden" id="pass" name="pass" value="${member.pw}">
		                <input type="password" id="password" name="password"  placeholder="비밀번호를 입력해주세요.">
		            </label>
		        </div>
		       		 <div style="float: right;margin-right: 40%;margin-top: 10px">
        				<button id="mycheck" name="mycheck" class="btn-mycheck"
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
    						value=""
    						 >확인
                          </button>
        				<button id="cancle" name="cancle" 
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
	    						 onclick="location.href='myorderlist';">취소
	                          </button> <br><br>                                                                              
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
<%@ include file="include/javascript.jsp"%>
<%@ include file="include/style.jsp"%>

</html>