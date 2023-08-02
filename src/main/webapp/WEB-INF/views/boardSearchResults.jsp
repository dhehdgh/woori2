<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Include the necessary CSS and JavaScript files here -->
<div id="con_lfe">
    <h2 class="pg_tit">
        <span>검색 결과</span>
        <!-- Add a back button or link to return to the boardList page -->
        <a href="boardList">돌아가기</a>
    </h2>

    <!-- Display the search results here -->
<div class="tbl_head01 tbl_wrap">
    <table>
        <colgroup>
            <col width="50">
            <col>
            <col width="100">
            <col width="50">
            <col width="150">
        </colgroup>
        <thead>
            <tr>
                <th scope="col">번호</th>
                <th scope="col">제목</th>
                <th scope="col">작성자</th>
                <th scope="col">조회</th>
                <th scope="col">등록일</th>
            </tr>
        </thead>
        <tbody>
                <!-- Loop through the search results and display them -->
                <c:forEach items="${searchResults}" var="board">
                    <tr>
                        <td>${board.numbers}</td>
                        <td>
                            <a href="boardDetail?bno=${board.bno}">
                                ${board.title}
                            </a>
                            <input type="hidden" id="membernum" name="membernum" value="${board.membernum}">
                        </td>
                        <td>${board.memberDTO.id}</td>
                        <td>${board.viewcnt}</td>
                        <td>${board.regdate}</td>
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
