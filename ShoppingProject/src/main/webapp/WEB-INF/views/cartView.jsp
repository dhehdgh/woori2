<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<%@ include file="include/header.jsp" %>
<c:set var="user" value="${sessionScope.user}" />

         <c:set var="rating" value="${user.rating}" scope="request" />
                   <c:if test="${rating eq '신입'}">
  <c:set var="ratingsale" value="0.01" scope="request" />
</c:if>

<c:if test="${rating eq '브론즈'}">
  <c:set var="ratingsale" value="0.02" scope="request" />
</c:if>

<c:if test="${rating eq '실버'}">
  <c:set var="ratingsale" value="0.03" scope="request" />
</c:if>

<c:if test="${rating eq '골드'}">
  <c:set var="ratingsale" value="0.04" scope="request" />
</c:if>

<c:if test="${rating eq '플래티넘'}">
  <c:set var="ratingsale" value="0.05" scope="request" />
</c:if>

<c:if test="${rating eq '다이아'}">
  <c:set var="ratingsale" value="0.06" scope="request" />
</c:if>

    <!-- 여기부터 작성-->
    <c:forEach items="${cartView}" var="cart">
         <c:set var="cartcount" value="${cart.cartcount}" scope="request" />
         <c:set var="point" value="${cart.memberDTO.point}" scope="request" />
         <c:set var="ratingstring" value="${cart.codetableDTO.ratingstring}" scope="request" />
         <c:set var="cartno" value="${cart.cartno}" scope="request" />
         <c:set var="itemnum" value="${cart.itemnum}" scope="request" />
         

         
</c:forEach>
   <div id="container">          
        <div id="contents" class="momoi-fade">
            
<div class="path">
    <span>현재 위치</span>
    <ol><li><a href="/">홈</a></li>
        <li title="현재 위치"><strong>장바구니</strong></li>
    </ol></div>

<div class="titleArea">
    <h2>장바구니</h2>
</div>

<div class="xans-element- xans-order xans-order-basketpackage "><p class="orderStep"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/img_order_step1.gif" alt="01 장바구니"/></p>
<div class="xans-element- xans-order xans-order-dcinfo ec-base-box typeMember  "><div class="information">
            <h3 class="title">혜택정보</h3>
            <div class="description">
                <div class="member displaynone"></div>
                <ul class="mileage">
<li><a href="/dong/board/myrating?membernum=${user.membernum}">포인트 : <strong>${user.point}P</strong></a></li>
                    <li><a href="/dong/board/myrating?membernum=${user.membernum}">등급 : <strong>${rating}</strong></a></li>
                </ul>
</div>
        </div>
</div>
<div class="xans-element- xans-order xans-order-tabinfo ec-base-tab typeLight "><ul class="menu">
<li class="selected">
  <c:choose>
    <c:when test="${cartcount == null}">
      <a href="/order/basket.html">배송상품 (0)</a>
    </c:when>
    <c:otherwise>
      <a href="/order/basket.html">배송상품 (${cartcount})</a>
    </c:otherwise>
  </c:choose>
</li>
</ul>
        
<div class="orderListArea ec-base-table typeList gBorder">
		<c:if test="${cartcount == null}">
		<div class="xans-element- xans-order xans-order-basketpackage ">
        <div class="xans-element- xans-order xans-order-empty "><p>장바구니가 비어 있습니다.</p>
        </div>
        </div>
        </c:if>
        <c:if test="${cartcount != null}">
        
        
        <table border="1" summary="" class="xans-element- xans-order xans-order-normnormal xans-record-">
<colgroup>
<col style="width:27px"/>
<col style="width:92px"/>
<col style="width:auto"/>
<col style="width:88px"/>
<col style="width:88px"/>
<col style="width:110px"/>
<col style="width:88px"/>
<col style="width:88px"/>
<col style="width:85px"/>
<col style="width:98px"/>
<col style="width:98px"/>
<col style="width:110px"/>
</colgroup>
<thead><tr>
<th scope="col">&nbsp;&nbsp;<input type="checkbox" id="mainCheckbox" />

                <th scope="col">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이미지</th>
                <th scope="col">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상품정보</th>
                <th scope="col">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;수량</th>
                <th scope="col">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상품금액</th>
                <th scope="col">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;세일할인</th>
                <th scope="col">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;등급할인</th>
                <th scope="col" class="mileage">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;적립포인트</th>
                <th scope="col">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;배송구분</th>
                <th scope="col">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;배송비</th>
                                <th scope="col">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;최종금액</th>
                <th scope="col">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;선택</th>
            </tr></thead>
