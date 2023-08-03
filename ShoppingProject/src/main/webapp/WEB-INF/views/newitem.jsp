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
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="product_top_bar d-flex justify-content-between align-items-center">
                                <div class="single_product_menu">
                                    <p>New Item</p>
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

    
   <!-- script end -->
     
</body>

</html>