<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/admin.css">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
          $(function(){
             
             //직접입력
             $('#selectmail').change(function(){
                $("#selectmail option:selected").each(function () {              
                   if($(this).val()== '1'){ //직접입력일 경우
                       $("#email2").val('');    //값 초기화
                       $("#email2").attr("disabled",false); //활성화
                   }else{ //직접입력이 아닐경우
                       $("#email2").val($(this).text());    //선택값 입력
                       $("#email2").attr("disabled",true); //비활성화
                   }
                   });
                });   
                         
                                           

             
             $("#id").keyup(function(){
                var userID = document.getElementById("id").value;
                   var idReg = /^[a-z]+[a-z0-9]{5,19}$/g;
                
               if(userID.length==0){
                  $("#idMsg").text("");
               }else if(!idReg.test(userID)){
                  $("#idMsg").text("6~20자의 영어,숫자로 입력해주세요").css("color","red");
               }else{
                  $("#idMsg").text("올바른 형식입니다.").css("color","blue");
               } 
             });
              $("#pw").keyup(function(){
                 var userPW = document.getElementById("pw").value;
                 var pwReg = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,15}$/;
                 
                 if(userPW.length==0){
                    $("#pwMsg").text("");
                 }else if(!pwReg.test(userPW)){
                    $("#pwMsg").text("8~15자의 영문,숫자 특수문자로 입력해주세요.").css("color","red");
                 }else{
                    $("#pwMsg").text("올바른 형식입니다.").css("color","blue");
                 }
               });
              $("#pw_re").keyup(function(){
                 var checkUserPW = document.getElementById("pw_re").value;
                 var userPW = document.getElementById("pw").value;
                 
                 if(checkUserPW.length==0){
                    $("#pwMsg2").text("");
                 }else if(checkUserPW!=userPW){
                    $("#pwMsg2").text("비밀번호가 일치하지 않습니다").css("color","red");
                 }else{
                    $("#pwMsg2").text("비밀번호가 일치합니다").css("color","blue");
                 }
               });
              $("#name").keyup(function(){
                 var userName = document.getElementById("name").value;
                 var nameReg = /^[가-힣]{2,6}$/; 
                 
                 if(userName.length==0){
                    $("#nameMsg").text("");
                 }else if(!nameReg.test(userName)){
                    $("#nameMsg").text("2~6글자의 한글로 적어주세요.").css("color","red");
                 }else{
                    $("#nameMsg").text("올바른 형식입니다.").css("color","blue");
                 }
               });
              $("#tel3").keyup(function(){
                 var tel2 = document.getElementById("tel2").value;
                 var tel3 = document.getElementById("tel3").value;
                 var telReg = /^\d{4}$/;
                 
                 if(tel2.length==0 || tel3.length==0){
                    $("#telMsg").text("");
                 }else if(!telReg.test(tel2) || !telReg.test(tel3)){
                    $("#telMsg").text("각각 4자리 숫자로 입력해주세요.").css("color","red");
                 }else{
                    $("#telMsg").text("올바른 형식입니다.").css("color","blue");
                 }
               });
              $("#birth").datepicker({
                    dateFormat: 'yy.mm.dd',
                    prevText: '이전 달',
                    nextText: '다음 달',
                    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
                    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
                    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
                    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
                    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
                    showMonthAfterYear: true,
                    yearSuffix: '년',
                    yearRange: "1900:2023",
                    changeYear: true,
                    changeMonth: true
                      });
              
              $("#email1,#email2,#selectmail").on("keyup change",function(){
                 var email1 = document.getElementById("email1").value;
                 var email2 = document.getElementById("email2").value;
                 var selectmail = document.getElementById("selectmail").value;
                 var email = email1 +"@"+ email2;
                 var emailReg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
                 
                 if(email1.length==0){
                    $("#emailMsg").text("");
                 }else if(!emailReg.test(email)){
                    $("#emailMsg").text("이메일 형식으로 써주세요.").css("color","red");
                 }else{
                    $("#emailMsg").text("올바른 형식입니다.").css("color","blue");
                 }
               });
              
              $("#signupButton").click(function(){
                 
                  var detailaddrValue = $("#detailaddr").val();
                  document.getElementById("deldetailaddr").value = detailaddrValue;
                  console.log("deldetailaddrValue:", document.getElementById("deldetailaddr").value);
                  
                 
                 var ag = $('input[name="agree"]:checked').val();                              
                if(ag == 2){
                   alert("개인정보수집에 동의해주세요.");
                   return false;
                }
                
                
                var userID = document.getElementById("id").value;      
                    var idReg = /^[a-z]+[a-z0-9]{5,19}$/g;
                 
                    if(userID.length==0){
                       alert("아이디를 입력해주세요");
                       return false;
                    }else if(!idReg.test(userID)){
                       alert("아이디를 확인해주세요");
                       return false;
                    }
                    
                    
            var DuplicateChecked = $("#checkID").data("duplicateChecked");
                     if (!DuplicateChecked) {
                       alert("중복확인을 해주세요.");
                       return false;
                     }
                    
                 
                    var userPW = document.getElementById("pw").value;
                    var pwReg = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,15}$/;
                   
                    if(userPW.length==0){
                       alert("비밀번호를 입력해주세요");
                       return false;
                    }else if(!pwReg.test(userPW)){
                       alert("비밀번호를 확인해주세요");
                       return false;
                    }
                 
                   var checkUserPW = document.getElementById("pw_re").value;
                    
                   if(checkUserPW.length==0){
                      alert("비밀번호 확인을 입력해주세요");
                      return false;
                   }else if(userPW!=checkUserPW){
                    alert("비밀번호가 일치하지 않습니다.");
                    return false;
                    }
                 
                    var userName = document.getElementById("name").value;
                   var nameReg = /^[가-힣]{2,6}$/; 
                   
                    if(userName.length==0){
                        alert("이름을 입력해주세요.");
                        return false;
                    }else if(!nameReg.test(userName)){
                       alert("이름을 확인해주세요.");
                       return false;
                    }
                 
                     var tel1 = document.getElementById("tel1").value;
                     var tel2 = document.getElementById("tel2").value;
                   var tel3 = document.getElementById("tel3").value;
                   var telReg = /^\d{4}$/;
                   
                   if(tel2.length==0 || tel3.length==0){
                      alert("핸드폰 번호를 입력해주세요.");
                      return false;
                   }else if(!telReg.test(tel2) || !telReg.test(tel3)){
                      alert("핸드폰 번호를 확인해주세요.")
                      return false;
                   }
                   
                   $("#tel").attr('value',tel1+"-"+tel2+"-"+tel3);
                   
                   var email1 = document.getElementById("email1").value;
                   var email2 = document.getElementById("email2").value;
                   var email = email1+"@"+email2;
                   var emailReg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
                   
                   if(email1.length==0){
                      alert("이메일 주소를 입력해주세요.");
                      return false;
                   }else if(!emailReg.test(email)){
                      alert("이메일 주소를 확인해주세요.");
                      return false;
                   }
                   
                  $("#email").attr('value',email1+"@"+email2);
                  
                  var birth = $("#birth").val();
                  
                  if(birth.length==0){
                     alert("생년월일을 입력해주세요.");
                     return false;
                  }
                  
                  var postcode = $("#postcode").val();
                  
                  if(postcode.length==0){
                     alert("주소를 입력해주세요.");
                     return false;
                  }
                  
                  var detailaddr = $("#detailaddr").val();
                  
                  if(detailaddr.length==0){
                     alert("상세주소를 입력해주세요.");
                     return false;
                  }
                  
                    alert("회원가입이 완료되었습니다.");
              });
             });
          
          $(function(){
           $("#checkID").click(function(){
              var id = $("#id").val();
              if (id === "") {
                   alert("아이디를 입력하세요!!!");
                   $('#id').focus();
                    return;
                }
              
              $.ajax({
                 url : "${contextPath}/board/memberCheckID",
                   type : "post",
                   data : {id : id},
                   success : function(data) {
                    if(data === 1) {
                        alert("사용 불가");
                        $("#checkID").data("duplicateChecked", false); // 중복확인 실패
                       } else {
                        alert("사용 가능");
                        $("#checkID").data("duplicateChecked", true); // 중복확인 성공
                       }
                   }
              });
           });
          });
   </script>
    
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   <script>
   function sample4_execDaumPostcode() {
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
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById('delpostcode').value = data.zonecode;
                
                document.getElementById("roadaddr").value = roadAddr;
                document.getElementById("delroadaddr").value = roadAddr;
                
                document.getElementById("jibunaddr").value = data.jibunAddress;
                document.getElementById("deljibunaddr").value = data.jibunAddress;
                
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("extraaddr").value = extraRoadAddr;
                    document.getElementById("delextraaddr").value = extraRoadAddr;
                } else {
                    document.getElementById("extraaddr").value = '';
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
   
   

<%@ include file="include/header.jsp"%>

   
    <!-- 여기부터 작성-->
<div id="wrapper">  
   <div id="content"  class="col-md-9">     
      <div class="s_wrap">
         <h1>회원 가입</h1>

         <form action="${contextPath}/board/MemberRegister" method="post">
            <h2>사이트 이용정보 입력</h2>
            <div class="tbl_frm01">
               <table>
               <colgroup>
                  <col class="w180">
                  <col>
               </colgroup>
               <tbody>
               <tr>
                  <th scope="row"><label for="id">아이디</label></th>
                  <td>
                     <input type="text" name="id" id="id" required class="frm_input" size="20" maxlength="20">
                     <button type="button" class="genric-btn primary small" id="checkID" name="checkID">중복확인</button>
                     <span id="idMsg" class="text-xs"></span>
                     <span class="frm_info text-muted">영문자, 숫자, _ 만 입력 가능. 최소 6자이상 입력하세요.</span>      
                  </td>
               </tr>
               <tr>
                  <th scope="row"><label for="pw">비밀번호</label></th>
                  <td>
                     <input type="password" name="pw" id="pw" required class="frm_input" size="20" maxlength="20">
                     <span id="pwMsg" class="text-xs"></span>
                     <span class="frm_info text-muted">8자 이상의 영문 및 숫자,특수문자</span>
                  </td>
               </tr>
               <tr>
                  <th scope="row"><label for="pw_re">비밀번호 확인</label></th>
                  <td>
                     <input type="password" name="pw_re" id="pw_re" required class="frm_input" size="20" maxlength="20">
                     <span id="pwMsg2" class="text-xs"></span>
                  </td>
               </tr>
               </tbody>
               </table>
            </div>
         
            <h2 class="mart30">개인정보 입력</h2>
            <div class="tbl_frm01">
               <table>
               <colgroup>
                  <col class="w180">
                  <col>
               </colgroup>
               <tbody>
               <tr>
                  <th scope="row"><label for="name">이름(실명)</label></th>
                  <td>
                     <input type="text" name="name" id="name" required class="frm_input" size="20">
                     <span id="nameMsg" class="text-xs"></span>
                  </td>
               </tr>
               <tr>
                  <th scope="row">전화번호</th>
                  <td>
                      <select id="tel1" name="tel1">
                        <option value= "010" selected >010</option>
                   <option value= "011">011</option>
                       <option value= "016">016</option>
                       <option value= "017">017</option>
                     <option value= "018">018</option>
                     <option value= "019">019</option>
                     </select> - 
                      <input type="text" id="tel2" name="tel2" class="frm_input" size="5" maxlength="4"> - 
                      <input type="text" id="tel3" name="tel3" class="frm_input" size="5" maxlength="4">
                      <span id="telMsg" class="text-xs"></span>
                      <input type="hidden" id="tel" name="tel">
                    </td>
               </tr>
               <tr>
                  <th scope="row">E-Mail</th>
                    <td>
                       <input type="text" id="email1" name="email1" class="frm_input" size="12" /> @ 
                       <input type="text" id="email2" name="email2" class="frm_input" size="12" />
                      <select id="selectmail" name="selectmail">
                            <option value= "1" selected >직접입력</option>
                     <option value= "naver.com">naver.com</option>
                         <option value= "gmail.com">gmail.com</option>
                         <option value= "nate.com">nate.com</option>
                       <option value= "hanmail.com">hanmail.com</option>
                      </select>
                      <span id="emailMsg" class="text-xs"></span>
                      <input type="hidden" id="email" name="email">
                    </td>
               </tr>
               <tr>
                  <th scope="row"><label for="gender">성별</label></th>
                  <td>
                       <input type="radio" name="gender" id="male" value="1" class="frm_input" checked>
                       <label for="male">남성</label>
                       <input type="radio" name="gender" id="female" value="2" class="frm_input">
                       <label for="female">여성</label>
                   </td>
               </tr>
               <tr>
                  <th scope="row"><label for="birth">생년월일</label></th>
                  <td>
                     <input type="text" name="birth" id="birth" required class="frm_input" size="40" maxlength="100">
                  </td>
               </tr> 
                <tr>
                  <th scope="row">주소</th>
                  <td colspan="3">
                     <p class="mart5" style="display: inline-block;">
                     <input type="text" id="postcode" name="postcode" class="frm_input" size="8" maxlength="5" placeholder="우편번호" readonly> </p>
                      <input type="hidden" id="delpostcode" name="delpostcode" >
                      
                     <input type="button" onclick="sample4_execDaumPostcode()" id="post" class="genric-btn primary-border small" value="우편번호 찾기"><br>
                     
                     <p class="mart5"><input type="text" id="roadaddr" name="roadaddr" class="frm_input" size="60" readonly placeholder="도로명주소"> </p>
                     <input type="hidden" id="delroadaddr" name="delroadaddr">    
                     <span id="guide" style="color:#999;display:none"></span>
                     
                     <p class="mart5"><input type="text" id="extraaddr" name="extraaddr"class="frm_input" size="60" readonly placeholder="참고항목"> 
                     <input type="hidden" id="delextraaddr" name="delextraaddr">    
                     
                     <p class="mart5"><input type="text" id="detailaddr" name="detailaddr" class="frm_input" size="60" placeholder="상세주소"> </p>
                     <input type="hidden" id="deldetailaddr" name="deldetailaddr" value=''>
                         
                     <input type="hidden" id="jibunaddr" name="jibunaddr">
                     <input type="hidden" id="deljibunaddr" name="deljibunaddr">                                                                     
                  </td>
               </tr>
                         <tr>
                  <th scope="row"><label for="agree">개인정보수집동의</label></th>
                  <td >
                        <input type="radio" id ="agree" name="agree" value="1" id="yes" checked>
                        <label for="yes">예</label>
                        <input type="radio" id ="agree" name="agree" value="2" id="no">
                        <label for="no">아니오</label>
                    </td>
               </tr>                                                             
               </tbody>
               </table>                        
            </div>
            <div class="btn_confirm">
               <input type="submit" value="저장" id="signupButton" class="genric-btn success e-large" accesskey="s">
            </div>
         </form>
      </div>
   </div>
</div>


   
    <!-- 끝 -->

    <!--::footer_part start::-->
   <%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->
   
    <!-- jquery plugins here-->
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
    <%@ include file="include/style.jsp" %>
</body>
</html>