<tfoot class="right"><tr>

            </tr> 
          </tfoot>
			<c:forEach items="${cartView}" var="cart" varStatus="status">
			<input type="hidden" value="${cart.cartno}">

            <tbody class="xans-element- xans-order xans-order-list center"><tr class="xans-record-">

				<td>
				<input type="checkbox" id="listCheckbox" name="listCheckbox" value="${cart.cartno}" data-membernum="${user.membernum}" />

                <td class="thumb gClearLine"><a href="${contextPath}/board/itemdetail?itemnum=${cart.itemnum}"><img src="${cart.imgDTO.url}${cart.imgDTO.imgname}"  alt="${cart.itemDTO.itemname}"/></a></td>
                
                <td class="left gClearLine">
                    <ul class="xans-element- xans-order xans-order-optionall option"><li class="xans-record-">
					<strong class="displaynone" >${cart.itemDTO.itemname}</strong><br>[옵션:${cart.codetableDTO.colorstring},${cart.codetableDTO.sizestring}]<span class="displaynone"></span><br/>
					<span class="">
					<a href="#" class="btnNormal gBlank5" onclick="openOptionModify(${cart.itemnum} , ${cart.cartno})">옵션변경</a>
					</span>
					   </li>
					</ul>
                </td>
                
				 <td class="right">
				<form method="post" action="updateItemcnt?cartno=${cart.cartno}">
				<input type="hidden" id="membernum" name="membernum" value="${user.membernum}">
  <span>
    <span class="ec-base-qty">
      <input id="quantity_id_${status.index}" name="itemcnt" size="2" value="${cart.itemcnt}" type="text">
      <a href="javascript:;" class="up" onclick="incrementQuantity(${status.index});"></a>
      <a href="javascript:;" class="down" onclick="decrementQuantity(${status.index});"></a>
    </span>
  </span>

  <input type="hidden" id="itemcnt_${status.index}" name="itemcnt_${status.index}" value="${cart.itemcnt}">
  <button type="submit" onclick="return updateItemcnt();" class="btnNormal gBlank5">변경</button>

</form>
				      
				    
				    <span class="displaynone"></span>
				  </td>
       
      			 <td>
					<strong><script>document.write((${cart.itemDTO.itempay}).toLocaleString())</script>원</strong><p class=""></p>
					</div>
                </td>
                
                <td rowspan="" class="">
                    <span></span>
                    <div id="" class="displaynone">
					<strong><span id="product_discount_price_front0"><script>document.write((${Math.floor(cart.itemDTO.itempay * cart.itemDTO.sale)}).toLocaleString())</script></span>원</strong><p class="displaynone"></p>
					</div>
                </td>
                
                <td rowspan="" class="">
                    <span></span>
                    <div id="" class="displaynone">
					<strong><span id="product_discount_price_front0"><script>document.write((${cart.itemDTO.itempay * ratingsale}).toLocaleString())</script></span>원</strong><p class="displaynone"></p>
					</div>
                </td>
                
                <td>
                    <span id="product_mileage0" class="txtInfo"><input id='product_mileage_all_103_000B' name='product_mileage_all' value='170' type="hidden" >
                    <img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_point.gif" /> <script>document.write((${cart.itemDTO.itempay * 0.03}).toLocaleString())</script>P</span>
                </td>
                
                <td class="right">
                    <div class="txtInfo">기본배송<br/></div>
                </td>
                
                
                <td>
                    <div id="displaynone">
					<strong>무료</strong><p class=""></p>
					</div>
                </td>
				
				                <td rowspan="" class="">
                    <span></span>
                    <div id="" class="displaynone">${totalratingsale}
					<strong><span id="product_discount_price_front0"><script>document.write((${cart.itemDTO.itempay * cart.itemcnt}-${cart.itemDTO.itempay * cart.itemcnt * ratingsale}-${Math.floor(cart.itemDTO.itempay * cart.itemcnt * cart.itemDTO.sale)}).toLocaleString())</script></span>원</strong><p class="displaynone"></p>
					</div>
                </td>
                
                <td class="button">
                    <form method="get" action="buyView">
                    <input type="hidden" id="cartno" name="cartno" value="${cart.cartno}">
                    <input type="hidden" id="membernum" name="membernum" value="${user.membernum}">
					  <button type="submit" class="btnSubmit" >
					     주문하기
					  </button>
					</form>              
                    
					
                    <form method="post" action="cartDelete?cartno=${cart.cartno}">
					  <button type="submit" class="btnNormal" id="cartno" name="cartno" onclick="return confirmDelete()">
					    <i class="icoDelete"></i> 삭제
					  </button>
					</form>
                </td>
                
            </tr>
				</tbody>		
				<c:set var="totalItemPay" value="${totalItemPay + cart.itemDTO.itempay * cart.itemcnt}" />
				 <c:set var="totalsale" value="${totalsale + Math.floor(cart.itemDTO.itempay * cart.itemcnt * cart.itemDTO.sale)}" />
				 <c:set var="totalsalepay" value="${Math.floor(cart.itemDTO.itempay * cart.itemcnt * cart.itemDTO.sale)}" />
				</c:forEach>
			</table>
		</div>
	</div>
