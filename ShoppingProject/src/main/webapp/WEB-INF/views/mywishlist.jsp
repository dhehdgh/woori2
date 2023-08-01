<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
//삭제버튼 눌렀을때
function likedelete(zno){
	alert("찜목록에서 삭제되었습니다."); 
	 location.href="likedelete?zno=" + zno.value;   
}

$(function() {	
	var checkbox = document.getElementById("checkbox");
	var checkcnt = checkbox.length;
	
	//전체체크 눌렀을때
	$("input[name='allcheck']").click(function() { 
		var checkbox_arr = $("input[name='checkbox']"); 
		for(var i=0;i<checkbox_arr.length;i++){			//체크박스갯수만큼 체크박스가 체크륿 반복
			checkbox_arr[i].checked = this.checked;
		}
	});
	//체크박스 눌렀을때
	$("input[name='checkbox']").click(function() {
		//체크박스가 전부 체크되어 있다면 전체체크에 체크되어지게
		if($("input[name='checkbox']:checked").length == checkcnt){
			$("input[name='allcheck']")[0].checked = true;
		}
		//아니면 전체체크에 체크 풀어지게
		else{
			$("input[name='allcheck']")[0].checked = false;
		}
	});
});
function seleckcheck(){
	var url = "${pageContext.request.contextPath}/board/selectdelete";
	var valuearr = new Array();
	var list = $("input[name='checkbox']");
	for(var i=0;i<list.length;i ++){
		if(list[i].checked){ //체크박스가 선택되어 있으면 valuearr배열에 값을 저장
			valuearr.push(list[i].value);
		}
	}
	if(valuearr.length == 0){
		alert("선택된 상품이 없습니다.");
	}
	else{
		alert("찜목록에서 삭제되었습니다.");
		$.ajax({
			url:url,
			type:"POST",
			traditional:true,
			data: {
				valuearr : valuearr
			},
			success: function(jdata){
				if(jdata = 1){
					location.replace("mywishlist")
				}
				else{
					alert("error");
				}
			}
		});
	}
}
	
</script>
<%@ include file="include/header.jsp"%>
<body>
 <section class="cat_product_area section_padding">
 
    <div class="container">
       <div class="row"> 
