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
                   <form class="row contact_form" action="${contextPath}/board/adminItemAdd" method="post" id="myform">
                       <table class="table">
                           <thead>
                               <tr>
                                   <th>사이즈</th>
                                   <th>색깔</th>
                                   <th>현재수량</th>
                                   <th>추가할 수량</th>
                                   <th>입고일</th>
                                   <th>상태</th>
                               </tr>
                           </thead>
                           <tbody>
                               <c:forEach items="${iv_item}" var="iv_item" varStatus="status">
                                   <tr>
                                       <td><input type="text" class="form-control" name="itemsize" id="itemsize" value="${iv_item.itemsize}" readonly/></td>
                                       <td><input type="text" class="form-control" name="itemcolor" id="itemcolor" value="${iv_item.itemcolor}" readonly/></td>
                                       <td><input type="text" class="form-control" name="itemcnt" id="itemcnt" value="${iv_item.itemcnt}" readonly/></td>
                                       <td><input type="text" class="form-control" name="itemcntadd" id="itemcntadd"/></td>
                                       <td><input type="text" class="form-control" name="iv_date" id="iv_date" value="${iv_item.iv_date}" readonly/></td>
                                       <td><input type="text" class="form-control" name="itemstate" id="itemstate" value="${iv_item.itemstate}" readonly /></td>
                                       <td><input type="hidden" class="form-control" name="iv_itemnum" id="iv_itemnum" value="${iv_item.iv_itemnum}" readonly/></td>
                                   </tr>
                               </c:forEach>
                           </tbody>
                       </table>
                     <div class="col-md-12 text-center">
                       <button type="button" class="btn btn-primary btn-lg" name="testButton" id="testButton">저장</button>
                       <a href="javascript:history.back()" class="btn btn-secondary btn-lg">목록</a>
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
   	<script type="text/javascript">
		$(document).ready(function() {
			$(document).on("click", "button[name='testButton']", function () {
			   
		      	var arr1 = $("[name=iv_itemnum]").map(function(){return this.value}).get();
		      	var arr2 = $("[name=itemcnt]").map(function(){return this.value}).get();
		      	var itemcntadd = $("[name=itemcntadd]").map(function() { return this.value }).get();
		      	
		      	var url = "${pageContext.request.contextPath }/board/adminItemAdd";
		      	
			    var paramData   = {
			    		"arr1" : arr1,
			            "arr2" : arr2,
			            "itemcntadd" : itemcntadd
			    };
			    
			    $.ajax({
			    	url:   url,
			        data:   paramData,
			        dataType: 'text',
			        type: 'POST',
			        traditional: true,
			        success: function(result){
			           console.log(result);
			           console.log("성공");
			           window.location.href = "${contextPath}/board/adminItemAdd?itemnum="+$("#iv_itemnum").val();
			        },
			        error: function(result){
			           console.log(result);
			           console.log("실패");
			        }
				});
			});
		});
	</script>
</body>

</html>