</div>

<div class="xans-element- xans-order xans-order-selectorder ec-base-button "><span class="gLeft">
            <strong class="text">선택상품을</strong>
            <a href="#none" class="btnEm" onclick="return selectDelete()"><i class="icoDelete"></i> 삭제하기</a>
            

        </span>
             <form method="post" action="cartClear">
                 <input type="hidden" id="membernum" name="membernum" value="${user.membernum}">
			<span class="gRight">
					  <button type="submit" class="btnNormal"  onclick="return confirmcartClear()">
					    <i class="icoDelete"></i> 장바구니비우기
					  </button>
					  </span>
					</form>
</div>


<!-- 총 주문금액 -->
<div class="xans-element- xans-order xans-order-totalsummary ec-base-table typeList gBorder total  ">
<table border="1" summary="">
    <colgroup>
      <col style="width: 17%;" />
      <col style="width: 19%;" />
      <col style="width: auto;" />
    </colgroup>
    <thead>
      <tr>
        <th scope="col"><strong>총 상품금액</strong></th>
        <th scope="col"><strong>총 할인금액</strong></th>
	    <th scope="col"><strong>결제예정금액</strong></th>
      </tr>
    </thead>
    <tbody class="center">
      <tr>
        <td>
          <div class="box txt16">
            <strong>
              <span class="txt23"><span class="total_product_price_display_front"><script>document.write((${totalItemPay}).toLocaleString())</script>원</span></span>
              
            </strong>
            <span class="txt14 displaynone"><span class="total_product_price_display_back"></span></span>
          </div>

        </td>
        <td id="total_benefit_price_area" class="">
          <div class="box txt16">
            <strong class="txt23">-</strong>
            <strong>
              <span id="total_product_discount_price_front" class="txt23"><script>document.write(((${totalItemPay * ratingsale}) + ${totalsale}).toLocaleString())</script>원</span>
            </strong>
            <span class="txt14 displaynone"><span id="total_product_discount_price_back"></span></span>
          </div>
        </td>
        <td>
          <div class="box txtEm txt16">
            <strong class="txt23">=</strong>
            <strong>
              <span id="total_order_price_front" class="txt23"><script>document.write((${totalItemPay} - (${totalItemPay * ratingsale} + ${totalsale})).toLocaleString())</script>원</span>

            </strong>
            <span class="txt14 displaynone"><span id="total_order_price_back"></span></span>
          </div>
        </td>
      </tr>
    </tbody>
  </table>
  </c:if>
</div>
    
    
<div class="xans-element- xans-order xans-order-totalorder ec-base-button justify">
<a href="#none" onclick="selectAllAndSubmit()" class="btnSubmitFix sizeM" >전체상품주문</a> 

<a href="#none" onclick="selectAndSubmit()" class="btnEmFix sizeM">선택상품주문</a><span class="gRight">
            <a href="${contextPath}" class="btnNormalFix sizeM">쇼핑계속하기<span id="itemnumElementId"></span></a>
        </span>
         <span id="itemcnt"></span>
        </div>

