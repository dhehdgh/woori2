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
 <c:forEach items="${helpRegister}" var="board">
 <c:set var="id" value="${board.id}" scope="request" />
 </c:forEach>
  <div id="ctWrap">

	<div id="container">
<!-- skin : theme/qna -->
    <h2 class="sound_only">질문답변 글쓰기</h2>

    <!-- 게시물 작성/수정 시작 { -->
    <form action="helpInsert"  method="post" style="width:100%">
    
    <div class="bo_w_info write_div">
        <label for="wr_name" class="sound_only">아이디<strong>필수</strong></label>
       		 <input type="text" name="id" value="${id}" id="id" required readonly class="frm_input required" placeholder="아이디">
    
        <label for="wr_password" class="sound_only">비밀번호<strong>필수</strong></label>
        	<input type="password" name="helppw" id="helppw" value="" required class="frm_input required" placeholder="비밀번호" readonly>
			<input id="openstate1" name="openstate" value="1" type="radio" checked="checked" onclick="toggleInput(true)" />
	  <label for="openstate1">공개글</label>
	  <input id="openstate2" name="openstate" value="2" type="radio" onclick="toggleInput(false)" />
	  <label for="openstate2">비밀글(선택시 비밀번호활성화)</label>
    </div>

       
    <div class="bo_w_tit write_div">
        <label for="wr_subject" class="sound_only">제목<strong>필수</strong></label>
        
        <div id="autosave_wrapper write_div">
            <input type="text" name="title" value="" id="title" required class="frm_input full_input required" size="50" maxlength="255" placeholder="제목">
        </div>
        
    </div>

    <div class="write_div">
        <label for="wr_content" class="sound_only">내용<strong>필수</strong></label>
        <div class="wr_content ">
                        <span class="sound_only">웹에디터 시작</span>
		<textarea id="content" name="content" class="" maxlength="65536" placeholder="내용" required style="width:100%;height:300px"></textarea>
		<span class="sound_only">웹 에디터 끝</span>                    </div>
		        
    </div>
    
    <div class="bo_w_flie write_div">
        <div class="file_wr write_div">
            <label for="bf_file_1" class="lb_icon"><i class="fa fa-download" aria-hidden="true"></i><span class="sound_only"> 파일 #1</span></label>
            <input type="file" name="bf_file[]" id="bf_file_1" title="파일첨부 1 : 용량 1,048,576 바이트 이하만 업로드 가능" class="frm_file ">
        </div>                     
    </div>    
        <div class="write_div">
		    <div class="btn_confirm write_div">
		        <a href="helpList" class="btn_cancel btn">취소</a>
		        <input type="submit" value="작성완료" id="btn_submit" accesskey="s" class="btn_submit btn" onclick="return boardInsert();">
		    </div>
   		 </div>
    </form>
    </div>
  </div>
    
<script>

function boardInsert() {
    var passwordField = document.getElementById("helppw");

    if (passwordField.value.trim() === "") {
        passwordField.value = "0";
    }

    if (!validatePassword()) {
        return false;
    }

    if (confirm("게시글을 업로드하시겠습니까?")) {
        alert("게시글이 업로드 되었습니다.");
        return true;
    } else {
        alert("취소되었습니다.");
        return false;
    }
}

// Function to validate and restrict password length
function validatePassword() {
    const passwordInput = document.getElementById("helppw");
    const password = passwordInput.value;

    if (!isPublicPost() && password.length === 0) {
        alert("비밀번호를 입력해주세요.");
        return false;
    } else if (!isPublicPost() && !/^\d{4}$/.test(password)) {
        alert("비밀번호를 숫자 + 4글자로 입력해주세요.");
        passwordInput.value = ""; // Clear the incorrect input
        passwordInput.style.borderColor = "red"; // Highlight the border in red
        return false;
    } else {
        passwordInput.style.borderColor = ""; // Reset border color
        return true;
    }
}

function isPublicPost() {
    const publicPostRadio = document.getElementById("openstate1");
    return publicPostRadio.checked;
}

function toggleInput(isPublic) {
    const passwordInput = document.getElementById("helppw");
    const passwordLabel = document.querySelector('label[for="wr_password"]');

    if (isPublic) {
        passwordInput.readOnly = true;
        passwordInput.value = ""; // Clear the input value if it's a public post
        passwordInput.style.borderColor = ""; // Reset border color
    } else {
        passwordInput.readOnly = false;
    }
}

// Adding event listener to the password input for validation
const passwordInput = document.getElementById("helppw");
passwordInput.addEventListener("blur", validatePassword);

// Function to show the message next to the password input field asynchronously
passwordInput.addEventListener("focus", function () {
    if (!isPublicPost()) {
        const messageElement = document.createElement("span");
        messageElement.textContent = "비밀번호 숫자 + 4글자로 입력해주세요.";
        messageElement.style.color = "red";
        messageElement.style.marginLeft = "10px";

        const parentDiv = passwordInput.parentElement;
        parentDiv.appendChild(messageElement);

        passwordInput.addEventListener("blur", function () {
            parentDiv.removeChild(messageElement);
        });
    }
});
</script>
  
  
    <!-- 끝 -->

    <!--::footer_part start::-->
	<%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
	<%@ include file="include/javascript.jsp" %>
    <%@ include file="include/style.jsp" %>
    <%@ include file="include/boardstyle2.jsp" %>
</body>

</html>