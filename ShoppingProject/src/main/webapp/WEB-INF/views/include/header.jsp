<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<!DOCTYPE html>

<html lang="en">
<script>
function orderlist(){
	var user = "${user}";
	if (user == ""){
		alert("로그인 후 이용하실 수 있습니다.");
		location.href="${contextPath}/board/loginForm";
	}else{
		location.href="${contextPath}/board/myorderlist"
	}	
}

function mywishlist(){
	var user = "${user}";
	if (user == ""){
		alert("로그인 후 이용하실 수 있습니다.");
		location.href="${contextPath}/board/loginForm";
	}else{
		location.href="${contextPath}/board/mywishlist"
	}	
}
</script>
<c:set var="user" value="${sessionScope.user}" />

<%-- user 값 사용 --%>
<c:if test="${not empty user}">
</c:if>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>NUSINSA</title>
    <link rel="icon" href="${contextPath}/resources/bootstrap/img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/bootstrap.min.css">
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
        <!-- Header part end-->
<link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
      rel="stylesheet"
    />
        <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/tailwind.output.css" />
        
        
        
        
           <link href="${contextPath}/resources/bootstrap/style.min.css" rel="stylesheet">
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
              
                
   <ul>
      <c:choose>
              <c:when test="${not empty user}">
                   <li><a href="/">${user.id}</a> 님</li>
                  <li>등급 : <a href="#">${user.rating}</a></li>                 
                  <li>포인트 : <a href="#">${user.point}P</a></li>        	
                  <br>                  <br>	
                  <li class="xans-element- xans-layout xans-layout-statelogon "><a href="${contextPath}/board/logOut" title="로그아웃">LOGOUT</a>
               </li>
	               
              </c:when>
              <c:otherwise>
	              	
                  <li class="xans-element- xans-layout xans-layout-statelogoff "><a href="${contextPath}/board/loginForm" title="로그인">LOGIN</a>
               </li>
               <li class="xans-element- xans-layout xans-layout-statelogoff "><a href="${contextPath}/board/joinView" title="회원가입">JOIN</a>
					</li>
              </c:otherwise>
          </c:choose>
   		
		
        <li><a href="javascript:void(0)" onclick="orderlist()" title="주문조회">ORDER</a></li>
        	 <li>
<!---------------------------------------------------------------- 
*  게시판 
-----------------------------------------------------------------> 
<div id="community">
	<ul><li><h2 class="">community</h2>
		<ul class="xans-element- xans-layout xans-layout-boardinfo middle_category"><li class="xans-record-"><a href="${contextPath}/board/boardList">공지사항</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/helpList">Q&A</a></li>
		</ul>
	</li>
</ul></div>                  
</li>
</ul></div>
        
        
<!---------------------------------------------------------------- 
*  로고 
----------------------------------------------------------------->
<div class="logo"><a href="${contextPath}" class="xans-element- xans-layout xans-layout-logotop "><img src="${contextPath}/resources/bootstrap/img/logo4.jpg" alt=""/></a>


        
     <header class="main_menu home_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">

                        <div class="collapse navbar-collapse main-menu-item" id="navbarSupportedContent">
                        </div>
                        <div class="hearer_icon d-flex">
                            <a id="search_1" href="javascript:void(0)"><i class="ti-search"></i></a>
                            
                            <a href="javascript:void(0)" onclick="mywishlist()"><i class="ti-heart"></i></a>
                            
                            <a href="javascript:void(0)" onclick="orderlist()"><i class="ti-user"></i></a>
                            
                           <c:if test="${user.authority == null}">
							<a id="not-session" href="${contextPath}/board/loginForm"><i
							class="fas fa-cart-plus"></i></a>
							</c:if>
							<c:if test="${user.authority != null}">
							<a id="cart-link" href="${contextPath}/board/cartView?membernum=${user.membernum}"><i class="fas fa-cart-plus"></i></a>
							</c:if>
                                
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <div class="search_input" id="search_input_box">
            <div class="container ">
                <form class="d-flex justify-content-between search-inner">
                    <input type="text" class="form-control" id="search_input" placeholder="Search Here">
                    <button type="submit" class="btn"></button>
                    <span class="ti-close" id="close_search" title="Close Search"></span>
                </form>
            </div>
        </div>
    </header>
        
	</div>
        
        
        </div>            

 <div class="inner1">
  <div id="comment2">
    <div class="commenty">
      <div id="category" class="xans-element- xans-layout xans-layout-category">
        <div class="position">
                   <ul>
            <li class="xans-record-"><a href="${contextPath}/board/allItem">전체상품</a></li>
            <li class="xans-record-"><a href="${contextPath}/board/newitem">신상</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/sale">세일</a></li>



