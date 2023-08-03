<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="include/header.jsp" %>

    <!-- 여기부터 작성-->

   <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>aranoz</title>
</head>

<body>
    <!--================Home Banner Area =================-->
    <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <!--================Category Product Area =================-->
    <section class="cat_product_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="left_sidebar_area">
<aside class="left_widgets p_filter_widgets">
    <div class="l_w_title">
        <h3>Browse Categories</h3>
    </div>
    <div class="widgets_inner">
        <ul class="list">
            <c:forEach items="${category}" var="codetable">
                <li>
                    <a href="${contextPath}/board/${codetable.codestring}">${codetable.codestring}</a><span>(${codetable.bcount})</span>
                </li>
            </c:forEach>
        </ul>
    </div>
</aside>

                     

                        <aside class="left_widgets p_filter_widgets price_rangs_aside">
                            <div class="l_w_title">
                                <h3>Price Filter</h3>
                            </div>
                            <div class="widgets_inner">
                                <div class="range_item">
                                    <div class="d-flex">
                                        <div class="price_text">
                                            <p>Price :</p>
                                        </div>
                                        <div class="price_value d-flex justify-content-center">
                                            <input type="text" class="js-input-from" id="amountFrom"  placeholder="0"/>
                                            <span>to</span>
                                            <input type="text" class="js-input-to" id="amountTo" placeholder="0"/>
                         <button onclick="searchPriceItems()">Search</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="product_top_bar d-flex justify-content-between align-items-center">
                                <div class="single_product_menu">
                                
                                    <p><span>${count} </span> Prodict Found</p>
                                </div>
                                <div class="single_product_menu d-flex">
                                    <h5>정렬 : </h5>
                                    <select onchange="searchPriceItems()">
                                        <option data-display="Select" value="1">인기순</option>
                                        <option value="2">최신순</option>
                                        <option value="3">높은 가격순</option>
                                        <option value="4">낮은 가격순</option>
                                        <option value="5">이름순</option>

                                    </select>
                                </div>
                                <div class="single_product_menu d-flex">
								    <div class="input-group">
								        <input type="text" class="form-control" id="searchField" placeholder="search" aria-describedby="inputGroupPrepend">
								        <div class="input-group-prepend">
								            <button class="input-group-text" id="inputGroupPrepend" onclick="searchPriceItems()"><i class="ti-search"></i></button>
								        </div>
								    </div>
								</div>
                            </div>
                        </div>
                    </div>   

                    <div class="row align-items-center latest_product_inner">
                       <c:choose>
    				<c:when test="${count == 0}">
            <div class="col-lg-12 text-center">
                <p>검색된 상품이 없습니다</p>
            </div>
    				    </c:when>
   						 <c:otherwise>
                    <c:forEach items="${item}" var="item">
                    <c:set var="itempay" value="${item.itempay}" scope="request" />
                    <c:set var="sale" value="${item.sale}" scope="request" />
                    <c:set var="rcount" value="${item.rcount}" scope="request" />
                    <c:set var="rstarsum" value="${item.rstarsum}" scope="request" />
                    <c:set var="ravg" value="${item.ravg}" scope="request" />
                    <c:set var="salepay" value="${Math.floor(itempay * sale)}" scope="request" />
                    <c:set var="itemsalepay" value="${Math.floor(itempay - salepay)}" scope="request" />

								<div class="col-lg-4 col-sm-6">
								    <div class="single_product_item">
								        <a href="${contextPath}/board/itemdetail?itemnum=${item.itemnum}">
								            <img src="${item.url}${item.imgname}" alt="">
								        </a>
								        <c:choose>
                                    <c:when test="${salepay != 0}">
								        <div class="badge"><script>document.write((${Math.floor(sale * 100)}).toLocaleString())</script>%</div>
								       </c:when>
						   				<c:otherwise>
						                 </c:otherwise>
						 					</c:choose> 
						 					
                                 <div class="heart-click">
                                   <c:choose>
                                    <c:when test="${ravg <= 0.5 && 0.01 <= ravg}">
                                  <span class="img-score" style="width:2%">
                                  <span class="bar"></span></span>
                                  <span class="count">${item.rcount}${ravg}</span>
                                  		</c:when>
                                  		
                                  		    <c:when test="${ravg <= 1 && 0.51 <= ravg}">
								 <span class="img-score" style="width:4%">
								 <span class="bar"></span></span>
								 <span class="count">${item.rcount}</span>
										    </c:when>
										    
										   <c:when test="${ravg <= 1.5 && 1.01 <= ravg}">
								 <span class="img-score" style="width:6%">
								 <span class="bar"></span></span>
								 <span class="count">${item.rcount}</span>
										    </c:when>
										    
										<c:when test="${ravg <= 2 && 1.51 <= ravg}">
								 <span class="img-score" style="width:8%">
								 <span class="bar"></span></span>
								 <span class="count">${item.rcount}</span>
										    </c:when>
										    
										<c:when test="${ravg <= 2.5 && 2.01 <= ravg}">
								 <span class="img-score" style="width:10%">
								 <span class="bar"></span></span>
								 <span class="count">${item.rcount}</span>
										    </c:when>
										    
								<c:when test="${ravg <= 3 && 2.51 <= ravg}">
								 <span class="img-score" style="width:12%">
								 <span class="bar"></span></span>						  
								 <span class="count">${item.rcount}</span>
										    </c:when>
										    
									<c:when test="${ravg <= 3.5 && 3.01 <= ravg}">
								 <span class="img-score" style="width:14%">
								 <span class="bar"></span></span>
								 <span class="count">${item.rcount}</span>
										    </c:when>
										    
									<c:when test="${ravg <= 4 && 3.51 <= ravg}">
								 <span class="img-score" style="width:16%">
								 <span class="bar"></span></span>
								 <span class="count">${item.rcount}</span>
										    </c:when>
										    
									<c:when test="${ravg <= 4.5 && 4.01 <= ravg}">
								 <span class="img-score" style="width:18%">
								 <span class="bar"></span></span>
								 <span class="count">${item.rcount}</span>
										    </c:when>
										    
									<c:when test="${ravg <= 5 && 4.51 <= ravg}">
								 <span class="img-score" style="width:20%">
								 <span class="count">${item.rcount}</span>
								 <span class="bar"></span></span>
										    </c:when>
										    
										    
						   				<c:otherwise>
						   		<span class="img-score" style="width:0%">
								 <span class="count">${item.rcount}</span>
								 <span class="bar"></span></span>
						                 </c:otherwise>
						 					</c:choose> 
                                  
              					  
              					  
                                 <img src="https://image.msscdn.net/skin/musinsa/images/icon_like_small_on.png">&nbsp;<span id="heartCount"><script>document.write((${item.heart}).toLocaleString())</script></span>
                                 </div>
                                <div class="single_product_text">
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
                                    <a href="${contextPath}/board/itemdetail?itemnum=${item.itemnum}">+ add to cart</a>
                                </div>
                            </div>
                        </div>
                       
                        </c:forEach>

                        
                        
