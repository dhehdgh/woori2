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

	    <!--================Category Product Area =================-->
    <section class="cat_product_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="left_sidebar_area">
                        <aside class="left_widgets p_filter_widgets">
                            <div class="l_w_title">
                                <h3>Categories</h3>
                            </div>
                            <div class="widgets_inner">
                            <form id="sortForm" action="skirt" method="post">
                                <ul class="list">
                                	<li>
									    <a href="#"  onclick="handleSortBySelection('default')">전체</a>
									</li>
                                    <li>
									    <a href="#" id="autoClickLink" onclick="handleSortBySelection('items01')">미니스커트</a>
									</li>
                                    <li>
                                        <a href="#" id="autoClickLink1" onclick="handleSortBySelection('items02')">미디스커트</a>
                                    </li>
                                    <li>
                                        <a href="#" id="autoClickLink2" onclick="handleSortBySelection('items03')">롱스커트</a>
                                    </li>
                                </ul>
                                <input type="hidden" name="sortBy" id="sortByInput" value="">
					    	</form>
                            </div>
                        </aside>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="product_top_bar d-flex justify-content-between align-items-center">
                                <div class="single_product_menu">
                                	<p>Skirt</p>
                                    <c:if test="${not empty keyword and searchResultCount > 0}">
									    <p>'${keyword}' ${searchResultCount}개의 검색 결과가 있습니다.</p>
									</c:if>
									<c:if test="${empty keyword or searchResultCount == 0}">
									    <p>상품 수 :  <span>${totalCount}</span>개</p>
									</c:if>
                                </div>
                                <div class="single_product_menu d-flex">
                                    <div class="input-group">
                                    <form action="${contextPath}/board/skirt" method="get" style="display: flex;">
                                        <input type="text" class="form-control" placeholder="search" aria-label="Search"
           									aria-describedby="basic-addon2" id="keyword" name="keyword" value="${keyword}">
                                        <div class="input-group-prepend">
                                            <button class="input-group-text" type="submit"><i class="ti-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-center latest_product_inner">
				     <c:forEach var="itemDTO" items="${itemDTO}">
					    <div class="col-lg-4 col-sm-6">
					        <div class="single_product_item">
					            <a href="${contextPath}/board/itemdetail?itemnum=${itemDTO.itemnum}" class="itemdetail"><img src="${itemDTO.url}${itemDTO.imgname}" alt=""></a>
					            <div class="single_product_text">
					                <h4>${itemDTO.itemname}</h4>
					                <h3><span id="itemPrice_${itemDTO.itemnum}">${itemDTO.itempay}원</span></h3>
					                <span id="discountpay_${itemDTO.itemnum}" style="visibility: hidden;"></span>
					                <c:if test="${itemDTO.sale > 0}">
					                    <script>
					                        var itemPrice_${itemDTO.itemnum} = ${itemDTO.itempay};
					                        var discountRate_${itemDTO.itemnum} = ${itemDTO.sale} * 100;
					                        var discountpay_${itemDTO.itemnum} = itemPrice_${itemDTO.itemnum} - (itemPrice_${itemDTO.itemnum} * ${itemDTO.sale});
					
					                        var itemPriceElement_${itemDTO.itemnum} = document.getElementById("itemPrice_${itemDTO.itemnum}");
					                        var discountpayElement_${itemDTO.itemnum} = document.getElementById("discountpay_${itemDTO.itemnum}");
					
					                        if (discountRate_${itemDTO.itemnum} !== 0) {
					                            discountpayElement_${itemDTO.itemnum}.style.visibility = "visible";
					                            discountpayElement_${itemDTO.itemnum}.innerHTML = "<h3>&nbsp; " + discountpay_${itemDTO.itemnum} + "원</h3>";
					                            itemPriceElement_${itemDTO.itemnum}.innerHTML = "<span style='text-decoration: line-through; color: gray;'>" + itemPrice_${itemDTO.itemnum} + "원</span>";
					                        }
					                    </script>
					                </c:if>
					            </div>
					        </div>
					    </div>
					</c:forEach>

                        <!-- 페이징 처리 -->
						<div class="col-lg-12">
						    <div class="pagination">
						    	<nav aria-label="Page navigation example">
						            <ul class="pagination justify-content-center">
								        <c:choose>
								            <c:when test="${currentPage > 1}">
								                <li class="page-item"><a class="page-link" href="${contextPath}/board/skirt?page=${currentPage - 1}&pageSize=${pageSize}&sortBy=${sortBy}&keyword=${keyword}" aria-label="Previous">
								                <i class="ti-angle-double-left"></i></a></li>
								            </c:when>
								            <c:otherwise>
								                <li class="page-item"><a class="page-link" aria-label="Previous">
								                <i class="ti-angle-double-left"></i></a></li>
								            </c:otherwise>
								        </c:choose>
								        
								        <c:forEach var="pageNum" begin="1" end="${totalPages}">
								            <c:choose>
								                <c:when test="${pageNum == currentPage}">
								                    <li class="page-item"><a class="page-link"><span class="active">${pageNum}</span></a></li>
								                </c:when>
								                <c:otherwise>
								                    <li class="page-item"><a class="page-link" href="${contextPath}/board/skirt?page=${pageNum}&pageSize=${pageSize}&sortBy=${sortBy}&keyword=${keyword}">${pageNum}</a></li>
								                </c:otherwise>
								            </c:choose>
								        </c:forEach>
								   
								        <c:choose>
								            <c:when test="${currentPage < totalPages}">
								                <li class="page-item"><a class="page-link" href="${contextPath}/board/skirt?page=${currentPage + 1}&pageSize=${pageSize}&sortBy=${sortBy}&keyword=${keyword}" aria-label="Next">
								                <i class="ti-angle-double-right"></i></a></li>
								            </c:when>
								            <c:otherwise>
								                <li class="page-item"><a class="page-link" aria-label="Next">
								                <i class="ti-angle-double-right"></i></a></li>
								            </c:otherwise>
								        </c:choose>
						         	</ul>
						        </nav>
						    </div>
						</div>
						<!-- 페이징 처리 끝 -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Category Product Area =================-->
   	
   	<!-- product_list part start-->
   	
   	
   	
    <!-- product_list part end-->
   
    <!-- 끝 -->

    <!--::footer_part start::-->
	<%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
	<%@ include file="include/javascript.jsp" %>
    <%@ include file="include/style.jsp" %>
    
    
    
    
    
  <!-- script start -->
<script>
  // 드롭다운 메뉴에서 항목을 선택했을 때 처리하는 함수
  function handleSortBySelection(sortBy) {
      document.getElementById("sortByInput").value = sortBy;
      document.getElementById("sortForm").submit();
  }
</script>
<script>
window.onload = function() {
  var path = ${path}; // JSP에서 받은 path 값을 JavaScript 변수로 가져옴
  
  
  if (path == 1) {
	    var link = document.getElementById('autoClickLink');
	    link.click(); // 해당 링크를 자동으로 클릭
	} else if (path == 2) {
	    var link = document.getElementById('autoClickLink1');
	    link.click(); // 해당 링크를 자동으로 클릭
	} else if (path == 3) {
	    var link = document.getElementById('autoClickLink2');
	    link.click(); // 해당 링크를 자동으로 클릭
	}  else {
		alert(path)
	}
}

</script>

<script>
  function goToNextPage() {
    document.getElementById("nextPageForm").submit();
  }
</script>
    
    
   <!-- script end -->
     
</body>

</html>