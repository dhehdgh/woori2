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
 <c:forEach items="${helpList}" var="board">   
<c:set var="boardcount" value="${board.boardcount}" scope="request" />
</c:forEach>
<c:set var="user" value="${sessionScope.user}" />
<div id="con_lf">
	<h2 class="pg_tit">
		<span>문의사항</span>
		<p class="pg_nav">HOME<i>&gt;</i>고객센터<i>&gt;</i>공지사항</p>
	</h2>

	
<form name="fboardlist" method="post" action="del_all.php" onsubmit="return Check_Select(this);">
	<input type='hidden' name="boardid" value="13">
	<input type="hidden" name="sfl" value="">
	<input type="hidden" name="stx" value="">
	<input type="hidden" name="page" value="1">


	<p class="pg_cnt">
		<em>총 ${boardcount}개</em>의 게시물이 있습니다.
		<a  href="javascript:void(0)" onclick="helpinsert()" class="btn_b02 btn"><i class="fa fa-pencil" aria-hidden="true"></i> 문의등록</a>
	</p>


<div class="tbl_head01 tbl_wrap">
    <table>
        <colgroup>
            <col width="50">
            <col width="100">
            <col>
            <col width="100">
            <col width="50">
            <col width="150">
            <col width="150">
        </colgroup>
        <thead>
            <tr>
                <th scope="col">번호</th>
                <th scope="col">상태</th>
                <th scope="col">제목</th>
                <th scope="col">작성자</th>
                <th scope="col">조회</th>
                <th scope="col">등록일</th>
                <th scope="col">답변일</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${helpList}" var="board">
                <tr>
                    <td>${board.numbers}</td>
                    <td>
                    	<c:if test="${board.state eq 1}">
                    	답변대기
                    	</c:if>
                    	<c:if test="${board.state eq 2}">
                    	답변완료
                    	</c:if>
                    </td>
                    <td>
                    
                    <c:if test="${board.openstate eq 1}"> 
                    <a href="helpDetail?hno=${board.hno}">${board.title}
                    <input type = "hidden" id="membernum" name="membernum" value="${board.membernum}"></a>
                    </c:if>
                    
                    <c:if test="${board.openstate eq 2}"> 
                    
                    <c:if test="${user.authority eq 2}"> 
                    <a href="helpDetail?hno=${board.hno}"> 
                     <i class="fa fa-lock" aria-hidden="true"></i>${board.title}
                    <input type = "hidden" id="membernum" name="membernum" value="${board.membernum}"></a>
                    </c:if>
                    
                    <c:if test="${user.authority eq 1}"> 
                    <a href="helpPw?hno=${board.hno}"> 
                     <i class="fa fa-lock" aria-hidden="true"></i>${board.title}
                    <input type = "hidden" id="membernum" name="membernum" value="${board.membernum}"></a>
                    </c:if>
                    
                    <c:if test="${user.authority == null}"> 
                    <a href="helpPw?hno=${board.hno}"> 
                     <i class="fa fa-lock" aria-hidden="true"></i>${board.title}
                    <input type = "hidden" id="membernum" name="membernum" value="${board.membernum}"></a>
                    </c:if>
                    
					</c:if>
                    
                    </td>
                    <td>${board.memberDTO.id}</td>
                    <td>${board.viewcnt}</td>
                    <td>${board.hdate}</td>
                    <td>${board.rehdate}</td>
                </tr>
                
            </c:forEach>
            <c:if test="${boardcount == null}">
                <tr>
                    <td colspan="5" class="empty_table">게시물이 없습니다.</td>
                </tr>
            </c:if>
        </tbody>
    </table>
</div>

</form>
</div>
    <!-- 페이징 처리 -->
