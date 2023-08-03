<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<%@ include file="include/header.jsp" %>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script type="text/javascript">
    
    function cartView1(){
        window.open("${contextPath}/board/cartView1", "cartView1", "width=350, height=200, top=400, left=800")
    }
    
    function drriview(reviewNo) {
        let logincheck = "${user}";

        if (logincheck === "") {
            alert('로그인 후 이용 가능합니다.');
            location.href = "${contextPath}/board/loginForm";
        } else {
            window.open("${contextPath}/board/drriviewForm?reviewNo=" + reviewNo, "drriviewForm", "width=450, height=350, top=250, left=700");
        }
    }

</script>

</head>
    
      <!--================Single Product Area =================-->
  <div class="product_image_area section_padding">
    <div class="container">
      <div class="row s_product_inner justify-content-between">
        <div class="col-lg-6 col-xl-6">
          <div class="product_slider_img">
            <div id="vertical">
              <div data-thumb="${img.url}${img.imgname}">
        		<img src="${img.url}${img.imgname}" />
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-5 col-xl-5">
          <div class="s_product_text">
            <h3>&nbsp; ${itemDTO.itemname}</h3>
            <div class="review_box">
               <ul class="list">
                  <li>
			      <a href="#">
			        <i class="${avgRstar >= 1 ? 'fa fa-star' : 'far fa-star'}"></i>
			      </a>
			    </li>
			    <li>
			      <a href="#">
			        <i class="${avgRstar >= 2 ? 'fa fa-star' : 'far fa-star'}"></i>
			      </a>
			    </li>
			    <li>
			      <a href="#">
			        <i class="${avgRstar >= 3 ? 'fa fa-star' : 'far fa-star'}"></i>
			      </a>
			    </li>
			    <li>
			      <a href="#">
			        <i class="${avgRstar >= 4 ? 'fa fa-star' : 'far fa-star'}"></i>
			      </a>
			    </li>
			    <li>
			      <a href="#">
			        <i class="${avgRstar >= 5 ? 'fa fa-star' : 'far fa-star'}"></i>
			      </a>
                    ${avgRstar}
                  </li>
                </ul>
              </div>
              <br>
            <h2>&nbsp; <span id="itemPrice">${itemDTO.itempay}원</span></h2>
			<h1 id="discount" style="visibility: hidden;"></h1><span id="discountpay" style="visibility: hidden;"></span>
            <br>
            <br>&nbsp; 옵션<br><hr><br>
            
             <select id="itemcolorSelect" class="" onchange="updateSubOptions()">
			  <option value="1"></option>
			  <option value="2"></option>
			  <option value="3"></option>
			  <option value="4"></option>
			  <option value="5"></option>
			  <option value="6"></option>
			  <option value="7"></option>
			  <option value="8"></option>
			  <option value="9"></option>
			</select>
			<select id="itemsizeSelect" class="shipping_select" onchange="updateSizeValue()" style="display: none;">
			  <option value="1"></option>
			  <option value="2"></option>
			  <option value="3"></option>
			  <option value="4"></option>
			</select>
             <br><br>
             <input type="text" id="resultBox" readonly style="display: block;">
             <p id="priceDisplay"></p>
            <br>
            <div class="card_area d-flex justify-content-between align-items-center">
              <div class="product_count" style="visibility: hidden;">
				  <span class="inumber-decrement"> <i class="ti-minus"></i></span>
				  <input id="quantityInput" class="input-number" type="text" value="1" min="1" max="99" readonly>
				  <span class="number-increment"> <i class="ti-plus"></i></span>
			  </div>
              <button id="cartButton" class="btn_3">장바구니</button>
              <button id="purchaseButton" class="btn_3">바로구매</button>
              <a href="#" class="like_us like-button"><i class="ti-heart"></i></a>
            </div>
            <br>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--================End Single Product Area =================-->
  <!--================Product Description Area =================-->
  <section class="product_description_area">
    <div class="container">
      <div class="tab-content" id="myTabContent">
      <hr><br><p class="font-semibold">상품 정보</p><br>
      		<hr><br>
          <p>${itemDTO.itemcontent}</p>
        </div>
        <br><hr><br>
        
        <!--::review start::-->
		  <%@ include file="review.jsp" %>
	    <!--::review end::-->
        </div>
        
  </section>
  <!--================End Product Description Area =================-->
 
    <!-- ë -->

    <!--::footer_part start::-->
	<%@ include file="include/footer.jsp" %>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
	<%@ include file="include/javascript.jsp" %>
    <%@ include file="include/style.jsp" %>
    
    
    
    
    <!-- script start -->

