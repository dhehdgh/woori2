<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
              
		<!-- 리뷰 테이블 -->
            <h4
              class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300"
            >
            </h4>
            <div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
              <div class="w-full overflow-x-auto">
                <table class="w-full whitespace-no-wrap">
                	<colgroup>
				        <col style="width: 1%;" />
				        <col style="width: 35%;" />
				        <col style="width: 16%;" />
				        <col style="width: 1%;" />
				        <col style="width: 1%;" />
				        <col style="width: 1%;" />
					</colgroup>
                	<thead>
                    <tr
                      class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800"
                    >
                      <th class="px-4 py-3"></th>
                      <th class="px-4 py-3">리뷰</th>
                      <th colspan="2" style="border: none;">
							<!-- 검색어 입력 폼 추가 -->
								<div style="display: flex;">
								    <form action="${contextPath}/board/itemdetail" method="get" style="display: flex;">
									    <input type="text" class="form-control bg-light border-1 small" placeholder="검색" aria-label="Search"
									           aria-describedby="basic-addon2" id="keyword" name="keyword" value="${keyword}">
									    <div>
									        <button class="btn btn-primary" type="submit">
									            <i class="fas fa-search fa-sm"></i>
									        </button>
									    </div>
									</form>
								</div>

						</th>
                      <th class="px-4 py-3"><div class="input-group">
					   	 <form id="sortForm" action="itemdetail?itemnum=${itemDTO.itemnum}" method="post">
					        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="sortDropdown">
					            <a class="dropdown-item" href="#" onclick="handleSortBySelection('rstar')">별점↑</a>
					            <a class="dropdown-item" href="#" onclick="handleSortBySelection('rstarDesc')">별점↓</a>
					            <a class="dropdown-item" href="#" onclick="handleSortBySelection('reviewlike')">리뷰도움수↑</a>
					            <a class="dropdown-item" href="#" onclick="handleSortBySelection('reviewlikeDesc')">리뷰도움수↓</a>
					            <a class="dropdown-item" href="#" onclick="handleSortBySelection('rdate')">작성일↑</a>     
					            <a class="dropdown-item" href="#" onclick="handleSortBySelection('rdateDesc')">작성일↓</a>
					        </div>
					        <button class="btn dropdown-toggle" type="button" id="sortDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					            정렬 기준
					        </button>
					        <input type="hidden" name="sortBy" id="sortByInput" value="">
					    	</form>
					</div></th>
                    </tr>
                  	</thead>
                  	
                  	<c:if test="${not empty keyword and searchResultCount > 0}">
					    <p>'${keyword}' ${searchResultCount}개의 검색 결과가 있습니다.</p>
					</c:if>
                  	
                  <div id="reviewSection" tabindex="-1">
                  <c:forEach var="review" items="${review}">
                  <tbody
                    class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
                    <tr class="text-gray-700 dark:text-gray-400">
                    
                      <td class="px-4 py-3 text-sm">
                      </td>
                      
                      <!-- 2 -->
                      <td class="px-4 py-3">
                        <div class="flex items-center text-sm">
                        
                          <div>
                            <p class="font-semibold">&nbsp;&nbsp; ${review.id}</p>
                            <div class="review_box">
								  <ul class="list">
								    <li>
								      <a href="#">
								        <i class="${review.rstar >= 1 ? 'fa fa-star' : 'far fa-star'}"></i>
								      </a>
								    </li>
								    <li>
								      <a href="#">
								        <i class="${review.rstar >= 2 ? 'fa fa-star' : 'far fa-star'}"></i>
								      </a>
								    </li>
								    <li>
								      <a href="#">
								        <i class="${review.rstar >= 3 ? 'fa fa-star' : 'far fa-star'}"></i>
								      </a>
								    </li>
								    <li>
								      <a href="#">
								        <i class="${review.rstar >= 4 ? 'fa fa-star' : 'far fa-star'}"></i>
								      </a>
								    </li>
								    <li>
								      <a href="#">
								        <i class="${review.rstar >= 5 ? 'fa fa-star' : 'far fa-star'}"></i>
								      </a>
								      ${review.rstar}
								    </li>
								  </ul>
								</div>
                            
                            <br>
                            <p class="text-xs text-gray-600 dark:text-gray-400">
                              ${review.rcontent}
                            </p>
                            <br>
                            <p class="text-xs text-gray-600 dark:text-gray-400">
                              <font class="font-semibold" size=2>${review.reviewlike}</font><font size=2>명에게 도움 됨</font>
                              <a href="javascript:void(0)" class="genric-btn success-border small reviewlikeButton" data-reviewno-id="${review.reviewno}">도움돼요</a>

                            </p>
                          </div>
                        </div>
                      </td>
                      <!-- 2 end -->
                      
                      <td class="px-4 py-3 text-sm">
                      	<!--  -->
                      </td>
                      
                      <td class="px-4 py-3 text-sm">
                      	
                      </td>
                      
                      <td class="px-4 py-3 text-sm">
                      	<input type="hidden" id="reviewno" value="${review.reviewno}">
                      	${review.rdate}
                      	<p></p>
                      	<a href="javascript:drriview(${review.reviewno})" class="genric-btn default-border circle">신고하기</a>
                      </td>
                      
                      <td></td>
                    </tr>
                    <tr><hr></tr>
                  </tbody>
                  </c:forEach>
                  </div>
                </table>
              </div>
              <div
                class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800"
              >
              <span class="flex items-center col-span-3">
                  Showing ${currentPage} of ${totalPages}
                </span>
                <span class="col-span-2"></span>
				<!-- 페이징 처리 -->
				<span class="flex col-span-4 mt-2 sm:mt-auto sm:justify-end">
				    <div class="pagination">
				        <c:choose>
				            <c:when test="${currentPage > 1}">
				                <a href="${contextPath}/board/itemdetail?itemnum=${itemDTO.itemnum}&amp;page=${currentPage - 1}&amp;pageSize=${pageSize}&amp;sortBy=${sortBy}&amp;keyword=${keyword}">&laquo; </a>
				            </c:when>
				            <c:otherwise>
				                <span class="disabled">&laquo; </span>
				            </c:otherwise>
				        </c:choose>
				        <c:forEach var="pageNum" begin="1" end="${totalPages}">
				            <c:choose>
				                <c:when test="${pageNum == currentPage}">
				                    <span class="active">${pageNum}</span>
				                </c:when>
				                <c:otherwise>
				                    <a href="${contextPath}/board/itemdetail?itemnum=${itemDTO.itemnum}&amp;page=${pageNum}&amp;pageSize=${pageSize}&amp;sortBy=${sortBy}&amp;keyword=${keyword}">${pageNum}</a>
				                </c:otherwise>
				            </c:choose>
				        </c:forEach>
				        <c:choose>
				            <c:when test="${currentPage < totalPages}">
				                <a href="${contextPath}/board/itemdetail?itemnum=${itemDTO.itemnum}&amp;page=${currentPage + 1}&amp;pageSize=${pageSize}&amp;sortBy=${sortBy}&amp;keyword=${keyword}"> &raquo;</a>
				            </c:when>
				            <c:otherwise>
				                <span class="disabled"> &raquo;</span>
				            </c:otherwise>
				        </c:choose>
				    </div>
				</span>
				<!-- 페이징 처리 끝 -->
				
              </div>
            </div>
            