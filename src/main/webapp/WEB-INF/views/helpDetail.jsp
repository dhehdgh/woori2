<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<%@ include file="include/header.jsp" %>
<c:set var="user" value="${sessionScope.user}" />

    <!-- 여기부터 작성-->
 <c:forEach items="${helpDetail}" var="board">
 <c:set var="title" value="${board.title}" scope="request" />
 <c:set var="id" value="${board.memberDTO.id}" scope="request" />
 <c:set var="viewcnt" value="${board.viewcnt}" scope="request" />
 <c:set var="hdate" value="${board.hdate}" scope="request" />
 <c:set var="content" value="${board.content}" scope="request" />
  <c:set var="hno" value="${board.hno}" scope="request" />
  <c:set var="membernum" value="${board.membernum}" scope="request" />
 </c:forEach>
<title>기본 게시판 샘플입니다 > 기본게시판 | 페이지디 홈페이지 템플릿 테마</title>
<link rel="stylesheet" href="http://sample.paged.kr/purewhite/theme/pagedtheme/css/board.common.css?ver=1620">



</head>
<body>
<a id="topID"></a>

<!-- 콘텐츠 시작 { -->

<div id="page_title" class="sbtImg">
</div>

<div id="ctWrap">

	<div id="container">

<script src="http://sample.paged.kr/purewhite/js/viewimageresize.js"></script>

<!-- 게시물 읽기 시작 { -->

<article id="bo_v" style="width:100%">
    <header>
        <h2 id="bo_v_title">
           <span class="bo_v_tit">
           ${title}
            </span>
        </h2>
    </header>

    <section id="bo_v_info">
        <h2>페이지 정보</h2>
        <span class="sound_only">작성자</span> <strong><span class="sv_member">${id}</span></strong>
        <span class="sound_only">조회</span><strong><i class="fa fa-eye" aria-hidden="true"></i> ${viewcnt}회</strong>
        <strong class="if_date"><span class="sound_only">작성일</span><i class="fa fa-clock-o" aria-hidden="true"></i> ${hdate}</strong>
    </section>

    <section id="bo_v_atc">
        <h2 id="bo_v_atc_title">본문</h2>

		
        <div id="bo_v_img">
</div>

        <!-- 본문 내용 시작 { -->
        <div id="bo_v_con"><p>${content}</p></div>
                <!-- } 본문 내용 끝 -->

        

    </section>

    <div id="bo_v_share">
		
        <!--  추천 비추천 시작 { -->
                <!-- }  추천 비추천 끝 -->

        
        
    </div>

    
    
    
    <!-- 게시물 상단 버튼 시작 { -->
    <div id="bo_v_top">
        
        <ul class="bo_v_left">
                                                                    </ul>

        <ul class="bo_v_com">
        				
        				<c:if test="${sessionScope.user.authority eq 2 or user.membernum eq membernum}">
           				<li><a href="helpUpdateView?hno=${hno}" class="btn_b01 btn"> 수정</a></li>

           				<li><a href="helpDelete?hno=${hno}" class="btn_b01 btn" onclick="return boardDelete();"><i class="fa fa-trash"  ></i> 삭제</a></li>
							</c:if>
							
                       <li><a href="helpList" class="btn_b01 btn"><i class="fa fa-list" aria-hidden="true"></i> 목록</a></li>
                    </ul>

                <ul class="bo_v_nb">                 </ul>
                    </div>
                    
    <!-- } 게시물 상단 버튼 끝 -->
   
    <!-- 끝 -->
    <script>
    function boardDelete() {
	    if (confirm("게시글을 삭제하시겠습니까?")) {
	      alert("게시글이 삭제 되었습니다.");
	      return true; 
	    } else {
	        alert("취소되었습니다.");
	       return false; 
	    }
	}
  </script>
    <!--::footer_part start::-->
	<%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
	<%@ include file="include/javascript.jsp" %>
    <%@ include file="include/style.jsp" %>
    <%@ include file="include/boardstyle2.jsp" %>
</body>

</html>