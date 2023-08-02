<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="include/header.jsp" %>

 <c:forEach items="${boardUpdateView}" var="board">
 <c:set var="title" value="${board.title}" scope="request" />
 <c:set var="id" value="${board.memberDTO.id}" scope="request" />
 <c:set var="viewcnt" value="${board.viewcnt}" scope="request" />
 <c:set var="regdate" value="${board.regdate}" scope="request" />
 <c:set var="content" value="${board.content}" scope="request" />
  <c:set var="bno" value="${board.bno}" scope="request" />
 </c:forEach>
    <!-- 여기부터 작성-->
  <div id="ctWrap">

	<div id="container">
<!-- skin : theme/qna -->
<section id="bo_w">
    <h2 class="sound_only">질문답변 글쓰기</h2>

    <!-- 게시물 작성/수정 시작 { -->
    <form action="boardUpdate?bno=${bno}"  method="post" style="width:100%">
    
    <div class="bo_w_info write_div">
            <label for="wr_name" class="sound_only">아이디<strong>필수</strong></label>
        <input type="text" name="id" value="${id}" id="id" required readonly class="frm_input required" placeholder="아이디">
    
        </div>

    
    
    <div class="bo_w_tit write_div">
        <label for="wr_subject" class="sound_only">제목<strong>필수</strong></label>
        
        <div id="autosave_wrapper write_div">
            <input type="text" name="title" value="${title}" id="title" required class="frm_input full_input required" size="50" maxlength="255" placeholder="제목">
                    </div>
        
    </div>

    <div class="write_div">
        <label for="wr_content" class="sound_only">내용<strong>필수</strong></label>
        <div class="wr_content ">
                        <span class="sound_only">웹에디터 시작</span>
<textarea id="content" name="content" class="" maxlength="65536" placeholder="내용" required style="width:100%;height:300px">${content}</textarea>
<span class="sound_only">웹 에디터 끝</span>                    </div>
        
    </div>

        
                
    </div>
    

        <div class="write_div">
    

    <div class="btn_confirm write_div">
        <a href="boardList" class="btn_cancel btn">취소</a>
        <input type="submit" value="수정완료" id="btn_submit" accesskey="s" class="btn_submit btn" onclick="return boardInsert();">
    </div>
    </div>
    </form>
    </section>
    </div>
    
    
    <script>
    function boardInsert() {
	    if (confirm("게시글을 수정하시겠습니까?")) {
	      alert("게시글이 수정 되었습니다.");
	      return true; 
	    } else {
	        alert("취소되었습니다.");
	       return false; 
	    }
	}
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