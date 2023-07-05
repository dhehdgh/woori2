<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <!--================Category Product Area =================-->
  
           
                <div class="col-lg-3">
                    <div class="left_sidebar_area">
                    
                        <aside class="left_widgets p_filter_widgets">
                            <div class="l_w_title">
                                <h3>my 정보</h3>
                            </div>
                            <div class="widgets_inner">
                                <ul class="list">
                                    <li>
                                        <a href="myupdate">내정보수정</a>                                      
                                    </li>
                                    <li>
                                        <a href="addrlist">배송지관리</a>                                       
                                    </li>
                                    <li>
                                        <a href="#">내등급</a>
                                    </li>
                                    <li>
                                        <a href="mydeleteView">회원탈퇴</a>
                                    </li>
                                 
                                </ul>
                            </div>
                        </aside>

                        <aside class="left_widgets p_filter_widgets">
                            <div class="l_w_title">
                                <h3>my 활동</h3>
                            </div>
                            <div class="widgets_inner">
                                <ul class="list">
                                    <li>
                                        <a href="mywishlist">내찜목록</a>
                                    </li>
                                    <li>
                                        <a href="#">내리뷰관리</a>
                                    </li>
                                    <li class="active">
                                        <a href="returnlist">반품/교환/취소 관리</a>
                                    </li>
                                    <li>
                                        <a href="#">내 문의내역</a>
                                    </li>                                 
                                 </ul>                    
                            </div>
                        </aside>

                        
                       
                    </div>
                </div>                               
    <!--================End Category Product Area =================-->
</body>
</html>