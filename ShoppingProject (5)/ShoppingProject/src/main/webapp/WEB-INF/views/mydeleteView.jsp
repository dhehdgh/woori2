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

function checkbox(){
	 var checkbox = document.getElementById("deleteagree");
	if (checkbox.checked){
		checkbox.value = "1";
	}else {
		checkbox.value="2";
	}
}
$(function() {	
	$(".btn-userdelete").on("click", function(){
		var deleteagree = $("#deleteagree").val();
	    const checkPassword = $('#password').val();
		 const pass = $('#pass').val();
	    if(!checkPassword || checkPassword.trim() === ""){
	        alert("비밀번호를 입력하세요.");
	        return false;
	    }else if(deleteagree == "2" ){
	    	alert("탈퇴처리 확인에 동의해주세요.");
	    	return false;
	    } 
	    else{
	    	 var answer=confirm("정말 탈퇴하시겠습니까?");
	         if(answer){
	        	 if(pass == checkPassword && deleteagree == 1){
	        		 alert("탈퇴되었습니다.");
	        			        		
	        	 }else{
	        		 alert("비밀번호가 맞지 않습니다.");
	        		 return false;
	        	 }
	             
	         }else{
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
	         회원 탈퇴
	         </h4>
	        
	         <i class="fas fa-exclamation-triangle" style="color:red;"> 주의사항</i><br>
	          	- 회원 탈퇴 시 계정과 관련된 정보는 복구가 불가능합니다.<br>
	          	- 현재 보유 중인 쿠폰, 포인트는 모두 소멸되어 재가입 후에도 복구 할 수 없습니다.<br>
	          	- 회원탈퇴 후 서비스에 입력하신 상품문의 및 후기, 댓글은 삭제되지 않으며, 회원정보 삭제로 인해 작성자 본인을 확인할 수 없어 편집 및 삭제처리가 원천적으로 불가능 합니다.<br>
				- 상품문의 및 후기, 댓글 삭제를 원하시는 경우에는 먼저 해당 게시물을 삭제하신 후 탈퇴를 신청하시기 바랍니다.<br>
				- 이미 결제가 완료된 건은 탈퇴로 취소되지 않습니다.<br>
		</div>
		<form action ="${contextPath}/board/memdelete" method="POST" id="memdeleteForm">
			<div style="margin-top:40px;padding: 10px 20px;color: #005bdb">
			 <input  type="checkbox" name="deleteagree" value="${memdelete.deleteagree}" id="deleteagree" data-type="checked" 
			 style="accent-color: #0073e9" required oninvalid="this.setCustomValidity('탈퇴처리 주의사항 확인에 동의해주세요.')"
			 onchange="checkbox()"
				/> 	 	
             	<span> 회원탈퇴 시 주의사항을 모두 확인하였음에 동의합니다.</span>             
             </div>	
             	<div style="margin-top: 20px;padding: 20px;border: 1px solid #dae5eb;background-color: #e9f4fa;text-align:center">
		            <p class="secession-validate-user-msg">
		                <strong>보안을 위해 회원님의 비밀번호를 확인 합니다.</strong>
		            </p>
		            
		            <label>
		                <span>ID : </span>
		                <input class="secession-validate-user-tf-name" type="text" readonly="true" value="${memdelete.id}">
		            </label>            
		            <label>
		                <span>비밀번호 : </span>
		                 <input type="hidden" id="pass" name="pass" value="${memdelete.pw}">
		                <input type="password" id="password" name="password"  placeholder="비밀번호를 입력해주세요.">
		            </label>
		        </div>
		       		 <div style="float: right;margin-right: 40%;margin-top: 10px">
        				<button type="submit" id="userdelete" name="userdelete" class="btn-userdelete"
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
    						 >탈퇴
                          </button>
        				<button type="button" id="cancle" name="cancle" 
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
<%@ include file="include/javascript.jsp"%>
<%@ include file="include/style.jsp"%>

</html>