<script> // 옵션 선택
	
	//
	var dbValuescol = [
	  <c:forEach items="${iv_itemcolor}" var="color" varStatus="status">
	    ${color}${not status.last ? ',' : ''}
	  </c:forEach>
	];
	
	//
	var optionTexts = [
	  <c:forEach items="${iv_itemcolorstring}" var="text" varStatus="status">
	    '${text}'${not status.last ? ',' : ''}
	  </c:forEach>
	];
	
	// ìë í¸ ë°ì¤ ìì
	var selectBox = document.getElementById('itemcolorSelect');
	
	// ê¸°ì¡´ ìµì ì­ì 
	while (selectBox.options.length > 0) {
	  selectBox.remove(0);
	}
	
	// "ìì ì í" ìµì ì¶ê°
	var defaultOption = document.createElement('option');
	defaultOption.value = '';
	defaultOption.textContent = '색상 선택';
	defaultOption.selected = true;
	selectBox.appendChild(defaultOption);
	
	// DB ê°ì í´ë¹íë ìµìë§ ì¶ê°
	for (var i = 0; i < dbValuescol.length; i++) {
	  var option = document.createElement('option');
	  option.value = dbValuescol[i];
	
	  if (i < optionTexts.length) {
	    option.textContent = optionTexts[i];
	  } else {
	    option.textContent = dbValuescol[i];
	  }
	
	  selectBox.appendChild(option);
	}

  function updateSubOptions() {
    var itemcolorSelect = $("#itemcolorSelect");
    var itemsizeSelect = $("#itemsizeSelect");

    var selectedColor = itemcolorSelect.val();

    if (selectedColor !== "") {
    	// AJAX ìì²­
    	$.ajax({
    	  url: "${pageContext.request.contextPath}/board/itemSizes",
    	  type: "GET",
    	  data: {
    	    itemnum: ${itemDTO.itemnum}, // ìì ìµìì itemnum ê°ì ì¬ì©
    	    itemcolor: selectedColor
    	  },
    	  dataType: "json",
    	  success: function (response) {
    	    // ìëµ ë°ì´í°ë¥¼ íì±íì¬ íì ìµì ìë í¸ ë°ì¤ì ì¶ê°
    	    itemsizeSelect.empty(); // ê¸°ì¡´ ìµì ì­ì 

    	    // "ì¬ì´ì¦ ì í" ìµì ì¶ê°
    	    var defaultSizeOption = document.createElement('option');
    	    defaultSizeOption.value = '';
    	    defaultSizeOption.textContent = '사이즈 선택';
    	    defaultSizeOption.selected = true;
    	    itemsizeSelect.append(defaultSizeOption);

    	    $.each(response, function (index, item) {
    	      var optionText = item.sizestring;
    	      if (item.itemcnt == 0 || item.itemstate == 2) {
    	          optionText += " (품절)";
    	          
    	          var disabledOption = $("<option></option>")
    	            .val(item.itemsize)
    	            .text(optionText)
    	            .prop('disabled', true); // ì í ë¶ê°ë¥í ìíë¡ ì¤ì 
    	          itemsizeSelect.append(disabledOption);
    	        } else if (item.itemstate == 3) {
    	          optionText += " (입고X)";
    	          
    	          var disabledOption = $("<option></option>")
    	            .val(item.itemsize)
    	            .text(optionText)
    	            .prop('disabled', true); // ì í ë¶ê°ë¥í ìíë¡ ì¤ì 
    	          itemsizeSelect.append(disabledOption);
    	        } else {
    	          var option = $("<option></option>")
    	            .val(item.itemsize)
    	            .text(optionText);
    	          itemsizeSelect.append(option);
    	        }
    	      });
    	    
    	    itemsizeSelect.show(); // íì ìµì ìë í¸ ë°ì¤ ë³´ì´ê¸°

    	    // ê²°ê³¼ ìì ê°±ì 
    	    updateValue();
    	  },
    	  error: function () {
    	    // ìì²­ì ì¤í¨í ê²½ì° ì²ë¦¬
    	    alert("오류123456");
    	    console.error("AJAX request failed");
    	  }
    	});
    }
  }
