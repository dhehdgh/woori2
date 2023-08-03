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
    <link rel="stylesheet" href="http://sample.paged.kr/purewhite/theme/pagedtheme/css/default.css?ver=2155">
<link rel="stylesheet" href="http://sample.paged.kr/purewhite/theme/pagedtheme/skin/member/basic/style.css?ver=171222">

<!-- 비밀번호 확인 시작 { -->
 <c:forEach items="${helpPw}" var="board">   
<c:set var="hno" value="${board.hno}" scope="request" />
<c:set var="pw" value="${board.helppw}" scope="request" />
</c:forEach>
<div id="pw_confirm" class="mbskin">
    <h1>비밀번호 분실시 재문의해주세요.</h1>
    <p>
                <strong>비밀글 기능으로 보호된 글입니다.</strong>
        작성자와 관리자만 열람하실 수 있습니다. <span><br></span> 본인이라면 비밀번호를 입력하세요.
            </p>



    <form name="fboardpassword" action="helpDetail?hno=${board.hno}">
    <input type="hidden" id="hno" name="hno" value="${hno}">

    <fieldset>
        <label for="password_wr_password" class="sound_only">비밀번호<strong>필수</strong></label>
        <input type="password" name="helppw" id="helppw" required class="frm_input required" size="15" maxLength="20" placeholder="비밀번호">
        <input type="submit" value="확인" class="btn_submit">
    </fieldset>
    </form>
   </div>
   
   <script>
document.querySelector('form[name="fboardpassword"]').addEventListener('submit', function(event) {
    // Get the entered password
    var enteredPassword = document.getElementById('helppw').value;

    // Replace "${pw}" with the actual password value (e.g., from the server-side)
    var expectedPassword = "${pw}";

    // Check if the entered password matches the expected password
    if (enteredPassword !== expectedPassword) {
        // Show error message in an alert box
        alert("비밀번호가 틀렸습니다.");

        // Prevent the form from being submitted
        event.preventDefault();
    } else {
        // Passwords match, let the form submission proceed
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
</body>

</html>