<%@ include file="include/mypage_left_column.jsp"%>
 
     <div class="card-body">  
    		<span class="ti-heart" style="display:inline"></span>
          	<h4 style="display:inline" class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">
            내찜목록</h4>
            <div class="w-full overflow-hidden rounded-lg shadow-xs">
              <div class="w-full overflow-x-auto">
                <table class="w-full whitespace-no-wrap">
                   <thead>
                    <tr
                      class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800"
                    >
                      <th class="px-4 py-3">
                      <input type="checkbox"  id="allcheck" name="allcheck" style="accent-color: #0073e9;margin-right: 10px" checked="checked" class="all-select-chk" />
                    	<span class="select-txt st-select-text"> 전체선택 
                    	<input type="button" 
                    		id="seleckcheck"
                    		name="seleckcheck"
                    	 style="width: 116px;
						    padding: 5px 10px 5px 9px;
						    font-size: 13px;
						    letter-spacing: -1px;
						    border: 1px solid #ccc;
						    border-radius: 2px;
						    color: #0073e9;
						    text-align: center;
						    background: #fff;
						    cursor: pointer;
						    margin-left: 10px"
						    value="선택삭제"
						 onclick="seleckcheck()" />
                </span>
                      
                      </th>
                      
                    </tr>
                  </thead>
                  <tbody
                    class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800"
                  >
                  	<c:forEach var="likelist" items="${likelist}" varStatus="status">
                  	<input type = "hidden" name=zno${status.index} value= "${likelist.zno}" id=zno${status.index} /> 
                  	<input type = "hidden" name=itemnum${status.index} value= "${likelist.itemnum}" id=itemnum${status.index} /> 
                    <tr class="text-gray-700 dark:text-gray-400">
                      <td class="px-4 py-3">
                        <div  class="flex items-center text-sm">
                          <!-- Avatar with inset shadow -->
                          <div>    
                          	<input type="checkbox"  id="checkbox" name="checkbox" value="${likelist.zno}" style="accent-color: #0073e9;margin-right: 10px" checked="checked"/>
                            <a href="itemdetail?itemnum=${likelist.itemDTO.itemnum}">             	
                            <img  style="max-width: 150px"  
                              src="${likelist.imgDTO.url}${likelist.imgDTO.imgname}"
                              alt=""
                              loading="lazy"
                            /></a>
                       
                          </div>
                          <div style="padding:50px;width: calc(100% - 300px)">
                            <p class="font-semibold"><a href="itemdetail?itemnum=${likelist.itemnum}">${likelist.itemDTO.itemname}</a></p>
                            <p class="text-xs text-gray-600 dark:text-gray-400">
                              ${likelist.itembname}/${likelist.itemsname} <br>
                              <span style="color:#ae0000">
                              ${likelist.itemDTO.itempay} 원
                              </span>
                            </p>
                          </div>
                          <div style="float:right">
                          
                          <button id="cancle" name="cancle" class="btn-cancle" value=""
                          style="width: 116px;
						    padding: 5px 3px 3px;
						    font-size: 12px;
						    letter-spacing: -1px;
						    border: 1px solid #ccc;
						    border-radius: 2px;
						    color: #0073e9;
						    text-align: center;
						    background: #fff;
						    cursor: pointer;
						    border: 1px solid #ccc"
						    onclick="likedelete(zno${status.index})" >찜삭제
    						</button>
                          </div>
                          </div>
                          
                        
                      </td>                                   
                    </tr>
                    </c:forEach>
                  </tbody>
                </table>
              </div>
              </div>
<!-- 페이징 처리 -->
<div class="pagination">
    <c:choose>
        <c:when test="${currentPage > 1}">
            <a href="${contextPath}/board/mywishlist?page=${currentPage - 1}&pageSize=${pageSize}">&laquo; 이전</a>
        </c:when>
        <c:otherwise>
            <span class="disabled">&laquo; 이전</span>
        </c:otherwise>
    </c:choose>
    <c:forEach var="pageNum" begin="1" end="${totalPages}">
        <c:choose>
            <c:when test="${pageNum == currentPage}">
                <span class="active">${pageNum}</span>
            </c:when>
            <c:otherwise>
                <a href="${contextPath}/board/mywishlist?page=${pageNum}&pageSize=${pageSize}">${pageNum}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    <c:choose>
        <c:when test="${currentPage < totalPages}">
            <a href="${contextPath}/board/mywishlist?page=${currentPage + 1}&pageSize=${pageSize}">다음 &raquo;</a>
        </c:when>
        <c:otherwise>
            <span class="disabled">다음 &raquo;</span>
        </c:otherwise>
    </c:choose>
</div>
<!-- 페이징 처리 끝 -->	    
            </div>
                     
         </div>
      </div>
   </section>
<!-- 레프트컬럼 끝 -->
<style>
    /* 페이징 스타일 */
    .pagination {
        display: flex;
        justify-content: center;
        margin-top: 20px;
    }
    .pagination a,
    .pagination span {
        padding: 8px 12px;
        margin-right: 5px;
        text-decoration: none;
        color: #333;
        background-color: #f2f2f2;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    .pagination a:hover {
        background-color: #e0e0e0;
    }
    .pagination .active {
        background-color: #007bff;
        color: #fff;
    }
    .pagination .disabled {
        pointer-events: none;
        cursor: default;
        background-color: #f2f2f2;
        color: #ccc;
    }
</style>
   <!--::footer_part start::-->
   <%@ include file="include/footer.jsp"%>
   <!--::footer_part end::-->
</body>
<!-- jquery plugins here-->
<%@ include file="include/javascript.jsp"%>
<%@ include file="include/style.jsp"%>

</html>