</div>
</div>


<div class="modal" id="myModal">
  <div class="header">
    <h5>옵션변경</h5>
  </div>
  <div class="content">
    <ul class="prdInfo">
      <li class="ec-basketOptionModifyLayer-productName"></li>
      <li class="ec-basketOptionModifyLayer-optionStr"></li>
    </ul>
    <div class="prdModify">
    <a href="#none" class="closeBtn" id="closeModalBtn">X</a>
      <h6 class="title">상품옵션</h6>
      <ul>
        <li class="ec-basketOptionModifyLayer-options" style="display:none;">
        </li>
        <li class="ec-basketOptionModifyLayer-options" style="">
          <span class="optionDesc">색상</span>
          <select id="colorSelect">
            <option value="*" selected="" >- [필수] 옵션을 선택해 주세요 -</option>
            <option value="**" >-------------------</option>
            <optgroup label="색상">
              <c:forEach items="${itemOption}" var="item">
              <option value="">${item}</option>
                <c:set var="allItemColor" value="${cart.codetableDTO.allitemcolor.split(', ')}" />
                <c:forEach items="${allItemColor}" var="color">
                  <option value="">${color}</option>
                </c:forEach> 
              </c:forEach>  
            </optgroup>
          </select>
        </li>
        <li class="ec-basketOptionModifyLayer-options" style="">
          <span class="optionDesc">사이즈</span>
          <select id="sizeSelect">
            <option value="*" selected="" >- [필수] 옵션을 선택해 주세요 -</option>
            <option value="**" >-------------------</option>
            <optgroup label="사이즈">
              <c:forEach items="${cartView}" var="cart">
                <c:set var="allItemSizes" value="${cart.codetableDTO.allitemsize.split(', ')}" />
                <c:forEach items="${allItemSizes}" var="size">
                  <option value="">${size}</option>
                </c:forEach>
              </c:forEach>
            </optgroup>
          </select>
        </li>  
      </ul>
    </div>
   
        <div class="ec-base-button">
    <a href="#none" class="btnNormalFix sizeM ec-basketOptionModifyLayer-reset" id="resetBtn">초기화</a>
    <a href="#none" class="btnSubmitFix sizeM ec-basketOptionModifyLayer-modify"  onclick="updateOptionModify(${cart.cartno})">변경</a>
  </div>

    </div>
    </div>
<script>
function selectAndSubmit() {
  var checkboxes = document.getElementsByName('listCheckbox');
  var cartnos = [];
  var membernums = [];
  
  for (var i = 0; i < checkboxes.length; i++) {
    if (checkboxes[i].checked) {
        cartnos.push(checkboxes[i].value);
        membernums.push(checkboxes[i].getAttribute('data-membernum'));
    }
  }

  console.log("cartnos:", cartnos);
  console.log("membernums:", membernums);

  if (cartnos.length > 0) {
    // Join the cart numbers into a comma-separated string
    var cartnoParams = cartnos.join(',');
    var membernumParams = membernums.join(',');

    // Redirect to the Spring controller endpoint
    window.location.href = 'buyView1?cartno=' + encodeURIComponent(cartnoParams) + '&membernum=' + encodeURIComponent(membernumParams);
  } else {
    // Handle the case when no checkboxes are checked
    alert("선택한 상품이 없습니다. 상품을 선택해주세요.");
  }
}
</script>

<script>
function selectAllAndSubmit() {
  var checkboxes = document.getElementsByName('listCheckbox');
  var cartnos = [];
  var membernums = [];
  
  var areAllChecked = true;
  for (var i = 0; i < checkboxes.length; i++) {
    if (!checkboxes[i].checked) {
      areAllChecked = false;
      checkboxes[i].checked = true;
    }
    cartnos.push(checkboxes[i].value);
    membernums.push(checkboxes[i].getAttribute('data-membernum'));
  }

  console.log("cartnos:", cartnos);
  console.log("membernums:", membernums);
  
  if (cartnos.length > 0) {
    // Join the cart numbers into a comma-separated string
    var cartnoParams = cartnos.join(',');
    var membernumParams = membernums.join(',');
    // Redirect to the Spring controller endpoint
    window.location.href = 'buyView1?cartno=' + encodeURIComponent(cartnoParams) + '&membernum=' + encodeURIComponent(membernumParams);
  } else {
    // Handle the case when no checkboxes are checked
  }
}
</script>
 <!-- 옵션 선택시 selelct변경 -->
