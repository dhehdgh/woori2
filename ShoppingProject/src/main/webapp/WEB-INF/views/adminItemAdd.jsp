<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="include/header.jsp" %>
	<style>
    .custom-billing-details {
        width: 100%; /* 원하는 너비로 조정 */
    }
	</style>
    <!-- 여기부터 작성-->
	<section class="checkout_area padding_top">
	    <div class="container">
	        <div class="row">
	            <div class="billing_details w-100">
	                <h3>상품 재고정보</h3>
	                <form class="row contact_form" action="${contextPath}/board/adminItemAdd" method="post">
	                    <table class="table">
	                        <thead>
	                            <tr>
	                            	
	                                <th>재고번호</th>
	                                <th>사이즈</th>
	                                <th>색깔</th>
	                                <th>수량</th>
	                                <th>입고일</th>
	                                <th>상태</th>
	                            </tr>
	                        </thead>
	                        <tbody>
	                            <c:forEach items="${iv_item}" var="iv_item">
	                                <tr>
	                                	
	                                    <td><input type="text" class="form-control" name="itemsize" value="${iv_item.iv_itemnum}" /></td>
	                                    <td><input type="text" class="form-control" name="itemsize" value="${iv_item.itemsize}" /></td>
	                                    <td><input type="text" class="form-control" name="itemcolor" value="${iv_item.itemcolor}" /></td>
	                                    <td><input type="text" class="form-control" name="itemcnt" value="${iv_item.itemcnt}" /></td>
	                                    <td><input type="text" class="form-control" name="iv_date" value="${iv_item.iv_date}" readonly /></td>
	                                    <td><input type="text" class="form-control" name="itemstate" value="${iv_item.itemstate}" readonly /></td>
	                                </tr>
	                            </c:forEach>
	                        </tbody>
	                    </table>
			            <div class="col-md-12 text-center">
			              <button type="submit" class="btn btn-primary btn-lg">저장</button>
			              <a href="javascript:history.back()" class="btn btn-secondary btn-lg">취소</a>
			            </div>
	                </form>
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