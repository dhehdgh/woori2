<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>

   <!--================Category Product Area =================-->
    <section class="cat_product_area section_padding_my">
      <div class="container">
         <div class="row" style="padding-top:40px;">
            <div class="col-lg-2" style="border:1px solid #E5E5E5; width: 214px; height: 580px;">
               <div class="left_sidebar_area">
                  <aside class="left_widgets p_filter_widgets">
                     <div class="l_w_title">
                     
                        <h3>My 정보</h3>
                     </div>
                     <ul class="list">
                        <li><a href="mycheck">ㆍ내정보수정</a></li>
                        <li><a href="addrlist">ㆍ배송지관리</a></li>
                        <li><a href="${contextPath}/board/myrating?membernum=1">ㆍ내 등급</a></li>
                        <li><a href="mydeleteView">ㆍ회원탈퇴</a></li><hr>
                     </ul>
                  </aside>
                  <aside class="left_widgets p_filter_widgets">
                     <div class="l_w_title">
                        <h3>My 활동</h3>
                     </div>
                     <ul class="list">
                        <li><a href="${contextPath}/board/myorderlist">ㆍ내주문목록</a></li>
                        <li><a href="#">ㆍ내찜목록</a></li>
                        <li><a href="${contextPath}/board/myreview?num=1">ㆍ내리뷰관리</a></li>
                        <li><a href="${contextPath}/board/myreturnlist">ㆍ반품/교환/취소 관리</a></li>
                        <li><a href="${contextPath}/board/myhelplist?num=1">ㆍ내 문의내역</a></li>
                       <!--  <li><a href="${contextPath}/board/testpage">ㆍ테스트</a></li> -->
                     </ul>

                  </aside>
               </div>
            </div>
            <!--================End Category Product Area =================-->
</html>