<script>
  const colorSelect = document.getElementById("colorSelect");
  const sizeSelect = document.getElementById("sizeSelect");

  let colorOptionsData = [];
  let sizeOptionsData = [];
  let colorcntOptionsData = [];
  let sizecntOptionsData = [];
  
  let colorEventActive = true;
  let sizeEventActive = true;

  colorSelect.addEventListener("change", function () {
    const selectedColor = colorSelect.value;
    console.log("선택된 색상:", selectedColor);
    console.log("선택된 아이템번호:", itemValue);

    if (colorEventActive) {
      $.post("colorSelect", { codestring: selectedColor, itemnum: itemValue })
        .done(function (data) {
          console.log("colorSelect 결과:", data);

          const sizeOptionsData = data.map((item) => item.allitemsize);
          const OptionsData = data.map((item) => item.itemcnt);
          
          console.log("colorSelect 결과:", sizeOptionsData);
          console.log("size itemcnt 결과:", OptionsData);
          
          updateSelectOptions(sizeSelect, sizeOptionsData, OptionsData);

         
          sizeEventActive = false;
          colorEventActive = true;
        })
        .fail(function (error) {
          console.log("에러발생:", data);
        });
    }
  });

  sizeSelect.addEventListener("change", function () {
    const selectedSize = sizeSelect.value;
    console.log("선택된 사이즈:", selectedSize);
    console.log("선택된 아이템번호:", itemValue);

    if (sizeEventActive) {
      $.post("sizeSelect", { codestring: selectedSize, itemnum: itemValue })
        .done(function (data) {
          console.log("sizeSelect 결과:", data);

          const colorOptionsData = data.map((item) => item.allitemcolor);
          const OptionsData = data.map((item) => item.itemcnt);
          
          console.log("sizeSelect 결과:", colorOptionsData);
          console.log("color itemcnt 결과:", OptionsData);
          
          updateSelectOptions(colorSelect, colorOptionsData, OptionsData);

          
          colorEventActive = false;
          sizeEventActive = true;
        })
        .fail(function (error) {
          console.log("에러발생:", data);
        });
    }
  });


   function updateSelectOptions(selectElementData, data, OptionsData) {
     var $selectElement = $(selectElementData);

     $selectElement.empty();
     $selectElement.append('<option value="*" selected="">- [필수] 옵션을 선택해 주세요 -</option>');
     $selectElement.append('<option value="**">-------------------</option>');
     $selectElement.append('<optgroup label="옵션">');

     for (let i = 0; i < data.length; i++) {
       const option = data[i];
       const cnt = OptionsData[i];

       // sizecnt가 0보다 작거나 같으면 "품절"을 추가하고, 그렇지 않으면 기존 옵션을 추가합니다.
       if (cnt <= 0) {
         $selectElement.append('<option disabled value="' + option + '">' + option + '   품절</option>');
       } else {
         $selectElement.append('<option value="' + option + '">' + option + '</option>');
       }
     }

     $selectElement.append('</optgroup>');
   }
   
   
</script>

<!-- 옵션변경 -->
<script>
function updateOptionModify() {
    var cartno = cartnoValue;
    var itemnum = itemValue;
    var selectedColor = $("#colorSelect").val();
    var selectedSize = $("#sizeSelect").val();

    console.log("cartno 결과:", cartno);
    console.log("itemnum 결과:", itemnum);

  
    if (confirm("옵션을 변경하시겠습니까?")) {
        $.ajax({
            url: "updateOption", 
            type: "POST",
            data: {
                itemnum: itemnum,
                cartno: cartno,
                codestring: selectedColor,
                codestring1: selectedSize,
            },
            dataType: "json",
            success: function (response) {
                console.log("서버 응답 확인:", response); 
                if (response) {
                    
                    alert("옵션이 변경되었습니다.");
                    closeOptionModify();
                    reloadCurrentPage();
                } else {
                    
                    alert("서버 응답에 오류가 있습니다.");
                }
            },
            error: function (xhr, status, error) {
                
                console.error("Failed to update options. Status:", status, "Error:", error, "xkr:", xhr);
                alert("오류가 발생했습니다. 자세한 내용은 콘솔에서 확인해주세요.");
            },
        });
    } else {
        alert("취소하였습니다.");
    }
}

