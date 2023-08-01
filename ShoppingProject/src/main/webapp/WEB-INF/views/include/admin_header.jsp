<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<!DOCTYPE html>

<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>관리자 페이지</title>
    <link rel="icon" href="${contextPath}/resources/bootstrap/img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/bootstrap.min.css">
    <!-- Bootstrap Icons CSS-->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet">
    <!-- animate CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/owl.carousel.min.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/all.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/flaticon.css">
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/themify-icons.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/magnific-popup.css">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/style.css">
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/admin.css">
    
        <!-- Header part end-->
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/tailwind.output.css" />
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/bootstrap/multicheck/multicheck.css">
</head>

<body>
    
<div id="wrap">
 
     <!-- 상단메뉴 -->
    <div id="test"></div>
<div id="header">
    <div class="header-box">
        
        
        
 <!---------------------------------------------------------------- 
 *  상단라인 
----------------------------------------------------------------->
<div class="toplog">           
              
                
	<ul><li class="xans-element- xans-layout xans-layout-statelogoff "><a href="/member/login.html" title="로그인">LOGIN</a>
		</li>
	
		<li class="xans-element- xans-layout xans-layout-statelogoff "><a href="/member/join.html" title="회원가입">JOIN</a>
		<li class="xans-element- xans-layout xans-layout-statelogon "><a href="/exec/front/Member/logout/" title="로그아웃">LOGOUT</a>
			</li>
		<li>
			<div id="joinpoint2" class="xans-element- xans-layout xans-layout-statelogoff disnoneB pointbg "><a href="/member/join.html" class="point_text"></a>
			</div>
		</li>
        <li><a href="/myshop/order/list.html" title="주문조회">ORDER</a></li>
        	 <li>
<!---------------------------------------------------------------- 
*  게시판 
-----------------------------------------------------------------> 
<div id="community">
	<ul><li><h2 class="">community</h2>
		<ul class="xans-element- xans-layout xans-layout-boardinfo middle_category"><li class="xans-record-"><a href="/board/공지사항/1/">공지사항</a></li>
			<li class="xans-record-"><a href="/board/qa/6/">Q&A</a></li>
			<li class="xans-record-"><a href="/board/리뷰/4/">리뷰</a></li>
		</ul>
	</li>
</ul></div>                  
</li>
</ul>
</div>
<!---------------------------------------------------------------- 
*  로고 
----------------------------------------------------------------->
			<div class="logo"><a href="${contextPath}" class="xans-element- xans-layout xans-layout-logotop "><img src="${contextPath}/resources/bootstrap/img/logo4.jpg" alt=""/></a>
				<header id="hd">
					<div id="hd_wrap">
					
						<nav class="navbar navbar-expand navbar-dark bg-dark">
						  <a class="navbar-brand" href="adminPage">관리자페이지</a>
						  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation">
						    <span class="navbar-toggler-icon"></span>
						  </button>
						
						  <div class="collapse navbar-collapse" id="navbarsExample02">
						    <ul class="navbar-nav mr-auto">
						      <li class="nav-item active">
						        <a class="nav-link" href="adminMember">회원관리</a>
						      </li>
						      <li class="nav-item active">
						        <a class="nav-link" href="adminItem">상품관리</a>
						      </li>
						      <li class="nav-item active">
						        <a class="nav-link" href="adminHelp">고객지원</a>
						      </li>
						      <li class="nav-item active">
						        <a class="nav-link" href="adminOrder">주문관리</a>
						      </li>
						      <li class="nav-item active">
						        <a class="nav-link" href="adminReview">리뷰관리</a>
						      </li>
						    </ul>
						  </div>
						</nav>
						
					</div>
				</header>
			</div>
		</div>            
