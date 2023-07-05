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
         <div class="row">
            <div class="col-lg-2" style="border-width:1px;">
               <div class="left_sidebar_area">
                  <aside class="left_widgets p_filter_widgets">
                     <div class="l_w_title">
                     
                        <h3>My 정보</h3>
                     </div>
                     <ul class="list">
                        <li><a href="#">ㆍ내정보수정</a></li>
                        <li><a href="#">ㆍ배송지관리</a></li>
                        <li><a href="#">ㆍ내 등급</a></li>
                        <li><a href="#">ㆍ회원탈퇴</a></li><br><hr>
                     </ul>
                  </aside>
                  <aside class="left_widgets p_filter_widgets">
                     <div class="l_w_title">
                        <h3>My 활동</h3>
                     </div>
                     <ul class="list">
                        <li><a href="#">ㆍ내주문목록</a></li>
                        <li><a href="#">ㆍ내찜목록</a></li>
                        <li><a href="#">ㆍ내리뷰관리</a></li>
                        <li><a href="#">ㆍ반품/교환/취소 관리</a></li>
                        <li><a href="#">ㆍ내 문의내역</a></li>
                        <br><hr>
                     </ul>

                  </aside>
               </div>




            </div>
            <!--================End Category Product Area =================-->
</html>