function reloadCurrentPage() {
    closeOptionModify();
    location.reload();
}

</script>

<!-- 모달창 오픈 -->
<script>


var itemValue;
var cartnoValue;

function openOptionModify(itemnum , cartno) {
	
	
	 var url = "itemOption?itemnum=" + itemnum + "&cartno=" + cartno;
	
	 itemValue = itemnum;
	 cartnoValue = cartno
	 
	 console.log("cartno 결과:", cartnoValue);
	  // AJAX 요청을 보냅니다.
	  $.ajax({
		    url: url,
		    type: "GET",
		    dataType: "json",
		    success: function (data) {
		      $("#myModal").hide();

		      var colorSelect = $("#colorSelect");
		      var sizeSelect = $("#sizeSelect");
		      colorSelect.empty();
		      sizeSelect.empty();

		      colorSelect.append('<option value="*" selected="" >- [필수] 옵션을 선택해 주세요 -</option>');
		      colorSelect.append('<option value="**" >-------------------</option>');
		      colorSelect.append('<optgroup label="색상">');

		      sizeSelect.append('<option value="*" selected="" link_image="">- [필수] 옵션을 선택해 주세요 -</option>');
		      sizeSelect.append('<option value="**" disabled="" link_image="">-------------------</option>');
		      sizeSelect.append('<optgroup label="사이즈">');

		      var addedColors = [];
		      var addedSizes = [];

		      $.each(data, function (index, item) {
		        var allItemColors = item.allitemcolor.split(', ');
		        var allItemSizes = item.allitemsize.split(', ');

		        $.each(allItemColors, function (index, color) {
		          if (!addedColors.includes(color)) {
		            colorSelect.append('<option value="' + color + '">' + color + '</option>');
		            addedColors.push(color);
		          }
		        });

		        $.each(allItemSizes, function (index, size) {
		          if (!addedSizes.includes(size)) {
		            sizeSelect.append('<option value="' + size + '">' + size + '</option>');
		            addedSizes.push(size);
		          }
		        });
		      });

		      colorSelect.append('</optgroup>');
		      sizeSelect.append('</optgroup>');

		      $("#myModal").show();
		      colorOptionsData = data.map((item) => item.allitemcolor);
		      sizeOptionsData = data.map((item) => item.allitemsize);
		    },
		    error: function (xhr, status, error) {
		      console.error("AJAX 요청이 실패했습니다: " + status + ", " + error);
		    },
		  });
		}
		

function closeOptionModify() {
  var modal = document.getElementById("myModal");
  modal.style.display = "none";
}

document.getElementById("closeModalBtn").addEventListener("click", closeOptionModify);

window.addEventListener("click", function(event) {
  var modal = document.getElementById("myModal");
  if (event.target === modal) {
    closeOptionModify();
  }
});

document.getElementById("optionButton").addEventListener("click", openOptionModify);
</script>

<!-- 초기화버튼 -->
<script>
const resetBtn = document.getElementById("resetBtn");
resetBtn.addEventListener("click", function () {
  resetSelectOptions(colorSelect, colorOptionsData);
  resetSelectOptions(sizeSelect, sizeOptionsData);

  colorEventActive = true;
  sizeEventActive = true;
});

function resetSelectOptions(selectElement, data) {
	  var $selectElement = $(selectElement);

	  $selectElement.empty();
	  $selectElement.append('<option value="*" selected="">- [필수] 옵션을 선택해 주세요 -</option>');
	  $selectElement.append('<option value="**">-------------------</option>');
	  $selectElement.append('<optgroup label="옵션">');

	  var uniqueOptions = [...new Set(data)];

	  uniqueOptions.forEach(function (option) {
	    $selectElement.append('<option value="' + option + '">' + option + '</option>');
	  });

	  $selectElement.append('</optgroup>');
	}
	