//ìì ìµììì ì íë ê°ê³¼ íì ìµììì ì íë ê° ê°ì ¸ì¤ê¸°
  function updateValue() {
    var itemcolorSelect = document.getElementById("itemcolorSelect");
    var resultBox = document.getElementById("resultBox");

    var selectedColor = itemcolorSelect.value;

    // ì íë ê°ë¤ì íì
	var optionText1 = itemcolorSelect.options[itemcolorSelect.selectedIndex].text;
    resultBox.value = optionText1;
    
    // íì ìµìì ê°ì ì´ê¸°í
    document.getElementById("itemsizeSelect").value = "";
    
  }
  
//íì ìµììì ì íë ê° ê°ì ¸ì¤ê¸°
  function updateSizeValue() {
    var itemcolorSelect = document.getElementById("itemcolorSelect");
    var itemsizeSelect = document.getElementById("itemsizeSelect");
    var resultBox = document.getElementById("resultBox");
    var productCountDiv = document.querySelector('.product_count');

    var selectedColor = itemcolorSelect.value;
    var selectedSize = itemsizeSelect.value;

    if (selectedSize !== '') {
      var optionText1 = itemcolorSelect.options[itemcolorSelect.selectedIndex].text;
      var optionText = itemsizeSelect.options[itemsizeSelect.selectedIndex].text;
      resultBox.value = optionText1 + " / " + optionText;
      
      // ìë ìë ¥ íë ë³´ì´ê¸°
      productCountDiv.style.visibility = 'visible';
    } else {
      resultBox.value = selectedColor + " / " + selectedSize;
      
      // ìë ìë ¥ íë ì¨ê¸°ê¸°
      productCountDiv.style.visibility = 'hidden';
    }

    // ì¬ê³  íì í¸ì¶
    fetchIvItemCnt();
    
    // ìë ìë ¥ íë ì´ê¸°í
    quantityInput.value = 1;
    displayPrice();
  }


  