<div class="pagination">
    <c:choose>
        <c:when test="${currentPage > 1}">
            <a href="${contextPath}/board/helpList?page=${currentPage - 1}&pageSize=${pageSize}">&laquo; 이전</a>
        </c:when>
        <c:otherwise>
            <span class="disabled">&laquo; 이전</span>
        </c:otherwise>
    </c:choose>
    <c:forEach var="pageNum" begin="1" end="${totalPages}">
        <c:choose>
            <c:when test="${pageNum == currentPage}">
                <span class="active">${pageNum}</span>
            </c:when>
            <c:otherwise>
                <a href="${contextPath}/board/helpList?page=${pageNum}&pageSize=${pageSize}">${pageNum}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    <c:choose>
        <c:when test="${currentPage < totalPages}">
            <a href="${contextPath}/board/helpList?page=${currentPage + 1}&pageSize=${pageSize}">다음 &raquo;</a>
        </c:when>
        <c:otherwise>
            <span class="disabled">다음 &raquo;</span>
        </c:otherwise>
    </c:choose>
</div>


<form name="searchform" onsubmit="return searchBoard(event);">
    <input type="hidden" name="boardid" value="13">
    <div class="bottom_sch">
        <select name="sfl" id="searchField">
            <option value='title'>제목</option>
            <option value='id'>작성자</option>
            <option value='content'>내용</option>
        </select>
        <input type="text" name="stx" class="frm_input" id="searchKeyword" value="">
        <input type="submit" value="검색" class="btn_lsmall grey">
    </div>
</form>

<script>
	function helpinsert(){		
			var user = "${user}";
			if (user == ""){
				alert("로그인 후 이용하실 수 있습니다.");
				location.href="${contextPath}/board/loginForm";
			}else{
				location.href="${contextPath}/board/helpRegister?membernum=${user.membernum}"
			}	
		}
	
    function searchBoard(event) {
        event.preventDefault(); // Prevent default form submission

        const searchField = document.getElementById('searchField').value;
        const searchKeyword = document.getElementById('searchKeyword').value;

        // Send the search data to the server using AJAX
        fetch('helpSearch', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ searchField, searchKeyword }),
        })
        .then(response => response.text()) // Parse the response as plain text
        .then(data => {
            // Update the current page with the search results
            const currentContentDiv = document.getElementById('con_lf'); // Assuming there's a div with id 'con_lf'
            currentContentDiv.innerHTML = data;
        })
        .catch(error => {
            console.error('Error during search:', error);
            // Handle error, show an error message on the current page, etc.
        });

        return false; // Prevent form submission
    }
</script>
<script>
	  // HTML 요소를 선택합니다.
	  const statusCell = document.getElementById('statusCell');
	
	  // board.state 값에 따라 적절한 답변 상태를 표시합니다.
	  if (board.state === 1) {
	    statusCell.textContent = '답변대기';
	  } else if (board.state === 2) {
	    statusCell.textContent = '답변완료';
	  }
</script>


<style>
		/* Pagination container */
	.pagination {
	  display: flex;
	  justify-content: center;
	  align-items: center;
	}
	
	/* Pagination links and current page indicator */
	.pagination a,
	.pagination span {
	  display: inline-block;
	  padding: 1px 12px;
	  margin: 0 3px;
	  border: 1px solid #ccc;
	  border-radius: 5px;
	  color: #333;
	  text-decoration: none;
	}
	
	/* Active page indicator */
	.pagination .active {
	  background-color: #007bff;
	  color: #fff;
	  border: 1px solid #007bff;
	}
	
	/* Disabled links */
	.pagination .disabled {
	  color: #ccc;
	  pointer-events: none;
	}
	
	/* Hover effect on links */
	.pagination a:hover {
	  background-color: #f0f0f0;
	}
	
	/* Optional: Increase font size for better visibility */
	.pagination a,
	.pagination span {
	  font-size: 14px;
	}


</style>



    <!-- 끝 -->

    <!--::footer_part start::-->
	<%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->
	<%@ include file="include/javascript.jsp" %>
    <!-- jquery plugins here-->
    <%@ include file="include/style.jsp" %>
     <%@ include file="include/boardstyle.jsp" %>
         <script src="${contextPath}/resources/bootstrap/js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
</body>

</html>