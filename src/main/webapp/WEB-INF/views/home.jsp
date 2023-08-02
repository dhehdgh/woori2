<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="include/header.jsp" %>
<link href="https://vjs.zencdn.net/7.15.4/video-js.css" rel="stylesheet">

<!-- Video.js JavaScript -->
<script src="https://vjs.zencdn.net/7.15.4/video.min.js"></script>
    <!-- Header part end-->

    <!-- banner part start-->
<video class="vjs-tech" data-quality="high" loop="" muted="muted" poster="https://media.musinsa.com/video/1011/poster/poster.jpg" id="vjs_video_3_html5_api" tabindex="-1" role="application" preload="none" playsinline="playsinline" src="blob:https://www.musinsa.com/ad5d6b22-86f3-4c89-b587-d64e06b2fb66"><source src="https://media.musinsa.com/video/1011/converted/w1920_h720_r266.67.m3u8" type="application/x-mpegURL"></video>
   <br>
   
    <!-- banner part start-->
    <!-- product_list part start-->
    <section class="product_list best_seller">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="section_tittle text-center" style="padding-top: 70px;">
                        <h2>Best Top5 <span>shop</span></h2>
                    </div>
                </div>
            </div>
            <div class="row align-items-center justify-content-between">
                <div class="col-lg-12">
                    <div class="best_product_slider owl-carousel">
                    <c:forEach items="${best}" var="item">
                    <c:set var="itempay" value="${item.itempay}" scope="request" />
                    <c:set var="sale" value="${item.sale}" scope="request" />
                    <c:set var="rcount" value="${item.rcount}" scope="request" />
                    <c:set var="rstarsum" value="${item.rstarsum}" scope="request" />
                    <c:set var="ravg" value="${item.ravg}" scope="request" />
                    <c:set var="salepay" value="${Math.floor(itempay * sale)}" scope="request" />
                    <c:set var="itemsalepay" value="${itempay - salepay}" scope="request" />
                    <a href="${contextPath}/board/itemdetail?itemnum=${item.itemnum}">
                    
                        <div class="single_product_item">
                        <div class="rank_container">
                <span class="rank_number">
                ${item.numbers}
                </span>
                </div>
                
                <c:choose>
                <c:when test="${salepay != 0}">
                <div class="badge"><script>document.write((${Math.floor(sale * 100)}).toLocaleString())</script>%</div>
                
                   </c:when>
   				<c:otherwise>
                 </c:otherwise>
 					</c:choose> 
 						 
                            <img src="${item.url}${item.imgname}" alt="">   
                                               
						<div class="single_product_text">
                                 <div class="heart-click">
                                   <c:choose>
                                    <c:when test="${ravg <= 0.5 && 0.01 <= ravg}">
                                  <span class="img-score" style="width:2%">
                                  <span class="bar"></span></span>
                                  <span class="count">${rcount}${ravg}</span>
                                  		</c:when>
                                  		
                                  		    <c:when test="${ravg <= 1 && 0.51 <= ravg}">
								 <span class="img-score" style="width:4%">
								 <span class="bar"></span></span>
								 <span class="count">${rcount}</span>
										    </c:when>
										    
										   <c:when test="${ravg <= 1.5 && 1.01 <= ravg}">
								 <span class="img-score" style="width:6%">
								 <span class="bar"></span></span>
								 <span class="count">${rcount}</span>
										    </c:when>
										    
										<c:when test="${ravg <= 2 && 1.51 <= ravg}">
								 <span class="img-score" style="width:8%">
								 <span class="bar"></span></span>
								 <span class="count">${rcount}</span>
										    </c:when>
										    
										<c:when test="${ravg <= 2.5 && 2.01 <= ravg}">
								 <span class="img-score" style="width:10%">
								 <span class="bar"></span></span>
								 <span class="count">${rcount}</span>
										    </c:when>
										    
								<c:when test="${ravg <= 3 && 2.51 <= ravg}">
								 <span class="img-score" style="width:12%">
								 <span class="bar"></span></span>						  
								 <span class="count">${rcount}</span>
										    </c:when>
										    
									<c:when test="${ravg <= 3.5 && 3.01 <= ravg}">
								 <span class="img-score" style="width:14%">
								 <span class="bar"></span></span>
								 <span class="count">$rcount}</span>
										    </c:when>
										    
									<c:when test="${ravg <= 4 && 3.51 <= ravg}">
								 <span class="img-score" style="width:16%">
								 <span class="bar"></span></span>
								 <span class="count">${rcount}</span>
										    </c:when>
										    
									<c:when test="${ravg <= 4.5 && 4.01 <= ravg}">
								 <span class="img-score" style="width:18%">
								 <span class="bar"></span></span>
								 <span class="count">${rcount}</span>
										    </c:when>
										    
									<c:when test="${ravg <= 5 && 4.51 <= ravg}">
								 <span class="img-score" style="width:20%">
								 <span class="count">${rcount}</span>
								 <span class="bar"></span></span>
										    </c:when>
										    
										    
						   				<c:otherwise>
						   		<span class="img-score" style="width:0%">
								 <span class="count">${rcount}</span>
								 <span class="bar"></span></span>
						                 </c:otherwise>
						 					</c:choose>
						    
						    
						    
						    <img src="https://image.msscdn.net/skin/musinsa/images/icon_like_small_on.png" style="width: 20px; height: 20px; display: inline-block;">
						    <span id="heartCount"><script>document.write((${item.heart}).toLocaleString())</script></span>
						  </div>
                                <h4>${item.itemname}</h4>
                             <c:choose>
    						<c:when test="${salepay != 0}">
    						<h3>가격</h3><h3 style="text-decoration: line-through;"><script>document.write((${itempay}).toLocaleString())</script>원</h3>
                               <h3>할인가</h3><h3><script>document.write((${Math.floor(itemsalepay)}).toLocaleString())</script></h3>
                           </c:when>
   						 <c:otherwise>
   						 <h3>가격</h3><h3><script>document.write((${itempay}).toLocaleString())</script>원</h3>
   						  </c:otherwise>
 						 </c:choose>     
                            </div>
                            
                        </div>
                        </a>
                         </c:forEach>
                         
                        
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- product_list start-->

       <section class="product_list section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="section_tittle text-center">
                        <h2>New Item<span>shop</span></h2>
                    </div>
                </div>
            </div>
               <div class="row align-items-center justify-content-between">
                <div class="col-lg-12">
                    <div class="best_product_slider owl-carousel">
                    <c:forEach items="${newItem}" var="item">
                    <c:set var="itempay" value="${item.itempay}" scope="request" />
                    <c:set var="sale" value="${item.sale}" scope="request" />
                    <c:set var="rcount" value="${item.rcount}" scope="request" />
                    <c:set var="rstarsum" value="${item.rstarsum}" scope="request" />
                    <c:set var="ravg" value="${item.ravg}" scope="request" />
                    <c:set var="salepay" value="${Math.floor(itempay * sale)}" scope="request" />
                    <c:set var="itemsalepay" value="${itempay - salepay}" scope="request" />
                    <a href="${contextPath}/board/itemdetail?itemnum=${item.itemnum}">
                    
                        <div class="single_product_item">
                        <div class="rank_container">
                <span class="rank_number">
                ${item.numbers}
                </span>
                </div>
                
                <c:choose>
                <c:when test="${salepay != 0}">
                <div class="badge"><script>document.write((${Math.floor(sale * 100)}).toLocaleString())</script>%</div>
                
                   </c:when>
   				<c:otherwise>
                 </c:otherwise>
 					</c:choose> 
 						 
                            <img src="${item.url}${item.imgname}" alt="">   
                                               
						<div class="single_product_text">
                                 <div class="heart-click">
                                   <c:choose>
                                    <c:when test="${ravg <= 0.5 && 0.01 <= ravg}">
                                  <span class="img-score" style="width:2%">
                                  <span class="bar"></span></span>
                                  <span class="count">${rcount}${ravg}</span>
                                  		</c:when>
                                  		
                                  		    <c:when test="${ravg <= 1 && 0.51 <= ravg}">
								 <span class="img-score" style="width:4%">
								 <span class="bar"></span></span>
								 <span class="count">${rcount}</span>
										    </c:when>
										    
										   <c:when test="${ravg <= 1.5 && 1.01 <= ravg}">
								 <span class="img-score" style="width:6%">
								 <span class="bar"></span></span>
								 <span class="count">${rcount}</span>
										    </c:when>
										    
										<c:when test="${ravg <= 2 && 1.51 <= ravg}">
								 <span class="img-score" style="width:8%">
								 <span class="bar"></span></span>
								 <span class="count">${rcount}</span>
										    </c:when>
										    
										<c:when test="${ravg <= 2.5 && 2.01 <= ravg}">
								 <span class="img-score" style="width:10%">
								 <span class="bar"></span></span>
								 <span class="count">${rcount}</span>
										    </c:when>
										    
								<c:when test="${ravg <= 3 && 2.51 <= ravg}">
								 <span class="img-score" style="width:12%">
								 <span class="bar"></span></span>						  
								 <span class="count">${rcount}</span>
										    </c:when>
										    
									<c:when test="${ravg <= 3.5 && 3.01 <= ravg}">
								 <span class="img-score" style="width:14%">
								 <span class="bar"></span></span>
								 <span class="count">$rcount}</span>
										    </c:when>
										    
									<c:when test="${ravg <= 4 && 3.51 <= ravg}">
								 <span class="img-score" style="width:16%">
								 <span class="bar"></span></span>
								 <span class="count">${rcount}</span>
										    </c:when>
										    
									<c:when test="${ravg <= 4.5 && 4.01 <= ravg}">
								 <span class="img-score" style="width:18%">
								 <span class="bar"></span></span>
								 <span class="count">${rcount}</span>
										    </c:when>
										    
									<c:when test="${ravg <= 5 && 4.51 <= ravg}">
								 <span class="img-score" style="width:20%">
								 <span class="count">${rcount}</span>
								 <span class="bar"></span></span>
										    </c:when>
										    
										    
						   				<c:otherwise>
						   		<span class="img-score" style="width:0%">
								 <span class="count">${rcount}</span>
								 <span class="bar"></span></span>
						                 </c:otherwise>
						 					</c:choose>
						    
						    
						    
						    <img src="https://image.msscdn.net/skin/musinsa/images/icon_like_small_on.png" style="width: 20px; height: 20px; display: inline-block;">
						    <span id="heartCount"><script>document.write((${item.heart}).toLocaleString())</script></span>
						  </div>
                                <h4>${item.itemname}</h4>
                             <c:choose>
    						<c:when test="${salepay != 0}">
    						<h3>가격</h3><h3 style="text-decoration: line-through;"><script>document.write((${itempay}).toLocaleString())</script>원</h3>
                               <h3>할인가</h3><h3><script>document.write((${Math.floor(itemsalepay)}).toLocaleString())</script></h3>
                           </c:when>
   						 <c:otherwise>
   						 <h3>가격</h3><h3><script>document.write((${itempay}).toLocaleString())</script>원</h3>
   						  </c:otherwise>
 						 </c:choose>     
                            </div>
                            
                        </div>
                        </a>
                         </c:forEach>
                         
                        
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- product_list part start-->

    <!-- product_list part end-->
    
    <!-- feature_part start-->
    <section class="feature_part padding_top">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="section_tittle text-center">
                        <h2>Showcase</h2>
                    </div>
                </div>
            </div>
            <div class="row align-items-center justify-content-between">
                <div class="col-lg-7 col-sm-6">
                    <div class="single_feature_post_text">
 
                        <a href="http://www.musinsa.com/cms/showcases/view/7961" class="feature_btn">EXPLORE NOW <i class="fas fa-play"></i></a>
                        <img src="${contextPath}/resources/bootstrap/img/2023072617035600000029723.jpg" alt="" style="  width: 700px;  height: 380px;" >
                    </div>
                </div>
                <div class="col-lg-5 col-sm-6">
                    <div class="single_feature_post_text">
                        <a href="http://www.musinsa.com/cms/showcases/view/7995" class="feature_btn">EXPLORE NOW <i class="fas fa-play"></i></a>
                        <img src="${contextPath}/resources/bootstrap/img/2023072709062100000007975.jpg" alt=""style=" width: 700px; height: 380px;">
                    </div>
                </div>
                <div class="col-lg-5 col-sm-6">
                    <div class="single_feature_post_text">
                        <a href="http://www.musinsa.com/cms/showcases/view/8014" class="feature_btn">EXPLORE NOW <i class="fas fa-play"></i></a>
                        <img src="${contextPath}/resources/bootstrap/img/2023072714232900000023684.jpg" alt="" style="  width: 700px;  height: 380px;">
                    </div>
                </div>
                <div class="col-lg-7 col-sm-6">
                    <div class="single_feature_post_text">
                        <a href="http://www.musinsa.com/cms/showcases/view/7990" class="feature_btn">EXPLORE NOW <i class="fas fa-play"></i></a>
                        <img src="${contextPath}/resources/bootstrap/img/2023072715443400000036833.jpg" alt="" style="  width: 700px;  height: 380px;">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- upcoming_event part start-->



    <!-- subscribe_area part start-->
            <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="section_tittle text-center" style="padding-top: 70px;">
                        <h2>Promotion</h2>
                    </div>
                </div>
            </div>
    <div style="display: flex; justify-content: center; align-items: center; height: 80vh;">