//ì¬ê³  íì
  function fetchIvItemCnt() {
    var itemcolorSelect = document.getElementById("itemcolorSelect");
    var itemsizeSelect = document.getElementById("itemsizeSelect");
    var selectedColor = itemcolorSelect.value;
    var selectedSize = itemsizeSelect.value;

    const url = "${pageContext.request.contextPath}/board/iv_itemcntcheck";
    var paramData = {
      "itemnum": ${itemDTO.itemnum},
      "itemcolor": selectedColor,
      "itemsize": selectedSize
    };

    $.ajax({
      url: url,
      type: "GET",
      data: paramData,
      dataType: "json",
      success: function(response) {
        // Ajax ìì²­ì´ ì±ê³µí ê²½ì° ì²ë¦¬
        itemcnt = response.itemcnt;
        handleIvItemCnt(response);
      },
      error: function() {
        // Ajax ìì²­ì´ ì¤í¨í ê²½ì° ì²ë¦¬
        alert("오류33");
      }
    });
  }

  function handleIvItemCnt(data) {

    for (var i = 0; i < data.length; i++) {
      var itemcnt = data[i].itemcnt;
      
   		// 
      var resultBox = document.getElementById("resultBox");
      resultBox.nextSibling.textContent = "(재고 " + itemcnt + "개)";
    }
  }
  
  //ìë ì¦ê° ë²í¼ ìì
  var decrementButton = document.querySelector('.inumber-decrement');
  var incrementButton = document.querySelector('.number-increment');

  // ìë ìë ¥ íë
  var quantityInput = document.getElementById('quantityInput');
  
  // ìí ê°ê²©
  var itemPrice = ${itemDTO.itempay} - (${itemDTO.itempay} * ${itemDTO.sale});

  // ìë ê°ì ë²í¼ í´ë¦­ ì´ë²¤í¸ ì²ë¦¬
  decrementButton.addEventListener('click', decreaseQuantity);

  // ìë ì¦ê° ë²í¼ í´ë¦­ ì´ë²¤í¸ ì²ë¦¬
  incrementButton.addEventListener('click', increaseQuantity);
  
  //ì´ê¸°í
  quantityInput.value = 1;

  // ìë ìë ¥ ì´ë²¤í¸ ì²ë¦¬
  quantityInput.addEventListener('input', function() {
    // ìë ¥ë ìë ê°ì ¸ì¤ê¸°
    var quantity = parseInt(quantityInput.value);

    // ìë ¥ê°ì´ 0 ëë nullì¸ ê²½ì° ê¸°ë³¸ê°ì¼ë¡ ë³ê²½
    if (isNaN(quantity) || quantity < 1) {
      quantityInput.value = 1;
    } else if (quantity > maxQuantity) {
      quantityInput.value = maxQuantity;
      alert("오류22"); // ì¬ê³ ë³´ë¤ ë§ì ìë ì í ì ê²½ê³  ë©ìì§ ì¶ë ¥
    }

    // ê°ê²© ìë°ì´í¸
    displayPrice();
  });

  // ìë ë³ê²½ ì²ë¦¬
  function decreaseQuantity() {
    updateQuantity(0);
  }

  function increaseQuantity() {
    updateQuantity(0);
  }

