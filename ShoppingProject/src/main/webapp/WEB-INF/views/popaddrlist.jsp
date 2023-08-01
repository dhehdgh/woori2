<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>NUSINSA</title>
    <link rel="icon" href="${contextPath}/resources/bootstrap/img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/owl.carousel.min.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/all.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/flaticon.css">
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/themify-icons.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/magnific-popup.css">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/style.css">
        <!-- Header part end-->
<link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
      rel="stylesheet"
    />
        <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/tailwind.output.css" />
        
        
        
        
        	<link href="${contextPath}/resources/bootstrap/style.min.css" rel="stylesheet">
            <link rel="stylesheet" type="text/css" href="${contextPath}/resources/bootstrap/multicheck/multicheck.css">
            
            
</head>
<script>
//기본배송지로 설정
function addrbasic(addrnum){
	 location.href="popaddrbasic?addrnum=" + addrnum.value;   
}
//수정버튼
function addrupdate(addrnum){
		location.href='popaddrupdate?addrnum=' + addrnum.value;          
}

//삭제버튼
function addrdelete(addrnum){
    	location.href='popaddrdelete?addrnum=' + addrnum.value;      	 
}

//팝업 오픈
function openPop2() {
		window.open("popaddrinsert", "pop2", "width=500, height=800, top=500, left=300");
}

</script>


<body>
 <section class="cat_product_area section_padding">
 
    <div class="container">
       <div class="row"> 
 
     <div class="card-body">  
          	<h4 style="display:inline" class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">
            배송지 관리</h4>
            <div style="float:right">
            <button id="insert" name="insert" class="btn-insert" 
                          style="    width: 116px;
						    padding: 5px 3px 3px;
						    margin-bottom: 7px;
						    font-size: 12px;
						    letter-spacing: -1px;
						    border: 1px solid #ccc;
						    border-radius: 2px;
						    color: #0073e9;
						    text-align: center;
						    background: #fff;
						    cursor: pointer;
						    border: 1px solid #346AFF;
						    position: relative"
    						value=""
    						onclick="openPop2()"
    						> + 배송지 추가
                          </button></div><br>
                                        
            <div class="w-full overflow-hidden rounded-lg shadow-xs">
              <div class="w-full overflow-x-auto">
                <table class="w-full whitespace-no-wrap">
                   <thead>
                    <tr
                      class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800"
                    >
                      <th class="px-4 py-3"></th>
                      
                    </tr>
                  </thead>
                  <tbody
                    class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800"
                  >
                  	<c:forEach var="addrlist" items="${addrlist}" varStatus="status">
                  	<input type = "hidden" name=addrnum${status.index} value= "${addrlist.addrnum}" id=addrnum${status.index} /> 
                  	<input type = "hidden" name=addrstate${status.index} value= "${addrlist.addrstate}" id=addrstate${status.index} /> 
                    <tr class="text-gray-700 dark:text-gray-400">
                      <td class="px-4 py-3">
                        <div  class="flex items-center text-sm">
                          <!-- Avatar with inset shadow -->
                        
                      		
                          <div style="padding:30px;width:calc(100% - 126px)">
                           <c:set var="name" value="${addrlist.addrstate}" />
                          <c:choose>
	                      		<c:when test="${name == 1}">    
		                          <span style="                          
								    height: 14px;	
								    marjin: 0px;					    
								    padding: 4px;
								    border: 1px solid #555;
								    border-radius: 10px;
								    font-size: 11px;
								    font-family: dotum,sans-serif;
								    line-height: 11px;
								    vertical-align: middle;
								    box-sizing: content-box !important;
								    border-color: #555;
								    color: #555;
								    float: none;
								    display: inline-block;
								    margin-right: 4px;
								    margin-left: 0;">
		    						기본배송지</span>
    							</c:when>
    							<c:otherwise> 
    							 <input type="hidden" value="${addrlist.addrstate}">
    							</c:otherwise>
    						</c:choose>
                            <p class="font-semibold">${addrlist.delpostcode}</p>
                            <span>
                              ${addrlist.delroadaddr}<br>
                              (${addrlist.deljibunaddr}) <br>                             
                              ${addrlist.deldetailaddr}
                              </span>
                            </p>
                          </div>
                          <div style="float:right">
                           <button id="basic" name="basic" 
                          style="    width: 116px;
						    padding: 5px 3px 3px;
						    margin-bottom: 7px;
						    font-size: 12px;
						    letter-spacing: -1px;
						    border: 1px solid #ccc;
						    border-radius: 2px;
						    color: #0073e9;
						    text-align: center;
						    background: #fff;
						    cursor: pointer;
						    border: 1px solid #346AFF;
						    position: relative"
    						value=""
    						 onclick="addrbasic(addrnum${status.index})">기본배송지로 설정
                          </button> <br>
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
						    border: 1px solid #ccc;
						    margin-bottom: 7px"
						    onclick="addrupdate(addrnum${status.index})" >수정
    						</button><br>
                          <button id="delete" name="delete" class="btn-cancle" value=""
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
						    onclick="addrdelete(addrnum${status.index})" >삭제
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
            </div>
                     
         </div>
      </div>
   </section>
<!-- 레프트컬럼 끝 -->

   
</body>
<!-- jquery plugins here-->
<%@ include file="include/javascript.jsp"%>
<%@ include file="include/style.jsp"%>

</html>