<li>
<div id="community">
	<ul><li><h2 class=""><a href="${contextPath}/board/toplist">상의</a></h2>
		<ul class="xans-element- xans-layout xans-layout-boardinfo middle_category">
		<li class="xans-record-"><a href="${contextPath}/board/toplist?path=1">니트/스웨터</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/toplist?path=2">후드티</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/toplist?path=3">맨투맨</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/toplist?path=4">셔츠</a></li>
		</ul>
	</li>
</ul></div>  
</li> 



<li>
<div id="community">
	<ul><li><h2 class=""><a href="${contextPath}/board/pants">&nbsp;&nbsp;바지&nbsp;&nbsp;</a></h2>
		<ul class="xans-element- xans-layout xans-layout-boardinfo middle_category">
		<li class="xans-record-"><a href="${contextPath}/board/pants?path=1">데님팬츠</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/pants?path=2">트레이닝팬츠</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/pants?path=3">코튼팬츠</a></li>
		</ul>
	</li>
</ul></div>  
</li> 

<li>
<div id="community">
	<ul><li><h2 class=""><a href="${contextPath}/board/skirt">스커트</a></h2>
		<ul class="xans-element- xans-layout xans-layout-boardinfo middle_category">
		<li class="xans-record-"><a href="${contextPath}/board/skirt?path=1">미니 스커트</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/skirt?path=2">미디 스커트</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/skirt?path=3">롱 스커트</a></li>
		</ul>
	</li>
</ul></div>  
</li> 

<li>
<div id="community">
	<ul><li><h2 class=""><a href="${contextPath}/board/onepiece">원피스</a></h2>
		<ul class="xans-element- xans-layout xans-layout-boardinfo middle_category">
		<li class="xans-record-"><a href="${contextPath}/board/onepiece?path=1">미니 스커트</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/onepiece?path=2">미디 스커트</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/onepiece?path=3">롱 스커트</a></li>
		</ul>
	</li>
</ul></div>  
</li> 

<li>
<div id="community">
	<ul><li><h2 class=""><a href="${contextPath}/board/outer">아우터</a></h2>
		<ul class="xans-element- xans-layout xans-layout-boardinfo middle_category">
		<li class="xans-record-"><a href="${contextPath}/board/outer?path=1">후드집업</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/outer?path=2">코트</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/outer?path=3">가디건</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/outer?path=4">패딩</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/outer?path=5">재킷</a></li>
		</ul>
	</li>
</ul></div>  
</li> 

<li>
<div id="community">
	<ul><li><h2 class=""><a href="${contextPath}/board/hat">모자</a></h2>
		<ul class="xans-element- xans-layout xans-layout-boardinfo middle_category">
		<li class="xans-record-"><a href="${contextPath}/board/hat?path=1">CAP</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/hat?path=2">비니</a></li>
		</ul>
	</li>
</ul></div>  
</li> 

<li>
<div id="community">
	<ul><li><h2 class=""><a href="${contextPath}/board/shoes">신발</a></h2>
		<ul class="xans-element- xans-layout xans-layout-boardinfo middle_category">
		<li class="xans-record-"><a href="${contextPath}/board/shoes?path=1">운동화</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/shoes?path=2">슬리퍼</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/shoes?path=3">구두</a></li>
		</ul>
	</li>
</ul></div>  
</li>

<li>
<div id="community">
	<ul><li><h2 class=""><a href="${contextPath}/board/accessory">악세서리</a></h2>
		<ul class="xans-element- xans-layout xans-layout-boardinfo middle_category">
		<li class="xans-record-"><a href="${contextPath}/board/accessory?path=1">벨트</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/accessory?path=2">머플러</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/accessory?path=3">넥타이</a></li>
			<li class="xans-record-"><a href="${contextPath}/board/accessory?path=4">기타</a></li>
			
		</ul>
	</li>
</ul></div>  
</li> 
            
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
<!-- Add the JavaScript code to the page -->
<script>
  // 링크를 클릭했을 때 실행될 함수
  function showAlert() {
    alert("로그인 후 이용해주세요");
  }

  // <a> 태그를 찾아서 클릭 이벤트에 showAlert 함수를 연결합니다.
  document.getElementById('not-session').addEventListener('click', showAlert);
</script>