//ìë ë³ê²½ ì²ë¦¬
  function updateQuantity(change) {
    var quantity = parseInt(quantityInput.value);
    var newQuantity = quantity + change;

    // ìëì´ ìµìê°(min) ì´ì ìµëê°(max) ì´íì¸ì§ íì¸
    var minQuantity = 1;
    var maxQuantity = 0;

    var itemcolorSelect = document.getElementById("itemcolorSelect");
    var itemsizeSelect = document.getElementById("itemsizeSelect");
    var selectedColor = itemcolorSelect.value;
    var selectedSize = itemsizeSelect.value;

    const url = "${pageContext.request.contextPath}/board/iv_itemcntcheck";
    var paramData = {
      "itemnum": ${itemDTO.itemnum},
      "itemcolor": selectedColor,
      "itemsize": selectedSize
    };

    $.ajax({
      url: url,
      type: "GET",
      data: paramData,
      dataType: "json",
      success: function(response) {
        if (response.length > 0) {
          maxQuantity = response[0].itemcnt;

          // ì«ì ìì± ì í ì ì©
          if (newQuantity >= minQuantity && newQuantity <= maxQuantity) {
            quantityInput.value = newQuantity;
          } else if (newQuantity > maxQuantity) {
            quantityInput.value = maxQuantity;
            alert("더 구매하실 수 없습니다."); // ì¬ê³ ë³´ë¤ ë§ì ìë ì í ì ê²½ê³  ë©ìì§ ì¶ë ¥
          }

          quantityInput.setAttribute('max', maxQuantity);
          displayPrice();

          if (newQuantity > maxQuantity) {
            incrementButton.disabled = true;
          } else {
            incrementButton.disabled = false;
          }
        }
      },
      error: function() {
        alert("옵션을 선택해주세요.");
      }
    });
  }

  // ê°ê²© íì ìë°ì´í¸
  function displayPrice() {
    var quantity = parseInt(quantityInput.value);
    var totalPrice = itemPrice * quantity;

    var priceDisplay = document.getElementById('priceDisplay');
    priceDisplay.textContent = quantity + "개 / " + totalPrice + "원";
  }
  
  
  // 구매하기 버튼
  var purchaseButton = document.getElementById('purchaseButton');
  purchaseButton.addEventListener('click', purchaseItem);

  function purchaseItem(event) {
	  
	  let logincheck = "${user}";

      if (logincheck === "") {
          alert('로그인 후 이용 가능합니다.');
          location.href = "${contextPath}/board/loginForm";
      } else {

    	  var itemcolorSelect = document.getElementById("itemcolorSelect");
    	  var itemsizeSelect = document.getElementById("itemsizeSelect");
    	  var selectedColor = itemcolorSelect.value;
    	  var selectedSize = itemsizeSelect.value;
    	  var quantity = parseInt(quantityInput.value);

    	  var paramData = {
    	    "itemnum": ${itemDTO.itemnum},
    	    "itemcolor": selectedColor,
    	    "itemsize": selectedSize
    	  };

    	  $.ajax({
    	    url: "${pageContext.request.contextPath}/board/iv_itemcntcheck",
    	    type: "GET",
    	    data: paramData,
    	    dataType: "json",
    	    success: function(response) {
    	      // Ajax ìì²­ì´ ì±ê³µí ê²½ì° ì²ë¦¬
    	   	  // ìëµ ë°ì´í°ìì iv_itemnum ê° ê°ì ¸ì¤ê¸°
    	      var iv_itemnum;

    	      // ìëµ ë°ì´í°ê° ë°°ì´ì¸ ê²½ì° ì²« ë²ì§¸ ììì iv_itemnum ê°ì ê°ì ¸ì´
    	      if (response && response.length > 0) {
    	        iv_itemnum = response[0].iv_itemnum;
    	      }
             
    	      var membernum = "${user.membernum}" !== "" ? "${user.membernum}" : 1;

    	    //
              var purchaseData = {
                    "membernum": membernum,
                    "itemnum": ${itemDTO.itemnum},
                    "itemcnt": quantity,
                    "iv_itemnum": iv_itemnum,
                    "cartstate": 3
                  };

                  $.ajax({
                    url: "${pageContext.request.contextPath}/board/orderadd",
                    type: "POST",
                    data: purchaseData,
                    dataType: "json",
                    success: function(response) {
                      var cartno = response;
                      
                      alert("결제화면으로 이동합니다.");

                      var redirectTo = "${pageContext.request.contextPath}/board/buyView?cartno=" + cartno + "&membernum=" + membernum;

                      // íì´ì§ ì´ë
                      window.location.href = redirectTo;
                    },
                    error: function() {
                      console.log(purchaseData);
                      alert("구매 시도에 실패했습니다.");
                    }
                  });

    	    },
    	    error: function() {
    	      // Ajax ìì²­ì´ ì¤í¨í ê²½ì° ì²ë¦¬
    	      alert("옵션을 선택해주세요.");
    	    }
    	  });
    	  
    	  
      }
	  
	} 
  
	//장바구니 버튼
  	var cartButton = document.getElementById('cartButton');
	cartButton.addEventListener('click', cartaddItem);

	function cartaddItem(event) {
	
		  let logincheck = "${user}";
	
	    if (logincheck === "") {
	        alert('로그인 후 이용 가능합니다.');
	        location.href = "${contextPath}/board/loginForm";
	    } else {
    	 
    	 var itemcolorSelect = document.getElementById("itemcolorSelect");
    	  var itemsizeSelect = document.getElementById("itemsizeSelect");
    	  var selectedColor = itemcolorSelect.value;
    	  var selectedSize = itemsizeSelect.value;
    	  var quantity = parseInt(quantityInput.value); 

    	  var paramData = {
    	    "itemnum": ${itemDTO.itemnum},
    	    "itemcolor": selectedColor,
    	    "itemsize": selectedSize
    	  };

    	  $.ajax({
    	    url: "${pageContext.request.contextPath}/board/iv_itemcntcheck",
    	    type: "GET",
    	    data: paramData,
    	    dataType: "json",
    	    success: function(response) {
    	      // Ajax 요청이 성공한 경우 처리
    	      var iv_itemnum;

    	      // 응답 데이터가 있고, 길이가 1 이상인 경우에만 iv_itemnum을 설정합니다.
    	      if (response && response.length > 0) {
    	        iv_itemnum = response[0].iv_itemnum;
    	      }

    	      var cartoptioncheckData = {
    	        "itemnum": ${itemDTO.itemnum},
    	        "iv_itemnum": iv_itemnum
    	      };

    	      $.ajax({
    	        url: "${pageContext.request.contextPath}/board/cartoptioncheck",
    	        type: "GET",
    	        data: cartoptioncheckData,
    	        dataType: "json",
    	        success: function(response) {
    	          // 이미 같은 값이 있는 경우 장바구니에 추가하지 않습니다.
    	          if (response && response.length > 0) {
    	            alert("이미 해당 옵션의 상품이 장바구니에 있습니다.");
    	            return;
    	          }

    	          var membernum = "${user.membernum}" !== "" ? "${user.membernum}" : 1;

    	          var cartaddData = {
    	            "membernum": membernum,
    	            "itemnum": ${itemDTO.itemnum},
    	            "itemcnt": quantity,
    	            "iv_itemnum": iv_itemnum,
    	            "cartstate": 1
    	          };

    	          $.ajax({
    	            url: "${pageContext.request.contextPath}/board/cartadd",
    	            type: "POST",
    	            data: cartaddData,
    	            dataType: "json",
    	            success: function(response) {
    	              // 장바구니 추가 성공
    	              alert("장바구니에 추가되었습니다.");
    	              // 장바구니 페이지로 이동
    	              window.location.href = "javascript:cartView1()";
    	            },
    	            error: function() {
    	              console.log(cartaddData);
    	              alert("장바구니 추가에 실패했습니다.");
    	            }
    	          });
    	        },
    	        error: function() {
    	          alert("장바구니 옵션 비교에 실패했습니다.");
    	        }
    	      });
    	    },
    	    error: function() {
    	      // Ajax 요청이 실패한 경우 처리
    	      alert("옵션을 선택해주세요.");
    	    }
    	  });
	    }
     }
     