</script>
<!-- 선택 삭제 -->
<script>
  function selectDelete() {
    var checkboxes = document.getElementsByName('listCheckbox');
    var selectedItems = [];

    for (var i = 0; i < checkboxes.length; i++) {
      if (checkboxes[i].checked) {
        selectedItems.push(checkboxes[i].value);
      }
    }

    if (selectedItems.length > 0) {
      var confirmed = confirm('선택한 상품을 삭제하시겠습니까?');

      if (confirmed) {
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'selectDelete', true); 
        xhr.setRequestHeader('Content-Type', 'application/json');

        xhr.onreadystatechange = function () {
          if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
              alert('선택한 상품이 삭제되었습니다.');
              location.reload(); 
            } else {
              alert('선택한 상품 삭제에 실패했습니다.');
            }
          }
        };

        xhr.send(JSON.stringify(selectedItems));
      } else {
        alert('취소하였습니다.');
      }
    } else {
      alert('선택된 상품이 없습니다.');
    }
  }
</script>

<!-- 수량 input박스 value변경 -->
<script>
function incrementQuantity(index) {
  var quantityInput = document.getElementById("quantity_id_" + index);
  var currentValue = parseInt(quantityInput.value);
  quantityInput.value = currentValue + 1;
  updateHiddenField(index, quantityInput.value);
}

function decrementQuantity(index) {
  var quantityInput = document.getElementById("quantity_id_" + index);
  var currentValue = parseInt(quantityInput.value);
  if (currentValue > 1) {
    quantityInput.value = currentValue - 1;
    updateHiddenField(index, quantityInput.value);
  }
}

function updateHiddenField(index, value) {
  var hiddenInput = document.getElementById("itemcnt_" + index);
  hiddenInput.value = value;
}
<!-- 수량변경 -->
function updateItemcnt() {
    if (confirm("해당 상품의 수량을 변경하시겠습니까?")) {
      alert("수량이 변경되었습니다.");
      return true;  // 삭제 처리 진행
    } else {
        alert("취소되었습니다.");
       return false; // 삭제 처리 취소
    }
}
</script>

<!-- 전체선택 -->
<script>
const mainCheckbox = document.getElementById('mainCheckbox');
const listCheckboxes = document.querySelectorAll('tbody input[type="checkbox"]');

mainCheckbox.addEventListener('click', function() {
  listCheckboxes.forEach(function(checkbox) {
    checkbox.checked = mainCheckbox.checked;
  });
});

listCheckboxes.forEach(function(checkbox) {
  checkbox.addEventListener('click', function() {
    if (!checkbox.checked) {
      mainCheckbox.checked = false;
    }
  });
});
</script>

<!-- 상품 삭제 메세지 -->
<script>
  function confirmDelete() {
    if (confirm("해당 상품을 삭제하시겠습니까?")) {
      alert("상품이 삭제되었습니다.");
      return true;  // 삭제 처리 진행
    } else {
        alert("취소되었습니다.");
       return false; // 삭제 처리 취소
    }
}

  function confirmcartClear() {
	    if (confirm("장바구니를 비우시겠습니까?")) {
	      alert("장바구니를 비웠습니다.");
	      return true;  // 삭제 처리 진행
	    } else {
	        alert("취소되었습니다.");
	       return false; // 삭제 처리 취소
	    }
	}
  </script>
  


    <!--::footer_part start::-->
	<%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
    <script src="${contextPath}/resources/bootstrap/js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="${contextPath}/resources/bootstrap/js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
    <!-- easing js -->
    <script src="${contextPath}/resources/bootstrap/js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="${contextPath}/resources/bootstrap/js/swiper.min.js"></script>
    <!-- swiper js -->
    <script src="${contextPath}/resources/bootstrap/js/masonry.pkgd.js"></script>
    <!-- particles js -->
    <script src="${contextPath}/resources/bootstrap/js/owl.carousel.min.js"></script>
    <!-- slick js -->
    <script src="${contextPath}/resources/bootstrap/js/slick.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/jquery.counterup.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/waypoints.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/contact.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/jquery.ajaxchimp.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/jquery.form.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/jquery.validate.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/mail-script.js"></script>
    <!-- custom js -->
    <script src="${contextPath}/resources/bootstrap/js/custom.js"></script>
    <%@ include file="include/style.jsp" %>
    <%@ include file="include/style1.jsp" %>
    

    
</body>

</html>