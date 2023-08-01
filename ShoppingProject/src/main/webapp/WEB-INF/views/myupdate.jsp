<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
	.btn-change{
		text-align:center;
		padding: 5px 5px 3px;
		font-size: 12px;
		letter-spacing: -1px;							    
		border-radius: 12px;
		color: #0073e9;
		text-align: center;
		background: #fff;
		cursor: pointer;
		border: 1px solid #ccc;
		margin-left: 40px;
	}							   
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>	

<script>

//배송지관리 팝업 오픈
function openPop() {
		window.open("popaddrlist", "pop", "width=550, height=800, top=500, left=300");
}

//휴대폰 번호 인증
$(function(){
	//telchange버튼을 클릭했을때
		 var telchange = document.getElementById("telchange"); //전화번호 변경버튼 telchange
		 var telchange2 = document.getElementById("telchange2"); //전화번호 변경취소 버튼 telchange2
		 var teldiv = document.getElementById("teldiv"); //새전화번호, 인증번호발송 버튼 teldiv
		 var mailchange = document.getElementById("mailchange"); //이메일 변경버튼 mailchange
		 var mailchange2 = document.getElementById("mailchange2"); //이메일 변경취소 버튼 mailchange2
		 var maildiv = document.getElementById("maildiv"); //새이메일, 인증번호발송 버튼 maildiv
		 var birthchange = document.getElementById("birthchange"); //생일 변경버튼 birthchange
		 var birthchange2 = document.getElementById("birthchange2"); //생일 변경취소 버튼 birthchange2
		 var birthdiv = document.getElementById("birthdiv"); //새생일, 완료 버튼 birthdiv
		 
	$("#telchange").on("click", function(){		 
		 telchange.style.display = "none"; // 안보이도록 변경
		 telchange2.style.display = "inline-block"; // 보이도록 변경
		 teldiv.style.display = "inline-block"; // 보이도록 변경
	});
	$("#telchange2").on("click", function() {
		 telchange.style.display = "inline-block"; // 보이도록 변경
		 telchange2.style.display = "none"; // 안보이도록 변경
		 teldiv.style.display = "none"; // 안보이도록 변경
	});
	$("#mailchange").on("click", function(){		 
		mailchange.style.display = "none"; // 안보이도록 변경
		mailchange2.style.display = "inline-block"; // 보이도록 변경
		maildiv.style.display = "inline-block"; // 보이도록 변경
	});
	$("#mailchange2").on("click", function() {
		mailchange.style.display = "inline-block"; // 보이도록 변경
		mailchange2.style.display = "none"; // 안보이도록 변경
		maildiv.style.display = "none"; // 안보이도록 변경
	});
	$("#birthchange").on("click", function(){		 
		birthchange.style.display = "none"; // 안보이도록 변경
		birthchange2.style.display = "inline-block"; // 보이도록 변경
		birthdiv.style.display = "inline-block"; // 보이도록 변경
	});
	$("#birthchange2").on("click", function() {
		birthchange.style.display = "inline-block"; // 보이도록 변경
		birthchange2.style.display = "none"; // 안보이도록 변경
		birthdiv.style.display = "none"; // 안보이도록 변경
	});
	
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
	//생일 datepicker
	$("#birth").datepicker({
		showMonthAfterYear:true,
		changeMonth: true,
		changeYear: true,
		yearRange: 'c-100:c+0',
		dateFormat: 'yy-mm-dd',
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], // 월의 한글 형식.
		dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], // 요일의 한글 형식.
	});
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
	//전화번호 validation check
	 $("#newtel,#newtel2,#selecttel").on("keyup change",function(){
		 var newtel = document.getElementById("newtel").value;
		 var newtel2 = document.getElementById("newtel2").value;
		 var selecttel = document.getElementById("selecttel").value;
		 var tel = selecttel+"-"+newtel +"-"+ newtel2 ;
		 var regtel = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;			
		 if(tel.length == 0 ){
			 $("#mailmsg").text("");
		 }else if(regtel.test(tel) != true){
			 $("#telmsg").text("*유효하지 않은 형식입니다.");
			 telmsg.style.color = "red";
		 }else{
			 $("#telmsg").text("*올바른 형식입니다.");
			 telmsg.style.color = "#00891a";
		 }
	  });
	 
	//비밀번호 변경완료 눌렀을때
	$("#pwchange").click(function() {
		var oldpw = document.getElementById("oldpw").value;
		var newpwok = document.getElementById("newpwok").value;
		var pw = document.getElementById("pw").value;
		var hiddenpw = document.getElementById("hiddenpw").value;
		var regpw = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,15}$/;
		var pwForm = document.getElementById("pwForm");
		//현재 비밀번호와 지금 비밀번호가 맞는 지 확인
		if(oldpw.length == 0 || pw == 0 || newpwok == 0){
			alert("비밀번호를 입력해주세요.");
		//현재비밀번호가 아닐경우 새 비밀번호 형식이랑 맞지 않을 경우 alert("비밀번호를 다시 확인해주세요.");
		}else if(oldpw != hiddenpw || newpwok != pw || regpw.test(pw) != true){
			alert("비밀번호를 다시 확인해주세요.")
		}else{
			alert("비밀번호가 변경되었습니다. 다시 로그인해주세요.");
			pwForm.submit();	
		}	
	});
	 var code2 = "";	
	//인증번호 발송 눌렀을 때
	$("#telcheck").click(function() {
		 var telchecknum = document.getElementById("telchecknum");
		 var telok = document.getElementById("telok");
		 var newtel = document.getElementById("newtel").value;
		 var newtel2 = document.getElementById("newtel2").value;
		 var selecttel = document.getElementById("selecttel").value;
		 $("#tel2").attr("value",selecttel+newtel+newtel2);
		 $("#tel").attr("value",selecttel+"-"+newtel +"-"+ newtel2);
		 var tel = document.getElementById("tel").value;
		 var tel2 = document.getElementById("tel2").value;
		 
		 var regtel = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;	
		
		//빈칸인지 체크
		if(newtel.length == 0 || newtel2.length == 0 || selecttel.length == 0){
			alert("전화번호를 입력해주세요.");	
			return false;
		}else if(regtel.test(tel) != true){
			alert("전화번호를 다시 확인해주세요.");
			return false;
		}else{
			alert("인증번호를 발송했습니다.");
			telchecknum.style.display = "inline-block"; // 보이도록 변경
			telok.style.display = "inline-block"; // 보이도록 변경			
				var tel2 = $("#tel2").val();
				$.ajax({
			        type:"GET",
			        url:"${contextPath}/board/phoneCheck?tel2=" + tel2,
			        cache : false,
			        success:function(data){
			        	if(data == "error"){
			        		alert("error.")							
			        	}else{	        		
			        		$("#telchecknum").attr("disabled",false).val; //인증번호			        		
			        		code2 = data;
			        	}
			        }
			    });
		}	
	});	
	//휴대폰 인증번호 대조
	$("#telok").click(function(){
		 var telok = document.getElementById("telok");
		 var newtel = document.getElementById("newtel").value;
		 var newtel2 = document.getElementById("newtel2").value;
		 var selecttel = document.getElementById("selecttel").value;
		 $("#tel2").attr("value",selecttel+newtel+newtel2);
		 $("#tel").attr("value",selecttel+"-"+newtel +"-"+ newtel2);
		 $("#telchecknum").attr("value",telchecknum);
		 var tel = document.getElementById("tel").value;
		 var tel2 = document.getElementById("tel2").value;
		 var telchecknum = document.getElementById("telchecknum").value;
		 var telForm = document.getElementById("telForm");	 		
			if( telchecknum == code2){
				alert("인증번호가 일치합니다. 전화번호가 변경되었습니다.");
				$("#telchecknum").attr("disabled",true);
				telForm.submit();	
			}else{
				alert("인증번호가 일치하지 않습니다.");
				$(this).attr("autofocus",true);
			}
	});	
	
	//이메일 변경완료 눌렀을 때
	$("#mailcheck").click(function() {				
		 var newmail = document.getElementById("newmail").value;
		 var newmail2 = document.getElementById("newmail2").value;
		 var selectmail = document.getElementById("selectmail").value;
		 var email = document.getElementById("email").value;	
		 $("#email").attr("value",newmail +"@"+ newmail2);		  		 
		 var emailForm = document.getElementById("emailForm");
		 var regmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;		
		
		 //빈칸인지 체크
		if(newmail.length == 0 || newmail2.length == 0 || selectmail.length == 0){
			alert("이메일을 입력해주세요.");	
			return false;
		}else if(regmail.test(email) != true){
			alert("이메일을 다시 확인해주세요.");
			return false;
		}else{
			alert("이메일이 변경되었습니다.");
			emailForm.submit();	
		}	
	});

	
	//생일 변경완료 눌렀을때
	$("#birthok").click(function() {
		var birth = document.getElementById("birth").value;
		var birthForm = document.getElementById("birthForm");
		if(birth.length == 0){
			alert("날짜를 입력해주세요.");
			return false;
		}else{
			alert("생일이 변경되었습니다.");
			birthForm.submit();
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
    		 <h4
              class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300"
            >
              내정보 수정
            </h4>
            <div class="w-full overflow-hidden rounded-lg shadow-xs">
              <div class="w-full overflow-x-auto">
                <table class="w-full whitespace-no-wrap">                
               	 	<tr>	 	              
	                     <th style="width: 20%" class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">	 
	                    	<h1 class="px-4 py-3" style="text-align:center">아아디</h1>	                      	                                    
	                    </th>
	                    	<td class="border px-4 py-3">		                 	
		                	 	<h1 style="text-align:center">${member.id}</h1>			                	 	                        	                       	                      
		                	 </td>
		            </tr>
	                <tr>	 	              
	                     <th style="width: 20%" class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">	 
	                    	<h1 class="px-4 py-3" style="text-align:center">이름</h1>	                      	                                    
	                    </th>
	                    	<td class="border px-4 py-3">		                 	
		                	 	<h1 style="text-align:center">${member.name}</h1>	                        	                       	                      
		                	 </td>
		            </tr>
		            <tr>	 	              
	                     <th style="width: 20%" class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">	 
	                    	<h1 class="px-4 py-3" style="text-align:center">성별</h1>	                      	                                    
	                    </th>
	                    	<td class="border px-4 py-3">		                 	
		                	 	<h1 style="text-align:center">${member.gen}</h1>	                        	                       	                      
		                	 </td>
		            </tr>
		             <tr>	 	              
		                     <th style="width: 20%" class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">	 
		                    	<h1 class="px-4 py-3" style="text-align:center">비밀번호</h1>	                      	                                    
		                    </th>
		                    <td class="border px-4 py-3" style="text-align:center">
		                    	<input  type="hidden" id="hiddenpw" name="hiddenpw" value="${member.pw}" />    
		                    	       	
		                	 	 현재 비밀번호: <input  style="margin-left:5%;margin-bottom: 1%;border: 1px solid #666" type="password" id="oldpw" name="oldpw" /><br> 
		                	 	 <form action="${contextPath}/board/pwupdate" method="POST" id="pwForm">	  
		                	 	 새 비밀번호: <input  style="margin-left:7%;margin-bottom: 1%;border: 1px solid #666" type="password" id="pw" name="pw" value=""/><br>
		                	 	 <div style="margin: -6px 32% 3px 47%;color: #666" id="pwmsg"></div>
		                	 	 
		                	 	 새 비밀번호 확인: <input  style="margin-left:3%;margin-bottom: 1%;border: 1px solid #666" type="password" id="newpwok" name="newpwok" /><br>
		                	 	 <div style="margin: -6px 32% 3px 47%;color: red" id="pwmsg2"></div>
		                	 	 <button class="btn-change"			                	 	 	                	 	
						   		  type="button" id="pwchange" name="pwchange"> 비밀번호 변경 </button>	
						   		  </form>	   						   								   		             	 		              	 	                        	                       	                      		                	                        	                       	                      
		                	 </td>
		            </tr>
		             <tr>	 	              
		                     <th  style="width: 20%" class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">	 
		                    	<h1 class="px-4 py-3" style="text-align:center">전화번호</h1>	                      	                                    
		                    </th>
	                    	<td class="border px-4 py-3" style="text-align:center">		                 	
		                	 	<h1>
		                	 		${member.tel}	
		                	 	<button class="btn-change" style="margin-left: 8px;display: inline-block"
		                	 	 	type="button" id="telchange" name="telchange"> 전화번호 변경 
		                	 	 </button>
		                	 	 
						   		<button class="btn-change"
			                	 	style="
			                	 	color: #fff;							    
								    background: #828282;
								  	margin-left: 8px;
								  	display: none" 
							   		type="button" id="telchange2" name="telchange2"> 전화번호 변경취소 
						   		</button>
						   		</h1>
						   		
						   		<div id="teldiv" style="display: none">	
						   		<select  
										 id="selecttel" name="selecttel" style="margin-left:-4%;display:inline-block;border: 1px solid #666">
										 <option value= "010" selected >010</option>
										 <option value= "011">011</option>
       									 <option value= "016">016</option>
       									 <option value= "017">017</option>
        								 <option value= "018">018</option>
        								 <option value= "019">019</option>
								</select> -
						   		<input style="	
						   			margin-left: 0%;
									margin-bottom: 1%;
									border: 1px solid #666;
									width: 10%;
									margin-top: 1%" 
									type="text" id="newtel" name="newtel" /> -
								<input style="	
						   			margin-left: 0%;
									margin-bottom: 1%;
									border: 1px solid #666;
									width: 10%;
									margin-top: 1%" 
									type="text" id="newtel2" name="newtel2" />
						   		<button 
						   			class="btn-change"
		                	 	 	style="
			                	 	color: #fff;							    
								    background: #0073e9;
								  	margin-left: 6px;
								  	" 		                	 	
						   		type="button" id="telcheck" name="telcheck"> 인증번호 발송 </button><br>
						   		<a style="margin: -6px 32% 3px 51%;color: #666" id="telmsg"></a> <br>
						   		<form action="${contextPath}/board/telupdate" method="POST" id="telForm"> 	
						   		<input style="	
						   			margin-left: -2%;
									margin-bottom: 1%;
									border: 1px solid #666;
									width: 24%;
									margin-top: 1%;
									display:inline-block
									" 
									placeholder="인증번호"
									type="text" id="telchecknum" name="telchecknum" value=""/>											
								<input type="hidden" id="tel2" name="tel2" value="">								 				
								<input type="hidden" id="tel" name="tel" value="${member.tel}"> 
								<button class="btn-change" style="margin-left: 8px;display:inline-block"
		                	 	 	type="button" id="telok" name="telok" value=""> 확인 
		                	 	 </button>
		                	 	 </form>
						   		</div>
								                    	                       	                      
		                	 </td>
		            </tr>
		            
		            <tr>
		            		              
	                     <th  style="width: 20%" class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">	 
	                    	<h1 class="px-4 py-3" style="text-align:center">이메일</h1>	                      	                                    
	                    </th>
	                     
	                    	<td class="border px-4 py-3" style="text-align:center">		                 	
		                	 	<h1 >${member.email}
		                	 	<button 
		                	 	class="btn-change" style="margin-left: 8px;display: inline-block"
						   		type="button" id="mailchange" name="mailchange"> 이메일 변경 </button>
						   		<button  
		                	 		class="btn-change"
			                	 	style="
			                	 	color: #fff;							    
								    background: #828282;
								  	margin-left: 8px;
								  	display: none"
						   		type="button" id="mailchange2" name="mailchange2"> 이메일 변경취소 </button></h1>
						   		<div id="maildiv" style="display: none">
						   		<form action="${contextPath}/board/mailupdate" method="POST" id="emailForm">	
						   		<input style="	margin: -10% 1% 1% 10%;											    
											    border: 1px solid #666;
											    width: 25%;
											    " 
										type="text" id="newmail" name="newmail" placeholder="새 이메일" />@
								<input style="	margin:  1% 0% 1% 0%;
											    border: 1px solid #666;
											    width: 18% "
										type="text" id="newmail2" name="newmail2" />
								<select  
										 id="selectmail" name="selectmail" style="display:inline-block;border: 1px solid #666">
										 <option value= "1" selected >직접입력</option>
										 <option value= "naver.com">naver.com</option>
       									 <option value= "gmail.com">gmail.com</option>
       									 <option value= "nate.com">nate.com</option>
        								 <option value= "hanmail.com">hanmail.com</option>
								</select>
								<input type="hidden" id="email" name="email" value="${member.email}" />														
						   		<button 
		                	 	class="btn-change"
		                	 	 	style="
			                	 	color: #fff;							    
								    background: #0073e9;
								  	margin-left: 6px;
								  	"  
						   		type="button" id="mailcheck" name="mailcheck"> 확인 </button><br>
						   		<a style="margin: -6px 32% 3px 51%;color: #666" id="mailmsg"></a>
						   		</form>
						   		</div>	
						   		                  	                       	                      
		                	 </td>
		                
		            </tr>		             
		             <tr>	 	              
	                     <th style="width: 20%" class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">	 
	                    	<h1 class="px-4 py-3" style="text-align:center">생일</h1>	                      	                                    
	                    </th>
	                    	<td class="border px-4 py-3" style="text-align:center">		                 	
		                	 	<h1 >${member.birth}
		                	 	<button class="btn-change" style="margin-left: 8px"		                	 	
						   		type="button" id="birthchange" name="birthchange"> 생일 변경 </button>                         	                       	                      
		                	 
		                		<button class="btn-change"
			                	 	style="
			                	 	color: #fff;							    
								    background: #828282;
								  	margin-left: 8px;
								  	display: none" 
							   		type="button" id="birthchange2" name="birthchange2" value=""> 생일 변경취소 
						   		</button>
						   		</h1>
						   		<form action="${contextPath}/board/birthupdate" method="POST" id="birthForm">	
						   		<div id="birthdiv" style="display: none">							   		
						   		<input style="	margin-left: -9%;
											    margin-bottom: 1%;
											    border: 1px solid #666;
											    width: 50%;
											    margin-top: 1%" 
										type="text" id="birth" name="birth" value=""/>
						   		<button 
						   			class="btn-change"
		                	 	 	style="
			                	 	color: #fff;							    
								    background: #0073e9;
								  	margin-left: 6px;
								  	" 		                	 	
						   		type="button" id="birthok" name="birthok" > 변경 완료 </button>
						   		</div>
						   		</form>
						   	</td>
		            </tr>
		            <tr>	 	              
	                     <th style="width: 20%" class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">	 
	                    	<h1 class="px-4 py-3" style="text-align:center">배송지</h1>	                      	                                    
	                    </th>
	                    	<td class="border px-4 py-3" style="text-align:center">	
	                    		배송지 변경은 	                 	
		                	 	<a  href="javascript:void(0)" onclick="openPop()" style="color:#0073e9"> 배송지 관리 </a>	     
		                	 	에서 가능합니다.                   	                       	                      
		                	 </td>
		            </tr>                                                                		
               	 </table>                 	  
              </div>
              </div> 
              <div style="text-align:center;disply:block;margin-top:5%">
      <button  style="background-color:#ff3368;float:center" id="list" name="list" class="email_icon newsletter-submit button-contactForm" onclick='location.href="myorderlist";'>취소</button>
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