</script>

<script>
  var isInterested = ${isInterested};
  var likeButton = document.querySelector('.like-button');

  // 찜
  window.addEventListener('DOMContentLoaded', function() {
    var likeButton = document.querySelector('.like-button');

    if (isInterested) {
      likeButton.style.backgroundColor = 'rgba(255, 192, 203, 0.5)';
    }
  });

  likeButton.addEventListener('click', function(event) {
	  event.preventDefault();
	  
	  let logincheck = "${user}";
	  
	  if (logincheck === "") {
          alert('로그인 후 이용 가능합니다.');
          location.href = "${contextPath}/board/loginForm";
      } else {
    	  var membernum = "${user.membernum}" !== "" ? "${user.membernum}" : 1;
    	  var itemnum = ${itemDTO.itemnum};

    	    if (isInterested) {
    	      uninterest(membernum, itemnum);
    	    } else {
    	      interest(membernum, itemnum);
    	    }
      }
  });

  function interest(membernum, itemnum) {
    const url = "${pageContext.request.contextPath}/board/interest";
    var paramData = {
      "membernum": membernum,
      "itemnum": itemnum
    };
    $.ajax({
      url: url,
      data: paramData,
      type: "POST",
      success: function(result) {
        isInterested = true;
        likeButton.style.backgroundColor = 'rgba(255, 192, 203, 0.5)';
        alert('찜이 되었습니다.');
      },
      error: function(result) {
        alert('찜 오류');
      }
    });
  }

  function uninterest(membernum, itemnum) {
    const url = "${pageContext.request.contextPath}/board/uninterest";
    var paramData = {
      "membernum": membernum,
      "itemnum": itemnum
    };
    $.ajax({
      url: url,
      data: paramData,
      type: "POST",
      success: function(result) {
        isInterested = false;
        likeButton.style.backgroundColor = '';
        alert('찜이 해제되었습니다.');
      },
      error: function(result) {
        alert('찜 해제 오류');
      }
    });
  }