<iframe width="1280" height="720" src="https://www.youtube.com/embed/c_mO8NQRJEs" title="[무신사 영상 광고] Take and Search" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>
    <!--::subscribe_area part end::-->
<style>
.rank_container {
    position: absolute;
    top: 0;
    left: 0;
    color: #000000; 
    padding: 8px 12px;
    border-radius: 10px;
    font-size: 20px; 
    font-family: 'Arial', sans-serif; 
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.3); 
    background-color: transparent; 
}

.single_product_item {
    position: relative;
    left: 0;
}

.single_product_text {
    margin-top: 10px; 
    font-size: 14px; 
    color: #333333; 
}

.badge {
    background-color: red;
    color: white;
    border-radius: 50%; /* 원형 모양으로 만들기 위한 속성 */
    width: 40px; /* 원의 지름을 조절할 수 있습니다. */
    height: 40px; /* 원의 지름을 조절할 수 있습니다. */
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 16px; /* 텍스트 크기 조절 */
    position: absolute;
    top: 10px;
    right: 10px;
}
</style>

<style>
    .latest_product_inner {
        min-height: 400px; 
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
    }

    .latest_product_inner p {
        font-size: 18px;
        color: #333;
        font-weight: bold;
    }
    
    
    #heartCount {
    display: inline-block;
    color: #f33;
    font-weight: bold;
    line-height: 16px;
    }
    
.img-score {
    display: inline-block;
    height: 18px; /* 스타 이미지의 높이 */
    background: url(https://image.msscdn.net/skin/musinsa/images/icon_star_score.png) no-repeat 0 -120px;
    vertical-align: middle; /* 텍스트와 수직 정렬 */
}


/* 점수를 스타일링하는 CSS */
.count {
    margin-left: 3px; /* 스타 이미지와 점수 사이의 간격 조절 */
       color: #FFA500; /* 노란색 */
    font-weight: bold;
}

</style>
    <!--::footer_part start::-->
	<%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
	<%@ include file="include/javascript.jsp" %>
    <%@ include file="include/style.jsp" %>
</body>

</html>