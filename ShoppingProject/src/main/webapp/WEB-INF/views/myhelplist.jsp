<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
#game_help .help_content_bx {
    float: left;
    width: 900px;
    padding: 0 0 30px;
}
.help_content_bx .content_bx_st {
    position: relative;
    padding: 27px 40px 0 25px;
    width: 900px;
}

.help_content_bx .content_bx_st .tit {
	display: block;
    font-size: 28px;
    font-weight: bold;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.3;
    letter-spacing: -1px;
    color: rgb(17, 17, 17);
}

.help_content_bx .content_bx_st .sub_copy {
	margin: 3px 0 40px;
	color: #777;
	font-size: 14px;
}

.help_content_bx .content_bx_st .sub_copy02 {
	color: #4e545d;
	font-size: 12px;
}

.help_tbl_common {
	margin-top: 10px;
	border-top: 1px solid #949da9;
}

.nexon-hide {
	display: none !important;
}

.help_tbl_common .t_left {
	text-align: center;
}

.help_tbl_style02 td {
	padding: 15px 5px;
	color: #666;
	text-align: center;
	word-break: break-all;
}

.help_tbl_common a {
	color: #28313d;
}

.help_tbl_common td, .help_tbl_common th {
	border-bottom: 1px solid #ebebeb;
	vertical-align: middle;
}

.help_tbl_style02 .t_color01 {
	color: #354052;
}

tr {
	display: table-row;
	vertical-align: inherit;
	border-color: inherit;
}
caption, hr, legend {
    width: 0;
    height: 0;
    font-size: 1px;
    text-indent: -9999em;
    line-height: 0;
}
caption, th {
    text-align: left;
}
address, caption, cite, code, dfn, em, strong, th, var {
    font-weight: 400;
    font-style: normal;
}
caption {
    display: table-caption;
    text-align: -webkit-center;
}
.help {
    text-align: center;
    border: none;
    border-radius: 2px;
    padding: 8px;
    background-color: #ff3368;
    cursor: pointer;
    overflow: visible;
    box-sizing: border-box;
    color: #ffffff;
    font-weight: bold;
}
/* 페이징 스타일 */
    .pagination {
        display: flex;
        justify-content: center;
        margin-top: 20px;
    }
    .pagination a,b,
    .pagination span {
        padding: 8px 12px;
        margin-right: 5px;
        text-decoration: none;
        color: #333;
        background-color: #f2f2f2;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    .pagination a:hover {
        background-color: #e0e0e0;
    }
    .pagination .active {
        background-color: #007bff;
        color: #fff;
    }
    .pagination .disabled {
        pointer-events: none;
        cursor: default;
        background-color: #f2f2f2;
        color: #ccc;
    }
</style>
</head>
<%@ include file="include/header.jsp"%>
<body>

	<%@ include file="include/mypage_left_column.jsp"%>
	<div class="help_content_bx">
	<div class="content_bx_st"><div style="float: right;"><a href="${contextPath}/board/helpboard" type="button" class="help" style="color: white;">1:1문의하기</a></div>
		<strong class="tit" style="padding-bottom: 20px;">내 문의내역</strong> 
		<div class="help_tbl_common help_tbl_style02">
			<table>
				<caption>내 문의내역</caption>
				<colgroup>
					<col style="width: 50px">
					<col style="width: 450px">
					<col style="width: 200px">
					<col style="width: 250px">
				</colgroup>
				<thead>
					<tr style="text-align: center;">
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">날짜</th>
						<th scope="col">처리상태</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="helplist" items="${helplist}" varStatus="status">
					<tr class="">
						<td>${status.count}</td>
						<td class="t_left" id="tdTitle"><a
							href="${contextPath}/board/myhelpdetail?hno=${helplist.help_boardDTO.hno}" title="내 문의내역 상세보기" >${helplist.help_boardDTO.title}</a></td>
						<td>${helplist.help_boardDTO.hdate}</td>
						<td><span class="t_color01">${helplist.codetableDTO.codestring}</span></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		<div class="pagination">
			<c:if test="${page.prev}">
 				<a href="${contextPath}/board/myhelplist?num=${page.startPageNum - 1}">이전</a>
			</c:if>
			<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
					  <c:if test="${select != num}">
					  	 <a href="${contextPath}/board/myhelplist?num=${num}">${num}</a>
					  </c:if>    
					  <c:if test="${select == num}">
					   	<b>${num}</b>
					  </c:if>
			</c:forEach>
			<c:if test="${page.next}">
				 <a href="${contextPath}/board/myhelplist?num=${page.endPageNum + 1}">다음</a>
			</c:if>
		</div>
		</div>
</div>

	</div>





	<!-- 레프트컬럼 끝 -->
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