<div class="col-lg-12">
    <div class="pageination">
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">

                <!-- 이전 페이지 링크 -->
                <li class="page-item">
                    <c:choose>
                        <c:when test="${currentPage > 1}">
                            <a class="page-link" href="${contextPath}/board/allItem?page=${currentPage - 1}&pageSize=${pageSize}" aria-label="Previous">
                                <i class="ti-angle-double-left"></i>
                            </a>
                        </c:when>
                        <c:otherwise>
                            <span class="page-link disabled" aria-disabled="true" aria-label="Previous">
                                <i class="ti-angle-double-left"></i>
                            </span>
                        </c:otherwise>
                    </c:choose>
                </li>

                <!-- 페이지 번호 링크 -->
                <c:forEach var="pageNum" begin="1" end="${totalPages}">
                    <li class="page-item">
                        <c:choose>
                            <c:when test="${pageNum == currentPage}">
                                <span class="page-link active">${pageNum}</span>
                            </c:when>
                            <c:otherwise>
                                <a class="page-link" href="${contextPath}/board/allItem?page=${pageNum}&pageSize=${pageSize}">${pageNum}</a>
                            </c:otherwise>
                        </c:choose>
                    </li>
                </c:forEach>

                <!-- 다음 페이지 링크 -->
                <li class="page-item">
                    <c:choose>
                        <c:when test="${currentPage < totalPages}">
                            <a class="page-link" href="${contextPath}/board/allItem?page=${currentPage + 1}&pageSize=${pageSize}" aria-label="Next">
                                <i class="ti-angle-double-right"></i>
                            </a>
                        </c:when>
                        <c:otherwise>
                            <span class="page-link disabled" aria-disabled="true" aria-label="Next">
                                <i class="ti-angle-double-right"></i>
                            </span>
                        </c:otherwise>
                    </c:choose>
                </li>

            </ul>
        </nav>
    </div>
</div>
                                   </c:otherwise>
 						 </c:choose>              
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Category Product Area =================-->

    <!-- product_list part start-->
    <section class="product_list best_seller">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="section_tittle text-center">
                        <h2>Best Sellers <span>shop</span></h2>
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
                    <a href="${contextPath}/board/itemDetail?itemnum=${item.itemnum}">
                    
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
    
  
<script>
  function searchPriceItems() {
	  
	  
    var currentPage = 1;
    var startPriceInput = document.getElementById("amountFrom");
    var endPriceInput = document.getElementById("amountTo");
    var sortSelect = document.querySelector("select");
    var searchField = document.getElementById("searchField").value;
    var sortOption = sortSelect.value;

    if (startPriceInput === null || endPriceInput === null || sortSelect === null) {
      console.error("Input elements are not found.");
      return;
    }

    var startPrice = startPriceInput.value !== "" ? parseInt(startPriceInput.value) : 0;
    var endPrice = endPriceInput.value !== "" ? parseInt(endPriceInput.value) : 999999;

    var newURL =
      "${contextPath}/board/allItem?page=" +
      currentPage +
      "&pageSize=${pageSize}" +
      "&startpay=" +
      startPrice +
      "&endpay=" +
      endPrice +
      "&item_sortby=" +
      sortOption +
      "&searchField=" +
      searchField;

    window.location.href = newURL;
  }

  // 이벤트 리스너 추가: 정렬 옵션이 변경될 때마다 searchPriceItems() 함수 호출
  document.addEventListener('DOMContentLoaded', function () {
    var sortSelect = document.querySelector("select");
    sortSelect.addEventListener("change", searchPriceItems);
  });
</script>
  
  <script>
    document.addEventListener('DOMContentLoaded', function () {
        var itemsortby = '${itemsortby}'; // Assuming '${itemsortby}' holds the value from the server-side

        var selectElement = document.querySelector('select');
        var options = selectElement.options;
        for (var i = 0; i < options.length; i++) {
            if (options[i].value === itemsortby) {
                options[i].selected = true;
                break;
            }
        }
    });
</script>
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


    <!-- 끝 -->

    <!--::footer_part start::-->
	<%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
	<%@ include file="include/javascript.jsp" %>
    <%@ include file="include/style.jsp" %>
</body>

</html>