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
	        <div class="billing_details">
	            <h3 class="text-heading">문의사항</h3>
	            <div class="row justify-content-center">
	                <div class="col">
	                    <div class="comments-area">
	                        <h3 class="display-4">질문</h3>
	                        <div class="comment-list">
	                            <div class="single-comment justify-content-between d-flex">
	                                <div class="user justify-content-between d-flex">
	                                    <div class="desc">
	                                        <h5 class="text-muted">${adminHelp.title}</h5>
	                                        <div class="d-flex justify-content-between">
	                                            <div class="d-flex align-items-center">
	                                                <h5>
	                                                    <a href="${contextPath}/board/adminMemberDetail?membernum=${adminHelp.membernum}">${adminHelp.membernum}</a>
	                                                </h5>
	                                                <p class="date">${adminHelp.hdate}</p>
	                                            </div>
	                                        </div>
	                                        <p class="comment">
	                                            ${adminHelp.content}
	                                        </p>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="comments-area">
	                        <h3 class="display-4">답변</h3>
	                        <div class="comment-list">
	                            <div class="single-comment justify-content-between d-flex">
	                                <div class="user justify-content-between d-flex">
	                                    <div class="desc">
	                                        <div class="d-flex justify-content-between">
	                                            <div class="d-flex align-items-center">
	                                                <h5>
	                                                    <p>관리자</p>
	                                                </h5>
	                                                <p class="date">${adminHelp.rehdate}</p>
	                                            </div>
	                                        </div>
	                                        <p class="comment">
	                                            ${adminHelp.recomment}
	                                        </p>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
					    <div id="commentForm" class="comment-form">
					        <h4>답변작성</h4>
					        <form class="form-contact comment_form" action="${contextPath}/board/adminHelpUpdate" method="post">
					            <div class="row">
					            	<input type="hidden" name="hno" value="${adminHelp.hno}">
					                <div class="col-12">
					                    <div class="form-group">
					                        <textarea class="form-control w-100" name="recomment" id="recomment" cols="30" rows="9">${adminHelp.recomment}</textarea>
					                    </div>
					                </div>
					            </div>
					            <div class="form-group mt-3 text-center">
					                <button type="submit" class="btn btn-primary">답변작성</button>
					            </div>
					        </form>
					    </div>
					    <div class="text-center">
						    <button id="editButton" class="btn btn-primary">답변수정</button>
						    <a href="${contextPath}/board/adminHelp" id="mainButton" class="btn btn-info">메인으로</a>
					    </div>
	                </div>
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
    
	<script>
		$(document).ready(function() {
		    var adminHelpRecomment = "${adminHelp.recomment}";
		    var commentForm = $("#commentForm");
	
		    if (adminHelpRecomment == null || adminHelpRecomment.trim() === "") {
		        commentForm.show();
		        $("#editButton").hide();
		        $("#mainButton").hide();
		    } else {
		        commentForm.hide();
		        $("#editButton").show();
		        $("#mainButton").show();
		    }
	
		    $("#editButton").click(function() {
		        commentForm.show();
		        $("#mainButton").hide();
		        $(this).hide();
		    });
		});
	</script>
	
</body>

</html>