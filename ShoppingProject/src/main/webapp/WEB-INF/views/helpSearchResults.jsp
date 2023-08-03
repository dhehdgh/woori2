<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Include the necessary CSS and JavaScript files here -->
<div id="con_lfe">
<c:set var="user" value="${sessionScope.user}" />
    <h2 class="pg_tit">
        <span>검색 결과</span>
        <!-- Add a back button or link to return to the boardList page -->
        <a href="helpList">돌아가기</a>
    </h2>

    <!-- Display the search results here -->
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
                <!-- Loop through the search results and display them -->
            <c:forEach items="${searchResults}" var="board">
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
                    
                    <c:if test="${user.authorityy eq 2}"> 
                    <a href="helpDetail?hno=${board.hno}"> 
                     <i class="fa fa-lock" aria-hidden="true"></i>${board.title}
                    <input type = "hidden" id="membernum" name="membernum" value="${board.membernum}"></a>
                    </c:if>
                    
                    <c:if test="${user.authorityy eq 1}"> 
                    <a href="helpDetail?hno=${board.hno}"> 
                     <i class="fa fa-lock" aria-hidden="true"></i>${board.title}
                    <input type = "hidden" id="membernum" name="membernum" value="${board.membernum}"></a>
                    </c:if>
                    
                    <c:if test="${user.authorityy == null}"> 
                    <a href="helpDetail?hno=${board.hno}"> 
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
                <!-- If there are no search results, show an appropriate message -->
                <c:if test="${empty searchResults}">
                    <tr>
                        <td colspan="5" class="empty_table">검색 결과가 없습니다.</td>
                    </tr>
                </c:if>
            </tbody>
        </table>
    </div>
</div>
