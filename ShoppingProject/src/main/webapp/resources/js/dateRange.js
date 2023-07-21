$(function(){
		$.datepicker.regional["ko"] = {
	        closeText: "닫기",
	        prevText: "이전달",
	        nextText: "다음달",
	        currentText: "오늘",
	        monthNames: ["1월(JAN)","2월(FEB)","3월(MAR)","4월(APR)","5월(MAY)","6월(JUN)", "7월(JUL)","8월(AUG)","9월(SEP)","10월(OCT)","11월(NOV)","12월(DEC)"],
	        monthNamesShort: ["1월","2월","3월","4월","5월","6월", "7월","8월","9월","10월","11월","12월"],
	        dayNames: ["일","월","화","수","목","금","토"],
	        dayNamesShort: ["일","월","화","수","목","금","토"],
	        dayNamesMin: ["일","월","화","수","목","금","토"],
	        weekHeader: "Wk",
	        dateFormat: "yymmdd",
	        firstDay: 0,
	        isRTL: false,
	        showMonthAfterYear: true,
	        yearSuffix: ""
	    };
		
		$.datepicker.setDefaults($.datepicker.regional["ko"]);
	});
	
	$(function(){
		// 날짜 검색 : TODAY MAX값으로 인식 (maxDate: "+0d")를 삭제하면 MAX값 해제
		$("#startDate, #endDate").datepicker({ changeMonth: true, changeYear: true, dateFormat: "yy-mm-dd", showButtonPanel: true, yearRange: "c-99:c+99", maxDate: "+0d" });
	});
	
	
	
	$(function() {
	    $("input[value='오늘']").on("click", function() {
	        setDateRange('오늘');
	    });

	    $("input[value='어제']").on("click", function() {
	        setDateRange('어제');
	    });

	    $("input[value='일주일']").on("click", function() {
	        setDateRange('일주일');
	    });

	    $("input[value='지난달']").on("click", function() {
	        setDateRange('지난달');
	    });

	    $("input[value='1개월']").on("click", function() {
	        setDateRange('1개월');
	    });

	    $("input[value='3개월']").on("click", function() {
	        setDateRange('3개월');
	    });

	    $("input[value='전체']").on("click", function() {
	        setDateRange('전체');
	    });
	});
	
	function setDateRange(range) {
	    var today = new Date(); // 현재 날짜
	    var startDate, endDate;

	    if (range === '오늘') {
	        startDate = new Date(today); // 오늘 날짜
	        endDate = new Date(today); // 오늘 날짜
	    } else if (range === '어제') {
	        startDate = new Date(today);
	        startDate.setDate(today.getDate() - 1); // 어제 날짜
	        endDate = new Date(today);
	        endDate.setDate(today.getDate() - 1); // 어제 날짜
	    } else if (range === '일주일') {
	        startDate = new Date(today);
	        startDate.setDate(today.getDate() - 7); // 7일 전 날짜
	        endDate = new Date(today); // 오늘 날짜
	    } else if (range === '지난달') {
	        startDate = new Date(today);
	        startDate.setMonth(today.getMonth() - 1); // 지난달 1일
	        startDate.setDate(1);
	        endDate = new Date(today);
	        endDate.setDate(0); // 지난달 마지막 날짜
	    } else if (range === '1개월') {
	        startDate = new Date(today);
	        startDate.setMonth(today.getMonth() - 1); // 1개월 전 날짜
	        startDate.setDate(today.getDate() + 1); // 1개월 전 날짜 + 1일
	        endDate = new Date(today); // 오늘 날짜
	    } else if (range === '3개월') {
	        startDate = new Date(today);
	        startDate.setMonth(today.getMonth() - 3); // 3개월 전 날짜
	        startDate.setDate(today.getDate() + 1); // 3개월 전 날짜 + 1일
	        endDate = new Date(today); // 오늘 날짜
	    } else if (range === '전체') {
	        startDate = null; // 시작일 없음
	        endDate = null; // 종료일 없음
	    }

	    // 시작일과 종료일을 input 태그에 설정
	    $("#startDate").val(startDate ? formatDate(startDate) : "");
	    $("#endDate").val(endDate ? formatDate(endDate) : "");
	}
	
	// 날짜를 yyyy-mm-dd 형식으로 변환
	function formatDate(date) {
	    var year = date.getFullYear();
	    var month = (date.getMonth() + 1).toString().padStart(2, '0');
	    var day = date.getDate().toString().padStart(2, '0');
	    return year + '-' + month + '-' + day;
	}