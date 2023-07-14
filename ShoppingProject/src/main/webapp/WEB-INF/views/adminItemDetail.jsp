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
	<section class="checkout_area padding_top">
	    <div class="container">  
	        <div class="row">
	          	<div class="col-lg-6">
	      			<div class="billing_details">
	            		<h3>상품 상세정보</h3>
	            		<form class="row contact_form" action="adminMemberDetail" method="get">
			            	<div class="col-md-2 form-group p_star">
				              <label for="itemnum" class="col-form-label">상품번호</label>
				            </div>  
			              	<div class="col-md-10 form-group p_star">
				              <input type="text" class="form-control" id="itemnum" name="itemnum" value="${item.itemnum}" readonly>
				            </div>
				            <div class="col-md-2 form-group p_star">
				              <label for="itemname" class="col-form-label">상품명</label>
				            </div>
				            <div class="col-md-10 form-group p_star">
				              <input type="text" class="form-control" id="itemname" name="itemname" value="${item.itemname}" readonly>
				            </div>
		              		<div class="col-md-2 form-group p_star">
				            	<label for="itempay" class="col-form-label">가격</label>
				            </div>
				        	<div class="col-md-10 form-group p_star">
				            	<input type="text" class="form-control" id="itempay" name="itempay" value="${item.itempay}" readonly>
				            </div>
		              		<div class="col-md-2 form-group p_star">
				            	<label for="itembuycnt" class="col-form-label">판매량</label>
				            </div>
			              	<div class="col-md-10 form-group p_star">
			                	<input type="text" class="form-control" id="itembuycnt" name="itembuycnt" value="${item.itembuycnt}" readonly>
			              	</div>
		              		<div class="col-md-2 form-group p_star">
				            	<label for="itemdate" class="col-form-label">상품등록일</label>
				            </div>
			              	<div class="col-md-10 form-group p_star">
			                	<input type="text" class="form-control" id="itemdate" name="itemdate" value="${item.itemdate}" readonly>
			              	</div>
		              		<div class="col-md-2 form-group p_star">
				            	<label for="itemb" class="col-form-label">대분류</label>
				            </div>
			              	<div class="col-md-10 form-group p_star">
			                	<input type="text" class="form-control" id="itemb" name="itemb" value="${item.itemb}" readonly>
			              	</div>
		              		<div class="col-md-2 form-group p_star">
				            	<label for="items" class="col-form-label">소분류</label>
				            </div>
			              	<div class="col-md-10 form-group p_star">
			                	<input type="text" class="form-control" id="items" name="items" value="${item.items}" readonly>
			              	</div>
		              		<div class="col-md-2 form-group p_star">
				            	<label for="itemcontent" class="col-form-label">상품설명</label>
				            </div>
			              	<div class="col-md-10 form-group p_star">
			                	<textarea class="form-control" id="itemcontent" name="itemcontent" readonly>${item.itemcontent}</textarea>
			              	</div>
		              		<div class="col-md-2 form-group p_star">
				            	<label for="rstar" class="col-form-label">평점</label>
				            </div>
			              	<div class="col-md-10 form-group p_star">
			                	<input type="text" class="form-control" id="rstar" name="rstar" value="${item.rstar}" readonly>
			              	</div>
	          			</form>
	          		</div>
	        	</div>
		        <div class="col-lg-6 list-group">
		        	<div class="billing_details">
				    <h3>재고 현황</h3>
				    <div class="list-group-item">
				        <table class="table table-bordered table-striped table-responsive" style="table-layout: auto;">
				            <thead class="thead-dark">
				                <tr>
				                    <th scope="col">사이즈</th>
				                    <th scope="col">색깔</th>
				                    <th scope="col">수량</th>
				                    <th scope="col">입고일</th>
				                    <th scope="col">상태</th>
				                </tr>
				            </thead>
				            <tbody>
				                <c:forEach items="${iv_item}" var="iv_item">
				                    <tr>
				                        <td>${iv_item.itemsize}</td>
				                        <td>${iv_item.itemcolor}</td>
				                        <td>${iv_item.itemcnt}</td>
				                        <td>${iv_item.iv_date}</td>
				                        <td>${iv_item.itemstate}</td>
				                    </tr>
				                </c:forEach>
				            </tbody>
				        </table>
				    </div>
				    </div>
				</div>
			</div>
			<div class="row mt-5">
	            <div class="col-md-12 form-group text-center">
	              		<button type="button" class="btn btn-primary" onclick="location.href='adminItemUpdate?itemnum=${item.itemnum}'">상품 수정</button>
	              		<button type="button" class="btn btn-danger">상품 삭제</button>
	              		<button type="button" class="btn btn-success" onclick="location.href='adminItemAdd?itemnum=${item.itemnum}'">재고 추가</button>
	            </div>
	    	</div>
	    </div>
  	</section>
    <!-- 끝 -->

    <!--::footer_part start::-->
	<%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
	<%@ include file="include/javascript.jsp" %>
    <%@ include file="include/style.jsp" %>
</body>

</html>