<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<!DOCTYPE html>

<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>NUSINSA</title>
    <link rel="icon" href="${contextPath}/resources/bootstrap/img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/owl.carousel.min.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/all.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/flaticon.css">
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/themify-icons.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/magnific-popup.css">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/style.css">
        <!-- Header part end-->
<link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
      rel="stylesheet"
    />
        <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/tailwind.output.css" />
        
        
        
        
        	<link href="${contextPath}/resources/bootstrap/style.min.css" rel="stylesheet">
            <link rel="stylesheet" type="text/css" href="${contextPath}/resources/bootstrap/multicheck/multicheck.css">
            
            
</head>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function popupSubmit() {
	  window.opener.name = "popaddrlist"; // 부모창의 이름 설정
	  document.popForm.target = "popaddrlist"; // 타켓을 부모창으로 설정 
	  document.popForm.submit();
	  self.close();
}

function closePopup() {
	self.close();
}
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('delpostcode').value = data.zonecode;
            document.getElementById("delroadaddr").value = roadAddr;
            document.getElementById("deljibunaddr").value = data.jibunAddress;
            
            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
            if(roadAddr !== ''){
                document.getElementById("delextraaddr").value = extraRoadAddr;
            } else {
                document.getElementById("delextraaddr").value = '';
            }

            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
        }
    }).open();
}
</script>


<body>

 <section class="cat_product_area section_padding">
    <div class="container">
    	
      	 <div class="row"> 

 	
     <div class="card-body">  
     		
          	<h4 style="display:inline" class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">
            배송지 추가</h4><br><br> 
            
            		<form action="${contextPath}/board/popaddrinsert" method="POST" name="popForm">
           				
                       		<div class="text-gray-700 dark:text-gray-400" 
                       		style="display:inline;padding: 1%;border: 1px solid #6c757d;margin-right:14px;margin-bottom:10px" >
		                		<input  type="text" id="delpostcode" name="delpostcode" class="font-semibold" placeholder="우편번호">                      	                       	                      		        
		               		</div>
			               		<button type = "button" style="color:#ff3368;border:solid 1px;float:center;padding:1%;margin-bottom:10px"			               		 
			               		onclick="execDaumPostcode()" >주소찾기</button>
			               		
		               		<div class="text-gray-700 dark:text-gray-400" 
		               		style="padding: 1%;border: 1px solid #6c757d;margin-right: 4%;margin-bottom:10px" >	                 	
		                		<input style="width:100%" type="text" id="delroadaddr" name="delroadaddr"   placeholder="도로명 주소">                        	                       	                      
		             		</div>
		             		<div class="text-gray-700 dark:text-gray-400" 
		               		style="padding: 1%;border: 1px solid #6c757d;margin-right: 4%;margin-bottom:10px" >	                 	
		                		<input style="width:100%" type="text" id="deljibunaddr" name="deljibunaddr" placeholder="지번 주소">                        	                       	                      
		             		</div>
		             		<span id="guide" style="color:#999;display:none"></span>
		             		<div class="text-gray-700 dark:text-gray-400" 
		             		style="padding: 1%;border: 1px solid #6c757d;margin-right: 4%;margin-bottom:10px" >              	
		                		<input style="width:100%" type="text" id="deldetailaddr" name="deldetailaddr"  placeholder="상세 주소">                        	                       	                      
		               		</div>
		               		<div class="text-gray-700 dark:text-gray-400" 
		             		style="padding: 1%;border: 1px solid #6c757d;margin-right: 4%;margin-bottom:10px" >              	
		                		<input style="width:100%" type="text" id="delextraaddr" name="delextraaddr"   placeholder="참고항목">                        	                       	                      
		               		</div>
		             		
              	<div style="text-align:center;disply:block;padding-top:45px">
     				 <input type="button"  style="background-color:#ff3368;float:center" id="update" name="update" class="email_icon newsletter-submit button-contactForm" value="저장" onclick='popupSubmit()' />
     				 <button  type = "button" style="color:#ff3368;border: solid 1px;float:center" id="list" name="list" class="email_icon newsletter-submit button-contactForm" onclick='closePopup()' >목록</button>
     			</div>  	
     			  </form>
             </div>
            
           </div>  
            
      </div>
                     
     
   </section>
  
<!-- 레프트컬럼 끝 -->

   <!--::footer_part start::-->
   <!--::footer_part end::-->
</body>
<!-- jquery plugins here-->
<%@ include file="include/javascript.jsp"%>
<%@ include file="include/style.jsp"%>

</html>