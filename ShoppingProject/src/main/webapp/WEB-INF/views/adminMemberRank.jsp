<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="include/admin_header.jsp" %>

    <!-- 여기부터 작성-->
	<div id="wrapper">
	
	<div id="snb" class="col-md-3">
        <div class="snb_header ico_config">
            <h2><i class="ionicons ion-ios-people fs40"></i>회원관리</h2>
        </div>
        <dl class="nav flex-column">
            <dt class="m10 menu_toggle">회원관리</dt>
            <dd class="m10">
                <a class="nav-link" href="${contextPath}/board/adminMember">회원 정보관리</a>
            </dd>
            <dd class="m10 active">
                <a class="nav-link" href="${contextPath}/board/adminMemberRank">회원 등급관리</a>
            </dd>
            <dd class="m10">
                <a class="nav-link" href="${contextPath}/board/adminMemberRegister">회원 등록하기</a>
            </dd>
            <dt class="m10 menu_toggle">상품관리</dt>
            <dd class="m10">
                <a class="nav-link" href="${contextPath}/board/adminItem">전체 상품관리</a>
            </dd>
            <dd class="m10">
                <a class="nav-link" href="${contextPath}/board/adminItemInsert">상품 추가하기</a>
            </dd>
        </dl>
    </div>
	<div id="content">
		<div class="breadcrumb">
			<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 회원관리 <i class="ionicons ion-ios-arrow-right"></i> 회원 등급관리		
	</div>
	
<div class="s_wrap">
	<h1>회원 등급관리</h1>
	
<h2>세부설정</h2>
<form name="frmlist" method="post" action="${contextPath}/board/adminMemberRank">
<div class="tbl_head01">
	<table>
	<colgroup>
		<col class="w70">
		<col class="w170">
		<col class="w130">
		<col class="w150">
		<col>
	</colgroup>
	<thead>
	<tr>
		<th scope="col">등급</th>
		<th scope="col">레벨명</th>
		<th scope="col">할인률</th>
		<th scope="col">비고</th>
	</tr>
	</thead>
	<tbody class="list">
		<tr class="list1">
			<td class="bold">
				Lv.6	<input type="hidden" name="gb_no[6]" value="6">
				<input type="hidden" name="chk[]" value="6" checked>
			</td>
			<td><input type="text" name="gb_name[6]" value="다이아" class="form-control"></td>
			<td>
				<input type="text" name="gb_sale[6]" value="0" class="form-control w-50 d-inline">
				<select name="gb_sale_rate[6]" class="form-control w-auto d-inline">
					<option value="0" selected="selected">%</option>
					<option value="1">원</option>
				</select>
			</td>
			<td class="tal">최고 등급 회원</td>
		</tr>
		<tr class="list0">
			<td class="bold">
				Lv.5	<input type="hidden" name="gb_no[5]" value="5">
				<input type="hidden" name="chk[]" value="5" checked>
			</td>
			<td><input type="text" name="gb_name[5]" value="플래티넘" class="form-control"></td>
			<td>
				<input type="text" name="gb_sale[5]" value="0" class="form-control w-50 d-inline">
				<select name="gb_sale_rate[5]" class="form-control w-auto d-inline">
					<option value="0" selected="selected">%</option>
					<option value="1">원</option>
				</select>
			</td>
			<td class="tal">포인트 30000~70000</td>
		</tr>
		<tr class="list1">
			<td class="bold">
				Lv.4	<input type="hidden" name="gb_no[4]" value="4">
				<input type="hidden" name="chk[]" value="4" checked>
			</td>
			<td><input type="text" name="gb_name[4]" value="골드" class="form-control"></td>
			<td>
				<input type="text" name="gb_sale[4]" value="0" class="form-control w-50 d-inline">
				<select name="gb_sale_rate[4]" class="form-control w-auto d-inline">
					<option value="0" selected="selected">%</option>
					<option value="1">원</option>
				</select>
			</td>
			<td class="tal">포인트 10000~30000</td>
		</tr>
		<tr class="list0">
			<td class="bold">
				Lv.3	<input type="hidden" name="gb_no[3]" value="3">
				<input type="hidden" name="chk[]" value="3" checked>
			</td>
			<td><input type="text" name="gb_name[3]" value="실버" class="form-control"></td>
			<td>
				<input type="text" name="gb_sale[3]" value="0" class="form-control w-50 d-inline">
				<select name="gb_sale_rate[3]" class="form-control w-auto d-inline">
					<option value="0" selected="selected">%</option>
					<option value="1">원</option>
				</select>
			</td>
			<td class="tal">포인트 1000~10000</td>
		</tr>
		<tr class="list1">
			<td class="bold">
				Lv.2	<input type="hidden" name="gb_no[2]" value="2">
				<input type="hidden" name="chk[]" value="2" checked>
			</td>
			<td><input type="text" name="gb_name[2]" value="브론즈" class="form-control"></td>
			<td>
				<input type="text" name="gb_sale[2]" value="0" class="form-control w-50 d-inline">
				<select name="gb_sale_rate[2]" class="form-control w-auto d-inline">
					<option value="0" selected="selected">%</option>
					<option value="1">원</option>
				</select>
			</td>
			<td class="tal">포인트 1~1000</td>
		</tr>
		<tr class="list0">
			<td class="bold">
				Lv.1	<input type="hidden" name="gb_no[1]" value="1">
				<input type="hidden" name="chk[]" value="1" checked>
			</td>
			<td><input type="text" name="gb_name[1]" value="신입" class="form-control"></td>
			<td>
				<input type="text" name="gb_sale[1]" value="0" class="form-control w-50 d-inline">
				<select name="gb_sale_rate[1]" class="form-control w-auto d-inline">
					<option value="0" selected="selected">%</option>
					<option value="1">원</option>
				</select>
			</td>
			<td class="tal">신규 가입 회원</td>
		</tr>
		</tbody>
	</table>
</div>

<div class="btn_confirm">
	<input type="submit" value="저장" class="btn btn-primary">
</div>
</form>
</div>

</div>
</div>
   
    <!-- 끝 -->

    <!--::footer_part start::-->
	<%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
	<%@ include file="include/javascript.jsp" %>
    <%@ include file="include/style.jsp" %>
</body>

</html>