</script>

<script>
	//서버에서 가져온 할인율 값
	var itemDTO = {
	  sale: ${itemDTO.sale}, 
	  itempay: ${itemDTO.itempay} 
	};
	
	var discountRate = itemDTO.sale * 100;
	var discountpay = itemDTO.itempay - (itemDTO.itempay * itemDTO.sale);
	
	var discountElement = document.getElementById("discount");
	var itemPriceElement = document.getElementById("itemPrice");
	var discountpayElement = document.getElementById("discountpay");
	
	if (discountRate !== 0) {
	  discountElement.style.visibility = "visible";
	  discountpayElement.style.visibility = "visible";
	  discountElement.innerHTML = "&nbsp; 할인 " + discountRate + "%";
	  discountpayElement.innerHTML = "<h2>&nbsp; " + discountpay + "원</h2>";
	  itemPriceElement.innerHTML = "<span style='text-decoration: line-through; color: gray;'>" + itemDTO.itempay + "원</span>";
	}
</script>

<script>
	//리뷰 도움돼요 버튼
	const reviewlikeButtons = document.getElementsByClassName('reviewlikeButton');
	Array.from(reviewlikeButtons).forEach(button => {
	  button.addEventListener('click', (event) => {
	    event.preventDefault();
	    let logincheck = "${user}";
	    
	    if (logincheck === "") {
	        alert('로그인 후 이용 가능합니다.');
	        location.href = "${contextPath}/board/loginForm";
	    } else {
	    const reviewno1 = button.getAttribute('data-reviewno-id');
	    reviewlike(reviewno1);
	    }
	  });
	});

	// 증가
	function reviewlike(reviewno1) {
	  const url = "${pageContext.request.contextPath}/board/reviewlike";
	  var paramData = {
	    "reviewno": reviewno1
	  };
	  $.ajax({
	    url: url,
	    data: paramData,
	    type: "POST",
	    success: function(result) {
	      if (result === "success") {
	        alert("추천되었습니다.");
	        location.reload();
	      } else if (result === "alreadyLiked") {
	        alert("본인 글은 추천할 수 없습니다.");
	      } else {
	        alert("추천 result 실패.");
	      }
	    },
	    error: function(result) {
	      alert("추천 실패했습니다.");
	    }
	  });
	}

</script>

<script>
  // 드롭다운 메뉴에서 항목을 선택했을 때 처리하는 함수
  function handleSortBySelection(sortBy) {
      document.getElementById("sortByInput").value = sortBy;
      document.getElementById("sortForm").submit();
  }
</script>

<script>
  function goToNextPage() {
    document.getElementById("nextPageForm").submit();
  }
</script>

<style>
    /* íì´ì§ ì¤íì¼ */
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
    
    
  /* í°í¸ ìì´ì½ ì¤íì¼ë§ */
    .fa-hand-point-right {
        color: #4e73df;
    }
    
    /* ì ë ¬ ì¤íì¼ë§ */
    

   .dropdown-menu {
     right: 0;
     left: auto;
   }
    
    .input-group {
        display: flex;
        align-items: center;
        justify-content: flex-end;
    }

    .dropdown-menu {
        min-width: 100px;
        border: none;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .dropdown-item {
        padding: 8px 12px;
        font-size: 14px;
        color: #333;
        transition: background-color 0.3s ease;
    }

    .dropdown-item:hover {
        background-color: #f2f2f2;
    }

    .btn {
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 4px;
        padding: 8px 12px;
        font-size: 14px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .btn:hover {
        background-color: #0056b3;
    }
</style>


    <!-- script end -->
    
</body>

</html>