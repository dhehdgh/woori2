<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
 

.xans-order-basketpackage .ec-base-table td.button a { width:90px; margin:1px 0; }
.xans-order-basketpackage .ec-base-table td.button button{ width:90px; margin:1px 0; }
.xans-order-basketpackage .xans-order-empty p {margin:50px 0;text-align:center;font-weight:bold;color:#707070;}

.xans-order-dcinfo { margin:20px 0; color:#353535; line-height:1.5; }
.xans-order-dcinfo h3 { font-size:12px; }
.xans-order-dcinfo .description .mileage { margin:6px 0 0; padding:10px 0 0; border-top:1px solid #e8e8e8; *zoom:1; }
.xans-order-dcinfo .description .mileage:after { content:""; display:block; clear:both; }
.xans-order-dcinfo .description .displaynone + .mileage { margin:0; padding:0; border:0; }
.xans-order-dcinfo .description .mileage li { float:left; margin:0 40px 0 0; }
.xans-order-dcinfo .description .mileage li a { text-decoration:none; }
.xans-order-dcinfo .description .mileage li strong { color:#940101; }
.xans-myshop-wishlist .title { margin:30px 0 10px 10px; }
.xans-myshop-wishlist .title h3 { color:#353535; font-size:12px; }

/* List */
.xans-myshop-wishlist td.thumb img { max-width:80px; }
.xans-myshop-wishlist td.price { word-break:normal; line-height:11px!important; }
.xans-myshop-wishlist td.button a { width:90px; margin:1px 0; }
.xans-myshop-wishlist .name .ec-set-product-name { display:block; margin:0 0 3px; }
.xans-myshop-wishlist td div.option,
.xans-myshop-wishlist td ul.option > li { margin:9px 0 0; color:#707070; line-height:16px; }
.xans-myshop-wishlist td ul.option > li > strong { display:block; color:#353535; }
.xans-myshop-wishlist td div.option span.file a,
.xans-myshop-wishlist td ul.option > li > span.file a { margin:0 0 0 4px; padding:0 0 0 11px; color:#707070; text-decoration:underline; background:url("//img.echosting.cafe24.com/skin/base/common/ico_file.gif") no-repeat 0 2px; }
.xans-myshop-wishlist td .mileage { display:block; }

/* ì˜µì…˜ë³€ê²½ ë ˆì´ì–´ */
.xans-myshop-wishlist .optionModify { display:none; width:450px; color:#707070; }
.xans-myshop-wishlist .optionModify .prdInfo { margin:0 0 10px; padding:0 0 10px; border-bottom:1px dotted #b0b1b3; line-height:1.5; }
.xans-myshop-wishlist .optionModify .prdInfo li { color:#353535; font-weight:bold; }
.xans-myshop-wishlist .optionModify .prdInfo li.option { color:#707070; font-weight:normal; }
.xans-myshop-wishlist .optionModify .prdModify h4 { color:#353535; font-size:12px; }
.xans-myshop-wishlist .optionModify .prdModify li { padding:6px 0 0; }
.xans-myshop-wishlist .optionModify .prdModify li:after { content:""; display:block; clear:both; }
.xans-myshop-wishlist .optionModify .prdModify li span { float:left; width:110px; margin:3px 0 0; }
.xans-myshop-wishlist .optionModify .prdModify li select { float:right; width:294px; line-height:24px; font-size:12px; }
.xans-myshop-wishlist .optionModify .prdModify li input[type=text] { float:right; width:284px; }

/* ë°°ì†¡ë¹„ë ˆì´ì–´ */
.xans-myshop-wishlist .shippingFee { position:relative; display:inline-block; text-align:left; }
.xans-myshop-wishlist .shippingFee .ec-base-tooltip { display:block; margin:0 0 0 -170px; width:360px; }
.xans-myshop-wishlist .shippingFee .ec-base-tooltip table th { width:40px; }
.xans-myshop-wishlist .shippingFee .ec-base-tooltip table th,
.xans-myshop-wishlist .shippingFee .ec-base-tooltip table td { padding:7px 10px 8px 10px; text-align:left; }
@charset "utf-8";

/* **************************** //í•„ìˆ˜ CSS ìˆ˜ì • ë° ì‚­ì œ ë¶ˆê°€ **************************** */

/* tag reset */

html,body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,code,form,fieldset,legend,input,textarea,p,blockquote,th,td,img { margin:0; padding:0; }
html { width:100%; height:100%; }
body,code {font-family:"Lato",helvetica,"Apple SD Gothic Neo",Nanum Gothic,Malgun Gothic,ë§‘ì€ ê³ ë”•,sans-serif; line-height:1.5em; font-size:12px;
    color:#444; background:#fff; -webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale; }
body {}
body#popup { min-width:0; }
li { list-style:none; }
img,fieldset { border:none; vertical-align:top; }
table { width:100%; border:0; border-spacing:0; border-collapse:collapse; }

th,td { border:0; vertical-align:top; }
button { overflow:visible; padding:0; margin:0; border:0; cursor:pointer; }
hr.layout { display:none; }
a { text-decoration:none; color:#444; }
a:hover { text-decoration:none; color:#ddd; }
a:active { text-decoration:none; }
.objHidden { visibility:hidden; position:absolute; left:-1000px; top:-1000px; height:0; width:0; }
#content_CONTAINER table, #bi_inquire_content_CONTAINER table { border:0; margin:0 0 -1px; }
#content_CONTAINER table:before, #bi_inquire_content_CONTAINER table:before { display:none; }
#content_CONTAINER td, #bi_inquire_content_CONTAINER td { width:auto !important; padding:0; }
table.nneditor-table { width:auto !important; }




/* contents */
#skipNavigation {position:absolute; top:0; left:0; z-index:100; width:100%; height:0;}
#skipNavigation p, #skipNavigation ul, #skipNavigation ul li {height:0;}
#skipNavigation p a {position:absolute; left:0; top:0; display:block; overflow:hidden; width:1px; height:1px; margin-left:-1px; margin-bottom:-1px; text-align:center; color:#000; white-space:nowrap;}
#skipNavigation p a:focus, #skipNavigation p a:hover, #skipNavigation p a:active {width:100%; height:auto; padding:10px 0; background:#c4122f; color:#fff; z-index:100;}



.dimmed { position:fixed; top:0; left:0; z-index:99; width:100%; height:100%; background:#fff; opacity:0.8; filter:alpha(opacity=80); }

/* **************************** í•„ìˆ˜ CSS ìˆ˜ì • ë° ì‚­ì œ ë¶ˆê°€ **************************** */
@charset "utf-8";



/*  â™¨ â˜†â˜…â˜† â—‡â—†â—‡ â€»â€»â€» â—‡â—†â—‡ â˜†â˜…â˜† â˜†â˜…â˜† â—‡â—†â—‡ â€»â€»â€» â—‡â—†â—‡ â˜†â˜…â˜† â˜†â˜…â˜† â—‡â—†â—‡ â€»â€»â€» â—‡â—†â—‡ â˜†â˜…â˜† â™¨ */
a:focus {outline:none;}
a {blr:expression(this.onFocus=this.blur());}
area:focus {outline:none;}
area {blr:expression(this.onFocus=this.blur());}
input:focus, img:focus, embed:focus, map:focus, button:focus  {outline:none;}
/*  â™¨ â˜†â˜…â˜† â—‡â—†â—‡ â€»â€»â€» â—‡â—†â—‡ â˜†â˜…â˜† â˜†â˜…â˜† â—‡â—†â—‡ â€»â€»â€» â—‡â—†â—‡ â˜†â˜…â˜† â˜†â˜…â˜† â—‡â—†â—‡ â€»â€»â€» â—‡â—†â—‡ â˜†â˜…â˜† â™¨ */

.motion { -webkit-opacity:0;-khtml-transition:all 0.3s ease;-moz-transition:all 0.3s ease;-ms-transition:all 0.3s ease;-o-transition:all 0.3s ease;transition:all 0.3s ease; }
.motion2 { transition:all 0.3s ease-in-out; }
.iconmove {-khtml-transition: all 0.3s ease; -moz-transition: all 0.3s ease; -ms-transition: all 0.3s ease; -o-transition: all 0.3s ease; transition: all 0.3s ease;}
/* trigger */
.momoifade1  {opacity:0; position:relative; padding-left:40px; transition:all 1s ease-in-out; }
.fade-in1 {opacity:1; padding-left:0;  }

.clear-b {clear:both}


#wrap { position:relative; width:100%; min-width:1024px; margin:0 auto;}
#container { width:70%; margin:30px auto 60px; zoom:1; position:relative; }
#container:after {content: "";display: block;clear:both;height:0;visibility:hidden;overflow:hidden; }
#container #contents { width:100%; max-width:1500px;  margin:20px auto 30px; min-height:500px;  } 

#container1 { width:100%; margin:0px auto 60px; zoom:1; position:relative; }
#container1:after {content: "";display: block;clear:both;height:0;visibility:hidden;overflow:hidden; }
#container1 #contents { width:100%;  max-width:1500px; margin:20px auto 30px; min-height:500px; } 



#quick { position:absolute; top:300px; right:5%; width:90px; }
#quick .banner a { display:block; margin:15px 0 0; }


/*-----------------------------------------------------------------*/
/*  ë©”ì¸ë°°ë„ˆ
/*-----------------------------------------------------------------*/
.main-banner { position:relative; clear:both; width:100%;  max-width:1540px; text-align:center; margin:50px auto 80px;  font-size:12px; color:#777; display:none;}
.main-banner.on {display:block}
.main-banner.off {display:none}
.main-banner li {position:relative;  display:inline-block; width:33%; text-align:center; box-sizing:border-box; padding:0; margin:0;  }
.main-banner li:hover {opacity:0.7; }
.main-banner a:hover {color:#777; }
.main-banner li img {max-width:100%; }
.main-banner li:first-child { position:relative; left:-10px;  }
.main-banner li:last-child { position:relative; right:-10px;  }

.main-banner h3 { display:block; font-size:18px; color:#000; font-weight:500; padding:15px 0 7px; }


/*-----------------------------------------------------------------*/
/*  ìŠ¤í¬ë¡¤ ì—…ë‹¤ìš´
/*-----------------------------------------------------------------*/
#scroll_up_down { position: fixed; z-index:100; right:1%; bottom:40px;  }
#scroll_up_down a { font-size:18px; text-align:center; display:block; padding:7px; margin:4px 0; color:#000;  border-radius:100%; background-color: rgba( 255, 255, 255, 0.5 ); }
#scroll_up_down a.up {text-decoration:none;  }
#scroll_up_down a.down { text-decoration:none;    }

#scroll_up_down  .kakaotalk {background:#f1d900; color:#391d1d!important; font-size:22px; padding:6px;}
#scroll_up_down .talktalk {background:#01c13a; padding:9px 9px; margin-bottom:15px;}
#scroll_up_down .talktalk img {max-width:15px;}

[data-tooltip-text]:hover {
	position: relative;
}

[data-tooltip-text]:hover:after {
	content: attr(data-tooltip-text);

    position: absolute;
	bottom:5px;
	left: -250%;
    width:70px;
    padding:5px 0;
    text-align:center;
    border-radius:5px;
    background:#ffc68b;
	color: #FFFFFF;
	font-size: 11px;

	z-index: 9999;
}


/* í¬ì¸íŠ¸ìƒ‰ìƒ */
.pointbg,
.search-hotkeyword .popular li a:before,
#wrap_notice_search .popular li a:before,
.qnacount, 
.reviewcount,
.swiper-pagination-bullet-active,
.btnSubmit,
.btnSubmitFix {background:#ffc68b!important;}
#joinpoint2:after { border-bottom-color: #ffc68b!important; }



/* ìŠ¤íŒ¸ì‹ ê³ , ìŠ¤íŒ¸í•´ì œ */
.typeBG .gLeft {margin-left:20px; }

/* Main */
#boardArea { overflow:hidden; margin:50px 0 0; border-top:1px solid #d8d8d8; }
#bannerArea { margin:22px 0 0; }
#bannerArea h2 { margin:0 0 16px; font-weight:normal; font-size:20px; color:#2e2e2e; text-align:center; }

/* íƒìƒ‰ê²½ë¡œë°” */
.path { overflow:hidden; height:30px; line-height:30px; *zoom:1; }
.path span { overflow:hidden; position:absolute; width:0; height:0; white-space:nowrap; text-indent:100%; }
.path ol { float:right; }
.path li { float:left; padding:0 0 0 12px; margin:0 0 0 8px; color:#757575; background:url("//img.echosting.cafe24.com/skin/base/layout/ico_path.gif") no-repeat 0 10px; }
.path li:first-child { background:none; }
.path li a { color:#757575; }
.path li strong,
.path li strong a { color:#2e2e2e; }

/* íƒ€ì´í‹€ */
.titleArea { min-height:30px; margin:10px 0 20px; text-align:center; }
.titleArea h2 { display:inline-block; color:#2e2e2e; font-size:16px; *display:inline; }
.titleArea p { display:block; position:relative; margin:0 0 0 ; padding:4px 0 0 ; color:#939393; *display:inline; }
.titleArea ul { padding:5px 0; color:#939393; line-height:18px; }
.titleArea ul li { position:relative; padding:0 0 0 9px; }


/* ê²Œì‹œíŒ ë©”ì¸ */
.boardMain { overflow:hidden; *zoom:1; }
.boardMain td img { vertical-align:middle; margin:1px; }
.boardMain .board { position:relative; margin:0 0 65px; }
.boardMain .leftArea { float:left; width:50%; }
.boardMain .leftArea .board { margin:0 23px 65px 0; }
.boardMain .rightArea { float:right; width:50%; }
.boardMain .rightArea .board { margin:0 0 65px 23px; }
.boardMain .board h3 { margin:0 0 13px; height:28px; font-size:16px; color:#2e2e2e; border-bottom:2px solid #626672; }
.boardMain .board .btnLink { position:absolute; top:3px; right:0; }
.boardMain .board .ec-base-table.typeList td { color:#a4a4a4; }
.boardMain .board .ec-base-table.typeList td.title a,
.boardMain .board .ec-base-table.typeList td.title a:hover { color:#4f4f4f; }
.boardMain .board .galleryList { overflow:hidden; }
.boardMain .board .galleryList ul { overflow:hidden; margin:0 -10px; }
.boardMain .board .galleryList li { float:left; position:relative; width:20%; padding:0 0 12px 0; word-break:break-all; }
.boardMain .board .galleryList li span { display:block; margin:0 10px; font-size:11px; color:#a4a4a4; }
.boardMain .board .galleryList li .imgLink,
.boardMain .board .galleryList li .imgLink:hover { display:block; margin:0 10px 5px; font-size:12px; }
.boardMain .board .galleryList li .imgLink img { width:100%; max-height:110px; border:1px solid #ededed; }

/* í€µë·° ëª¨ë‹¬ */
#modalBackpanel { display:none; position:absolute; top:0; left:0; z-index:10000; width:100%; height:100%; background:#000; }
#modalContainer { display:none; position:absolute; top:100px; left:100px; z-index:10001; width:975px; height:720px; border:1px solid #333; background:#fff; }
#modalContainer #modalContent { width:100%; height:100%; }


.orderStep {display:none;}


/* ë²„íŠ¼ ë¸”ëž™ */
.bu_board  { display:inline-block;  border-radius:2px; margin:0 2px; font-size:11px;   background:#000; border:1px solid #000; color:#fff; }
.bu_board:hover{ background:#fff; border:1px solid #222; color:#000; }

/* ë²„íŠ¼ í™”ì´íŠ¸ */
.bu_board1 { display:inline-block; border:1px solid #ddd; border-radius:2px; margin:0 2px; background:#fff; padding:2px 5px;  font-size:11px;  color:#444; }
.bu_board1:hover { background:#fff; border:1px solid #222; color:#000; }


/* ë²„íŠ¼ í™”ì´íŠ¸ ê°€ë¡œí­ê³ ì • */
.bu_boardfix { display:inline-block; border:1px solid #ddd; border-radius:2px; margin:2px; background:#fff; width:80px; padding:5px 0; font-size:11px;  color:#444; }
.bu_boardfix:hover { background:#fff; border:1px solid #222; color:#000; }

.full-bu-w { display:inline-block; border:1px solid #ddd; border-radius:2px; margin:0 0px; width:97%; background:#fff; padding:5% 2%;  font-size:14px; font-weight:600; letter-spacing:2px;  color:#000; text-align:center;}
.full-bu-w:hover { background:#fff; border:1px solid #222; color:#000;  }

.full-bu-b { display:inline-block; border:1px solid #ddd; border-radius:2px; margin:0 0px; width:97%; background:#bbac9e; padding:3% 2%;  font-size:12px; font-weight:400; letter-spacing:1px;  color:#fff; text-align:center;}
.full-bu-b:hover { background:#fff; border:1px solid #222; color:#000;  }


/* ë‹¤í¬ê·¸ë ˆì´ */
.bu_boardall { display:inline-block; border:1px solid #444; border-radius:2px; margin:0 2px; background:#444;   font-size:11px;  color:#fff; }
.bu_boardall:hover{ background:#626262; border:1px solid #222; color:#fff; }

.buboard1, .buboard, .buboarddall  { height:30px; line-height:30px; padding:0 12px; }
.buboardpadding {padding:3px 10px;}


.smart-banner-bx-wrapper .bx-pager.bx-default-pager a:hover, .smart-banner-bx-wrapper .bx-pager.bx-default-pager a.active {     background: rgba(255, 255, 255, 1)!important; }
.smart-banner-bx-wrapper .bx-pager.bx-default-pager a { background: rgba(255, 255, 255, 0.5)!important; }
.smart-banner-bx-wrapper .bx-pager.bx-default-pager .bx-pager-item {padding:15px 0; }

#promotionBanner, #promotionon {position:relative;  width: 100%; min-width:1024px; overflow: hidden;padding:0; display:none; }
.promotion-box {position:relative;   max-width:90%; margin: 0 auto;overflow: hidden; text-align: center; }
.promotion-box span { padding:0;  display:none;}
#promotionBanner.on .promotion-box span { padding:12px 0 18px;  display:inline-block;}
.pro-text {  font-size:13px; letter-spacing:1px; }
.close-box {position:absolute; top:6px; right:0; font-size:11px; padding: 0; line-height:15px; display:none; }
.close-btn {position:relative; font-size:18px; margin-left:10px; padding:5px; top:5px; }
#chkday {color: #000;  }
label[for=chkday] { cursor: pointer; color: #d8d8d8; padding-right: 10px;}


[data-tooltip-chkbox]:hover { position: relative; }

[data-tooltip-chkbox]:hover:after {
	content: attr(data-tooltip-chkbox);
    position: absolute;
	margin-top:-4px!important;
	right:20px;
    width:100px;
    margin:0;
    padding:3px 5px 5px;
    text-align:center;
    border-radius:5px;
    background-color: rgba(0, 0, 0, 0.3);
	color: #fff;
	font-size: 11px;

	z-index: 9999;
}

#main-banner.on,
#promotionBanner.on { opacity: 1; overflow:hidden;}
#promotionBanner.on .close-box { display:block; }

#main-banner.off,
#promotionBanner.off {height:0; opacity: 0; overflow:hidden; display:none;}
#promotionBanner.off .promotion-box { padding:0px; }

.disnoneI {display:none;}
.disnoneI.off {display:none; opacity: 0;}
.disnoneI.on  {display:inline-block;}

.disnoneB {display:none;}
.disnoneB.off {display:none; opacity: 0;}
.disnoneB.on  {display:block;}


/*
#mainreview.on,
#fix-talktalk.on, 
#joinpoint2.on {display:block}


#kakaotalk.on,
#facebook.on, 
#instagram.on, 
#nblog.on, 
#youtube.on, 
#sstore.on, 
#talktalk.on, 
#fix-talk.on  {display:inline-block;}

#kakaotalk.off, 
#facebook.off, 
#instagram.off, 
#nblog.off, 
#youtube.off, 
#sstore.off, 
#talktalk.off, 
#fix-talk.off, 
#fix-talktalk.off, 
.call-tel.off, 
#joinpoint2.off {display:none; opacity: 0;}

.kakaotalk, 
.facebook, 
.instagram, 
.nblog, 
.youtube, 
.sstore, 
.talktalk,
#fix-talk,
#fix-talktalk, 
.fix-talk  {display:none;}
*/
/* Font */
.txtInfo { color:#707070; }
.txtWarn { color:#888; }
.txtEm { color:#940101; }
.txtDel, .strike, .discount { text-decoration:line-through; font-weight:normal; }
.strike strong, .discount strong { font-weight:normal; }
.txtNormal { font-weight:normal; font-style:normal; }
.txtNum { display:inline-block; font-size:11px; color:#939393; word-break:normal; }
.txt11 { font-size:11px; }
.txt12 { font-size:12px; }
.txt14 { font-size:14px; }
.txt16 { font-size:16px; }
.txt18 { font-size:18px; letter-spacing:-1px; }
.txtIcon { font-size:12px; font-style:normal; }
.txtBreak { word-break:break-all; word-wrap:break-word; }
  /* JP, TW, CN */
  html:lang(ja) .txt11,
  html:lang(zh) .txt11,
  html:lang(zh-tw) .txt11 { font-size:12px; }

/* grid */
.gBlank5 { display:block; margin-top:5px; }
.gBlank10 { display:block; margin-top:10px; }
.gBlank20 { display:block; margin-top:20px; }
.gBlank30 { display:block; margin-top:30px; }
.gIndent10 { margin-left:10px; }
.gIndent20 { margin-left:20px; }
.gSpace10 { margin-right:10px; }
.gSpace20 { margin-right:20px; }
.gMerge { position:relative; z-index:1; margin-top:-1px; }

/* ec-base-qty */
.ec-base-qty { position:relative; display:inline-block; width:50px; margin:0 1px 0 0; text-align:left; }
.ec-base-qty input[type="text"] { width:22px; height:23px; padding:0 0 0 5px; line-height:25px; border:1px solid #d4d8d9; border-radius:3px 0 0 3px; }
.ec-base-qty .up { position:absolute; left:27px; top:0; }
.ec-base-qty .down { position:absolute; left:27px; bottom:0; }
.ec-base-qty .qtyUp {position:absolute; left:27px; top:0;}
.ec-base-qty .qtyDown { position:absolute; left:27px; bottom:0;}
.ec-base-qty .qtyUp .up { position:static; left:auto; top:auto; }
.ec-base-qty .qtyDown .down { position:static; left:auto; top:auto; }

/* ec-base-chk */
.ec-base-chk { display:inline-block; position:relative; margin:0 8px 0 0; width:22px; height:22px; vertical-align:top; cursor:pointer; }
.ec-base-chk input { z-index:1; position:absolute; top:0; left:0; width:100%; height:100%; opacity:0; cursor:pointer; }
.ec-base-chk .checkbox { position:absolute; top:0; left:0; width:100%; height:100%; background:url("//img.echosting.cafe24.com/skin/base/common/bg_join_check.png") no-repeat 0 0; }
.ec-base-chk input:checked + .checkbox { background-position:-34px 0; }

/* Form */
input,select,textarea { font-size:100%; font-family:"ë‹ì›€", Dotum; color:#353535; vertical-align:middle; }
input[type=radio],
input[type=checkbox] { width:13px; height:13px; border:0; }
input[type=text],
input[type=password] { height:18px; line-height:20px; padding:2px 4px; border:1px solid #d5d5d5; color:#353535; font-size:12px; }
input[type=radio] + label, input[type=checkbox] + label { margin:0 4px 0 2px; }
select { height:24px; border:1px solid #d5d5d5; }
textarea { padding:5px 6px; border:1px solid #d5d5d5; line-height:1.5; }
input:-ms-input-placeholder, textarea:-ms-input-placeholder { color:#c1c1c1; }
input::-webkit-input-placeholder, textarea::-webkit-input-placeholder { color:#c1c1c1; }
input::-moz-placeholder, textarea::-moz-placeholder { color:#c1c1c1; opacity:1; }
legend { visibility:hidden; position:absolute; left:-9999px; top:-9999px; width:0; height:0; line-height:0; }

table tr.radioType input,
span.noBorder input { border:none !important; width:auto !important; height:auto !important; margin:0 3px 0 0 !important; vertical-align:middle !important; background:none !important; }

.gLabel { display:inline-block; }
.gLabel label { margin-right:20px; line-height:22px; }
.fWidthFull input[type=text] { width:100%; height:24px; -webkit-box-sizing:border-box; -moz-box-sizing:border-box; box-sizing:border-box; }
.fWidthFull textarea { width:100%; -webkit-box-sizing:border-box; -moz-box-sizing:border-box; box-sizing:border-box; }
.fWidthFull select { width:100%; -webkit-box-sizing:border-box; -moz-box-sizing:border-box; box-sizing:border-box; }
.fList.typeHor .gLabel { margin-right:20px; }
.fList.typeVer .gLabel { display:block; }

.ec-base-tooltip { display:none; z-index:2; position:absolute; top:24px; padding:15px; border:1px solid #565960; background:#fff;
    -webkit-box-shadow: 3px 3px 3px 0px rgba(0,0,0,0.15);
    -moz-box-shadow: 3px 3px 3px 0px rgba(0,0,0,0.15);
    box-shadow: 3px 3px 3px 0px rgba(0,0,0,0.15);
}
.ec-base-tooltip h3 { margin:0 0 8px; padding:0 10px; font-size:12px; border-bottom:0; background:url("//img.echosting.cafe24.com/skin/base/common/ico_layer_title.gif") no-repeat 0 50%; }
.ec-base-tooltip h3 + p { margin:0 5px 10px; }
.ec-base-tooltip h4 { margin:15px 10px 8px 5px; font-size:12px; }
.ec-base-tooltip h4:before { display:inline-block; content:""; margin:0 5px 0 0; width:3px; height:3px; background:#666; vertical-align:middle; }
.ec-base-tooltip .btnClose { position:absolute; right:14px; top:14px; }
.ec-base-tooltip .edge { z-index:20; position:absolute; left:50%; top:-6px; display:block; margin:0 0 0 -5px; width:10px; height:6px; }
.ec-base-tooltip .edge:before,
.ec-base-tooltip .edge:after { display:inline-block; content:""; position:absolute; top:0; width:0; height:0; border:solid transparent; }
.ec-base-tooltip .edge:before { margin:1px 0 0; border-bottom-color:#565960; border-width:0 5px 5px 5px; }
.ec-base-tooltip .edge:after { left:1px; margin:2px 0 0; border-bottom-color:#fff; border-width:0 4px 4px 4px; }
.ec-base-tooltip table th,
.ec-base-tooltip table td { padding:8px 10px 7px 10px; border:1px solid #e8e8e8; line-height:1.5em; }
.ec-base-tooltip table th { padding-right:0; background:#fbf9fa; }
.ec-base-tooltip table thead th { text-align:center; }
.ec-base-tooltip table tbody th { text-align:left; }
.ec-base-tooltip table .left { text-align:left; }
.ec-base-tooltip table .center { text-align:center; }
.ec-base-tooltip table .right { text-align:right; }
.ec-base-tooltip table .info { padding:0; color:#757575; }
.ec-base-tooltip table p.info:before,
.ec-base-tooltip table ul.info li:before { display:inline-block; content:""; margin:0 3px 0 0; width:4px; height:1px; background:#757575; vertical-align:middle; }
.ec-base-tooltip .info { padding:10px 10px 0; margin:5px 0 0; }
.ec-base-tooltip p.bullet,
.ec-base-tooltip ul.bullet { margin:8px 10px; }
.ec-base-tooltip p.bullet:before,
.ec-base-tooltip ul.bullet li:before { display:inline-block; content:""; margin:-3px 3px 0 0; width:0; height:0; border:solid transparent; border-left-color:#333; border-width:2px 0 2px 2px; vertical-align:middle; }
.ec-base-tooltip ul.bullet li { line-height:1.5em; }
.ec-base-tooltip .txtEm { color:#008bcc; }
.ec-base-tooltip .txtWarn { color:#f65b54; }

/* typeUpper */
.ec-base-tooltip.typeUpper { top:auto; bottom:34px; }
.ec-base-tooltip.typeUpper .edge { top:auto; bottom:-6px; }
.ec-base-tooltip.typeUpper .edge:before { margin:0 0 -5px; border-top-color:#565960; border-width:5px 5px 0 5px; }
.ec-base-tooltip.typeUpper .edge:after { left:1px; margin:0 0 -4px; border-top-color:#fff; border-width:4px 4px 0 4px; }
span.ec-base-help,
p.ec-base-help,
ul.ec-base-help li { margin:2px 9px; padding:1px 0 1px 20px; line-height:1.4; background:url('//img.echosting.cafe24.com/skin/base/common/ico_info.gif') no-repeat 0 2px; }

div.ec-base-help { margin:20px 0; border:1px solid #eee; line-height:18px; }
div.ec-base-help > h2,
div.ec-base-help > h3 { padding:15px 0 15px 10px; border-bottom:1px solid #e8e7e7; color:#101010; font-size:12px; background:#fbfbfb; }
div.ec-base-help .inner { padding:0 9px 12px; }
div.ec-base-help h4 { margin:22px 0 -4px; color:#404040; font-size:12px; font-weight:normal; }
div.ec-base-help h4:first-child { margin-top:13px; }
div.ec-base-help p { margin:15px 0 0 10px; color:#707070; }
div.ec-base-help ul,
div.ec-base-help ol { margin:15px 0 0 11px; }
div.ec-base-help li { color:#707070; }

/* number */
div.ec-base-help ol li { padding:0 0 0 25px; background:url('//img.echosting.cafe24.com/skin/base/common/ico_number.png') no-repeat; }
div.ec-base-help ol .item1 { background-position:-484px 0; }
div.ec-base-help ol .item2 { background-position:-434px -100px; }
div.ec-base-help ol .item3 { background-position:-384px -200px; }
div.ec-base-help ol .item4 { background-position:-334px -300px; }
div.ec-base-help ol .item5 { background-position:-284px -400px; }
div.ec-base-help ol .item6 { background-position:-234px -500px; }
div.ec-base-help ol .item7 { background-position:-184px -600px; }
div.ec-base-help ol .item8 { background-position:-134px -700px; }
div.ec-base-help ol .item9 { background-position:-84px -800px; }
div.ec-base-help ol .item10 { background-position:-34px -900px; }

/* typeDash */
div.ec-base-help ul li { padding:0 0 0 11px; background:url('//img.echosting.cafe24.com/skin/base/common/ico_dash.gif') no-repeat 0 7px; }
.ec-base-help.typeDash li { padding:0 0 0 11px; background:url("//img.echosting.cafe24.com/skin/base/common/ico_dash.gif") no-repeat 0 7px; }
.ec-base-tooltip .ec-base-help.typeDash li { margin:2px 0; }
/* ê³µí†µ */
.ec-base-product { position:relative; width:100%; margin:0 auto;  }

.ec-base-product h2 { font-size:13px;  color:#000; font-weight:400; letter-spacing:1px; margin:100px 0 30px 0; text-transform:uppercase; text-align:center; clear:both;}
.ec-base-product h2 b {font-size:11px; font-weight:400; color:#777; text-align:center; margin:5px auto 0; display:block;}

.ec-base-product img { vertical-align:middle; }

.ec-base-product .prdList { display:table; width:100%; margin:0 auto 0; padding:0 0 0;  font-size:0; line-height:0; }
.ec-base-product .prdList > li { display:inline-block; margin:0 0 60px; color:#757575; vertical-align:top; text-align:center;}

.ec-base-product .prdList .chk { display:block; margin:0 0 10px; }
.ec-base-product .prdList .thumbnail { position:relative; width:97%; max-width:400px; margin:0 auto 15px; font-size:0; line-height:0;}
.ec-base-product .prdList .thumbnail > a > img {  width:100%; max-width:100%; box-sizing:border-box; border-radius:20px;}

.ec-base-product .prdList .thumbnail .prdIcon { position:absolute; top:0;  right:3%; width:97%; height:100%; background-repeat:no-repeat; }



.ec-base-product .prdList .description {  width:97%;  max-width:400px;  padding:0; margin:0 auto;  font-size:12px; line-height:18px; text-align:left; /* width:90%; margin:0 auto; padding:0; font-size:12px; line-height:18px; text-align:center; */}
.ec-base-product .prdList .description .icon {width:100%; margin:0 0 5px;  vertical-align:middle; height:30px; }
.ec-base-product .prdList .description .icon:after { content:""; display:block; clear:both; }
.ec-base-product .prdList .description .option { position:relative;  z-index:50; cursor:pointer;  padding:1000px 0 0 0px; }


/* ìƒí’ˆëª… */
.description .name { margin:10px 0 0px 0; padding: 0 0 5px; font-weight:600; }
.description .name strong {  }

/* ìš”ì•½ì„¤ëª… */
.prdList .description .summary_desc { padding:0 0 4px;  }
.prdList .description .summary_desc span { opacity:0.7; font-size:92%!important; }

/* í• ì¸ê¸°ê°„ í• ì¸ê°€ íƒ€ì´í‹€ */
.prdList .description .prd_promotion_date,
.prd_price_sale .title { display:none;}

/*í• ì¸ê°€*/
.prdList .description .prd_price_sale,
.prdList .description .optimum_discount_price { display:inline-block; padding-left:6px; font-weight:bold!important;}
.prdList .description .prd_price_sale span span, #span_product_price_sale span { padding-left:2px; }
/*.prdList .description .prd_price_sale span span:after {content: "\e905"; font-family : xeicon;  float:right;  }*/


/*í• ì¸ìœ¨*/
.prdList .description .ec-sale-rate { padding:0 1px 0 0; }
#span_product_price_text .ec-sale-rate { padding:0 5px 0 0; }
/*ì†Œë¹„ìžê°€*/
.prdList .description .product_custom { display:inline-block; }
.prdList .description .product_custom span {  padding-right:6px; }

/*íŒë§¤ê°€*/
.prdList .product_price { display:inline-block;  }
.prdList .product_price span {  color:#555!important;  }
.ec-base-product .product_price span { color:#555!important; }


/*ì»¬ëŸ¬ë°”*/
.prdList .description .spec li .color { overflow:hidden; display:inline-block; margin:7px 0 0 0; }
.prdList .description .spec li .chips { float:left; width:6px; height:6px; border-radius:50px; border:1px solid rgba(50,50,50,0.1);  margin:0 2px 2px; font-size:0; line-height:0; }

/*ì•„ì´ì½˜*/
.prdList .description .promotion {  display:block;  width:100%; padding:8px 0 0; }
.prdList .description .promotion img {padding:0 3px 0;}



/* ì˜µì…˜ë°” */
.ec-base-product .prdList .prdimg .prdinfo img { width:15px; padding:2% 3%; background-color: rgba( 255, 255, 255, 0.7 ); }
.ec-base-product .prdList .prdimg .prdinfo {position:absolute;display:block;*zoom:1;filter:alpha(opacity=0);opacity:0; bottom:0px; text-align:center; right:0px; width:100%;}
.ec-base-product .prdList .prdimg:hover .prdImg span {display:block;*margin:0 0 -8px; }
.ec-base-product .prdList .prdimg:hover .prdinfo {display:block;position:absolute; text-align:center; bottom:10px;  right:0px;  cursor:pointer; filter:alpha(opacity=100);opacity:1.0; }

/* like */
.ec-base-product .prdList .thumbnail .likeButton {position:absolute;display:block;*zoom:1;filter:alpha(opacity=0);opacity:0; top:0px; text-align:center; right:0px; width:100%; }
.ec-base-product .prdList .prdimg:hover .likeButton {display:block;position:absolute; text-align:center; top:10px;  right:0px;  cursor:pointer; filter:alpha(opacity=100);opacity:1.0; }

.ec-base-product .prdList .thumbnail .likeButton  button { background-color: rgba( 255, 255, 255, 0.5 ); border-radius: 20px;  padding:5px 10px; }
.ec-base-product .prdList .thumbnail .likeButton  button strong { color:#000; text-align:center; font-size:11px; padding-left:5px; font-weight:bold;}
.ec-base-product .prdList .thumbnail .button img {   display:none;}
.ec-base-product .prdList .thumbnail .likeButton  button:before {content: "LIKE"; font-size:11px; color:#444; letter-spacing:1px;  height:13px; line-height:13px;}


.ec-base-product .prdList .description .mileage { display:block; }
.ec-base-product .prdList .description span.grid { display:block; }
.ec-base-product .saleico  { position:absolute; text-align:left; margin-bottom:5px; }

.ec-base-product .prdList .description .button .likeButton { display:inline-block; margin:0 5px; }
.ec-base-product .prdList .description .button .likeButton button { font-family:verdana; color:#9a9a9a; letter-spacing:-1px; background:none; }
.ec-base-product .prdList .description .button .likeButton button img { margin-bottom:0; vertical-align:middle; }
.ec-base-product .prdList .description .button .likeButton button strong {height:16px; vertical-align:middle; }
.ec-base-product .prdList .description .button .likeButton.selected button { color:#353535; }

/* ì§„ì—´ë°©ì‹ */
.ec-base-product ul.grid3 > li { width:33.33%;  }
.ec-base-product ul.grid4 > li { width:25%; }
.ec-base-product ul.grid5 > li { width:20%; }

/* module="product_ListItem" */
/*center .ec-base-product .spec { padding:0 5%; width:90%; margin:0 auto; } */
.ec-base-product .spec { padding:0 5% 0 0; margin:0 auto; }
.ec-base-product .spec li {margin-bottom:2px;}
.ec-base-product .spec li .title { font-weight:normal; vertical-align:top; }
.ec-base-product .spec li .title span { vertical-align:top; }

/* í• ì¸ê¸°ê°„ ë ˆì´ì–´ */
.ec-base-product .discountPeriod { display:inline-block; z-index:10; position:relative; width:55px; height:19px; vertical-align:middle; }
.ec-base-product .layerDiscountPeriod { left:50%; top:26px; width:247px; margin:0 0 0 -124px; }
.ec-base-product .layerDiscountPeriod strong.title { display:block; margin:0 0 12px; padding:0 35px 0 0; font-weight:bold; color:#2e2e2e; }
.ec-base-product .layerDiscountPeriod .content p { margin:2px 0 0; font-size:11px; color:#000; line-height:16px; color:#757575; letter-spacing:-1px; }
.ec-base-product .layerDiscountPeriod .content p strong { font-weight:normal; font-size:12px; color:#2e2e2e; }
.ec-base-product .layerDiscountPeriod .content p strong span { font-size:11px; } 


/* ì¸ë„¤ì¼ ì•„ì´ì½˜ ìœ„ì¹˜ */
.ec-product-bgLT { background-position:left top; }
.ec-product-bgLC { background-position:left center; }
.ec-product-bgLB { background-position:left bottom; }
.ec-product-bgRT { background-position:right top; }
.ec-product-bgRC { background-position:right center; }
.ec-product-bgRB { background-position:right bottom; }
.ec-product-bgCT { background-position:center top; }
.ec-product-bgCC { background-position:center center; }
.ec-product-bgCB { background-position:center bottom; }


.xans-layout-productrecent { display:block; text-align:center; line-height:1%; font-size:1%;   width:110px; margin-top:0px;  border-right:0px; padding:20px 0; }
.xans-layout-productrecent h2 { line-height:1%; font-size:1%; }
.xans-layout-productrecent .btn {}
.xans-layout-productrecent .btn i { cursor:pointer; text-align:center; padding:5px; font-size:20px; }
.xans-layout-productrecent ul {width:110px; margin:0 auto; }
.xans-layout-productrecent li img { display:block; width:40px; padding:5px 0; margin:0 auto; }
.xans-layout-productrecent li span { display:block; padding:0 0 5px; font-size:12px; line-height:18px; }
.xans-layout-productrecent img { text-align:center;}
.ec-base-paginate { margin:30px 0; text-align:center; font-size:0; line-height:0; }
.ec-base-paginate ol { display:inline-block; font-size:0; line-height:0; vertical-align:top; *display:inline; *zoom:1; *margin:0; }
.ec-base-paginate li { display:inline-block; margin:0 0 0 -1px; border:1px solid #d7d5d5; font-size:12px; color:#757575; vertical-align:top; *display:inline; *zoom:1; }
.ec-base-paginate li:first-child { margin-left:0; }
.ec-base-paginate img { vertical-align:top; }
.ec-base-paginate li a { display:block; width:33px; padding:9px 0; font-weight:bold; color:#939393; line-height:14px; background:#fff; }
.ec-base-paginate li a:hover { text-decoration:none; background:#f0f2f2; }
.ec-base-paginate li a.this { padding-bottom:6px; border-bottom:3px solid #444; color:#495164; }
.ec-base-paginate a.nolink { cursor:default; }

/* typeSub */
.ec-base-paginate.typeSub ol { margin:0 15px; vertical-align:middle; }
.ec-base-paginate.typeSub li { font-size:12px; border:0; }
.ec-base-paginate.typeSub img { vertical-align:middle; }
.ec-base-paginate.typeSub li a { width:auto; margin:0 5px 0; padding:2px; color:#353535; background:none;  }
.ec-base-paginate.typeSub li a.this { color:#000;  border:0; }
.ec-base-paginate.typeSub .first { margin-right:3px; }
.ec-base-paginate.typeSub .last { margin-left:3px; }




/* typeSub */
.ec-base-paginate.typeSub1 ol { margin:0 15px; vertical-align:middle; }
.ec-base-paginate.typeSub1 li { font-size:12px; border:0; }
.ec-base-paginate.typeSub1 img { vertical-align:middle; }
.ec-base-paginate.typeSub1 li a { width:auto; margin:0 5px 0; padding:5px; color:#353535; background:none; }
.ec-base-paginate.typeSub1 li a.this { color:#000;  border:0; }
.ec-base-paginate.typeSub1 .first { margin-right:3px; }
.ec-base-paginate.typeSub1 .last { margin-left:3px; }

.ec-base-paginate.typeSub1 .btnPrev:after { content: "\e93c";   }
.ec-base-paginate.typeSub1 .btnNext:after { content: "\e93f";  }

.ec-base-paginate.typeSub1 .btnPrev:after,
.ec-base-paginate.typeSub1 .btnNext:after { padding:8px; font-family : xeicon; font-size: 18px!important;  position:relative; top:7px; }

.ec-base-paginate.typeSub1 .btnPrev img,
.ec-base-paginate.typeSub1 .btnNext img { display:none; }
/*ìƒì„¸íŽ˜ì´ì§€ìš© tab*/
.ec-base-tab-momoi { position:relative; margin-top:0px; padding:60px 0 0; }
.ec-base-tab-momoi .menu {margin:0 auto 20px; text-align:center;  border-top:1px solid #ddd; padding-top:50px; }
.ec-base-tab-momoi .menu:after { content:""; display:block; clear:both; }
.ec-base-tab-momoi .menu li { display:inline-block;    position:relative; height:10px;}
.ec-base-tab-momoi .menu li:after { display:inline-block; position:absolute; top:16px; left:0; content:""; width:1px; height:10px; border-left:1px solid #ddd; }
.ec-base-tab-momoi .menu li:first-child:after {display:none;}

.ec-base-tab-momoi .menu li a { display:block; padding:12px 20px;color:#999; text-decoration:none; outline:0; text-align:center; font-size:13px;}
.ec-base-tab-momoi .menu li.selected a { position:relative; color:#000; font-weight:500;}

.qnacount, .reviewcount {padding:2px 5px; margin:0 0 0 5px;  border-radius:2px;  color:#fff; font-size:9px;}

.ec-base-tab { position:relative; }
.ec-base-tab .menu { margin:0 0 20px; border-bottom:1px solid #ddd;  border-left:0; background:#fff;  }
.ec-base-tab .menu:after { content:""; display:block; clear:both; }
.ec-base-tab .menu li { float: left; margin-left: -1px; }
.ec-base-tab .menu li a { display:inline-block;; min-width:187px; margin:0 0 0px; background:#f9f9f9; border:1px solid #f1f1f1; border-bottom:0; padding:12px 5px 11px; color:#555; text-decoration:none; outline:0; text-align:center;  }
.ec-base-tab .menu li:first-child a { margin-left:0; }
.ec-base-tab .menu li.selected a { position:relative; top:0px; left:0px; margin:0 0 -1px; border:1px solid #444; border-bottom:1px solid #fff;  color:#444; font-weight:bold; background:#fff; }
.ec-base-tab .menu li.selected:first-child a { left:-1px; }
.ec-base-tab > .right { position:absolute; top:8px; right:10px; line-height:24px; color:#909090; }
  /* typeLight */
  .ec-base-tab.typeLight .menu li.selected a { margin:0 0 -2px; border-bottom:1px solid #fff; color:#404040; background:#fff; }
  /* grid (2~7) */
  .ec-base-tab[class*="grid"] .menu { display:table; table-layout:fixed; width:100%; border-top:1px solid #ddd; border-bottom:1px solid #ddd; }
  .ec-base-tab[class*="grid"] .menu li { float:none; display:table-cell; vertical-align:middle; }
  .ec-base-tab[class*="grid"] .menu li a { display:inline-block; width:100%; min-width:0; margin:0; padding:11px 0;  border:0;}
  .ec-base-tab[class*="grid"] .menu li.selected { position:relative; top:0; right:0px; color:#000;  }
  .ec-base-tab[class*="grid"] .menu li:first-child.selected { right:0; }
  .ec-base-tab[class*="grid"] .menu li.selected a { position:static; background:none; color:#000;  border-bottom:1px solid #000; }
    .ec-base-tab.grid2 .menu li { width:50.5%; }
    .ec-base-tab.grid3 .menu li { width:34%; }
    .ec-base-tab.grid4 .menu li { width:25.5%; }
    .ec-base-tab.grid5 .menu li { width:20.5%; }
    .ec-base-tab.grid6 .menu li { width:17%; }
    .ec-base-tab.grid7 .menu li { width:14.8%; width:15% \0/; }
    .ec-base-tab.grid7 .menu li:first-child { width:13% \0/; }
  /* gFlex */
  .ec-base-tab.gFlex .menu { display:flex; border-right:0; }
  .ec-base-tab.gFlex .menu:after { display:none; }
  .ec-base-tab.gFlex .menu li { display:flex; align-items: center; float:none; flex:1; position:relative; }  
  .ec-base-tab.gFlex .menu li:last-child { border-right:1px solid #cbcdce; }  
  .ec-base-tab.gFlex .menu li a { width:100%; min-width:0; border-right:0; background:none; word-break:break-all; }
  .ec-base-tab.gFlex .menu li a:after { content:''; width:100%; height:100%; position:absolute; top:0; left:0; }
  .ec-base-tab.gFlex .menu li.selected { border:1px solid #292929; border-bottom:0; background:#4a5164; }
  .ec-base-tab.gFlex .menu li.selected a { left:0; margin:0 0 -1px -1px; background:#4a5164; border:0; position: initial;}
/* button */
  [class^='btnNormal'], a[class^='btnNormal'] { display:inline-block; box-sizing:border-box; padding:3px 8px; border: 1px solid #e7e7e7; border-bottom-color: #d7d7d7; border-radius:2px;font-size:12px; line-height:18px; font-weight:normal; text-decoration:none; vertical-align:middle; word-spacing:-0.5px; letter-spacing:0; text-align:center; white-space:nowrap; color:#222; background-color:#fff; }
   [class^='btnNormal'], button[class^='btnNormal'] { display:inline-block; box-sizing:border-box; padding:3px 8px; border: 1px solid #e7e7e7; border-bottom-color: #d7d7d7; border-radius:2px;font-size:12px; line-height:18px; font-weight:normal; text-decoration:none; vertical-align:middle; word-spacing:-0.5px; letter-spacing:0; text-align:center; white-space:nowrap; color:#222; background-color:#fff; }
  [class^='btnSubmit'], a[class^='btnSubmit'] { display:inline-block; box-sizing:border-box; padding:3px 8px; border:1px solid transparent; border-radius:2px;  font-size:12px; line-height:18px; font-weight:normal; text-decoration:none; vertical-align:middle; word-spacing:-0.5px; letter-spacing:0; text-align:center; white-space:nowrap; color:#fff; background-color:#c7b9ab; }

  [class^='btnEm'], a[class^='btnEm'] { display:inline-block; box-sizing:border-box; padding:3px 8px; border:1px solid transparent; border-radius:2px; font-size:12px; line-height:18px; font-weight:normal; text-decoration:none; vertical-align:middle; word-spacing:-0.5px; letter-spacing:0; text-align:center; white-space:nowrap;  color:#fff; background-color:#888; }
  [class^='btnBasic'], a[class^='btnBasic'] { display:inline-block; box-sizing:border-box; padding:3px 8px; border:1px solid #d1d1d1; border-radius:2px;  font-size:12px; line-height:18px; font-weight:normal; text-decoration:none; vertical-align:middle; word-spacing:-0.5px; letter-spacing:0; text-align:center; white-space:nowrap; color:#222; background-color:#f0f0f0; }
    [class^='btnNormal']:not(.disabled):hover { background-color:#f3f3f3; }
    [class^='btnSubmit']:not(.disabled):hover { background-color:#444; }
    [class^='btnEm']:not(.disabled):hover { background-color:#77797d; }
    [class^='btnBasic']:not(.disabled):hover { background-color:#e5e5e5; }
    [class^='btnNormal'].disabled { border-color:#e3e3e3; color:#999; }
    [class^='btnSubmit'].disabled { background-color:#9297a2; color:#f0f0f0; }
    [class^='btnEm'].disabled { background-color:#b5b6b9; color:#f0f0f0; }
    [class^='btnBasic'].disabled { color:#999; }
  /* size */
    [class^='btn'].sizeS { padding:6px 8px; }
    [class^='btn'].sizeM { padding:10px 16px; }
    [class^='btn'].sizeL { padding:14px 16px; min-width:80px; font-weight:bold; }
  /* width Fix */
    [class^='btn'][class*='Fix'] { width:72px; word-break:keep-all; word-wrap:break-word; }
    [class^='btn'][class*='Fix'].sizeS { width:96px; }
    [class^='btn'][class*='Fix'].sizeM { width:120px; padding-left:8px; padding-right:8px; }
    [class^='btn'][class*='Fix'].sizeL { width:160px; padding-left:8px; padding-right:8px; }
 
/* icon button */
  a.btnLink { color:#222; }
  a.btnLink:hover { text-decoration:none; -webkit-box-shadow:0 1px 0 0 #222; -moz-box-shadow:0 1px 0 0 #222; box-shadow:0 1px 0 0 #222; }
  a.btnLink:after { content:""; display:inline-block; margin:-2px -2px 0 3px; vertical-align:middle; border:0 0 0 10px; border-style:solid;  border-color:transparent transparent transparent #77797d; }
  [class^='btn'] i { display:none \0/IE8; }
  [class^='btn'] .icoArrow { display:inline-block; width:3px; height:3px; margin:-2px 1px 0 1px; border:2px solid #77797d; border-width:0 2px 2px 0; vertical-align:middle;
    transform:rotate(-45deg); -webkit-transform: rotate(-45deg); -moz-transform:rotate(-45deg); -ms-transform:rotate(-45deg); -o-transform:rotate(-45deg);
  }
    [class^='btnSubmit'] .icoArrow,
    [class^='btnEm'] .icoArrow { border-color:#f0f0f0; }
  [class^='btn'] .icoDelete { position:relative; overflow:hidden; display:inline-block; width:10px; height:10px; margin:-2px 2px 0 0; vertical-align:middle; -webkit-transform:rotate(45deg); transform:rotate(45deg); }
  [class^='btn'] .icoDelete:before { content:""; position:absolute; top:0; right:4px; width:2px; height:10px; background:#77797d; }
  [class^='btn'] .icoDelete:after { content:""; position:absolute; top:4px; right:0; width:10px; height:2px; background:#77797d; }
    [class^='btnSubmit'] .icoDelete:before, [class^='btnSubmit'] .icoDelete:after,
    [class^='btnEm'] .icoDelete:before, [class^='btnEm'] .icoDelete:after { background:#f0f0f0; }
  [class^='btn'] .icoAdd, [class^='btn'] .icoRemove { position:relative; overflow:hidden; display:inline-block; width:8px; height:8px; margin:-2px 2px 0 0; vertical-align:middle; }
  [class^='btn'] .icoAdd:before, [class^='btn'] .icoAdd:after, [class^='btn'] .icoRemove:before { content:""; position:absolute; top:50%; left:50%; width:8px; height:8px; border-radius:2px; background:#77797d; }
  [class^='btn'] .icoAdd:before, [class^='btn'] .icoRemove:before { height:2px; margin:-1px 0 0 -4px; }
  [class^='btn'] .icoAdd:after { width:2px; margin:-4px 0 0 -1px; }
  [class^='btn'] img { margin:-2px 1px 0; vertical-align:middle; }
 
  /* unique */
    .btnLogin, a.btnLogin { display:inline-block; box-sizing:border-box; width:100px; height:70px; line-height:70px; border-radius:2px; text-align:center; font-family:"êµ´ë¦¼",Gulim; font-size:12px; font-weight:bold; text-decoration:none; color:#fff; background-color:#4a5164; }
    .btnLogin:hover { background-color:#43495a; }
    .btnAgree, a.btnAgree { display:inline-block; box-sizing:border-box; width:80px; height:70px; line-height:70px; border:1px solid #d1d1d1; border-radius:2px; text-align:center; font-family:"êµ´ë¦¼",Gulim; font-size:12px; font-weight:bold; color:#222; text-decoration:none; background-color:#fff; }
    .btnAgree:hover { background-color:#f3f3f3; }
    .btnToggle { display:inline-block; font-size:0; line-height:0; }
    .btnToggle button { display:inline-block; box-sizing:border-box; border:1px solid #d1d1d1; margin:0 -1px 0 0; padding:0 7px; height:24px; line-height:24px; text-align:center; font-family:"êµ´ë¦¼",Gulim; font-size:12px; outline:0; text-decoration:none; color:#222; background:#fff; }
    .btnToggle button:first-child { border-radius:2px 0 0 2px; }
    .btnToggle button:last-child { border-radius:0 2px 2px 0; }
    .btnToggle button.selected { position:relative; border:1px solid #84868b; color:#fff; background:#84868b; }
 
/* ec-base-button */
.ec-base-button { padding:10px 0; text-align:center; }
.ec-base-button.justify { position:relative; }
.ec-base-button:after { display:block; content:""; clear:both; }
.ec-base-button .gLeft { float:left; text-align:left; }
.ec-base-button .gRight { float:right; text-align:right; }
.ec-base-button.justify .gLeft { position:absolute; left:0; }
.ec-base-button.justify .gRight { position:absolute; right:0; }
.ec-base-button .text { margin:0 6px 0 10px; color:#353535; line-height:24px; }
  /* type */
    .ec-base-button.typeBorder { margin-top:-1px; padding:20px 0px; border:0px solid #d7d5d5; }
    .ec-base-button.typeBG { padding:15px 0; border:0px solid #d7d5d5; }
  /* gColumn */
    .ec-base-button[class*="gColumn"] { margin:0 auto; display:-webkit-flex; display:-moz-flex; display:-ms-flex; display:flex; -webkit-justify-content:center; -moz-justify-content:center; -ms-justify-content:center; justify-content:center; }
    .ec-base-button[class*="gColumn"]:after { display:none; }
    .ec-base-button[class*="gColumn"] [class^='btn'] { margin:0 2px; padding-left:8px; padding-right:8px; word-break:keep-all; word-wrap:break-word; white-space:normal; -webkit-flex:1; -moz-flex:1; -ms-flex:1; flex:1; display:-webkit-flex; display:-moz-flex; display:-ms-flex; display:flex; -webkit-align-items:center; -moz-align-items:center; -ms-align-items:center; align-items:center; -webkit-justify-content:center; -moz-justify-content:center; -ms-justify-content:center; justify-content:center; }
    .ec-base-button[class*="gColumn"] [class^='btn'][class*='Fix'] { -webkit-flex:none; -moz-flex:none; -ms-flex:none; flex:none; }
    /* gFlex */
      .ec-base-button[class*="gColumn"] .gFlex2 { -webkit-flex:2; -moz-flex:2; -ms-flex:2; flex:2; }
      .ec-base-button[class*="gColumn"] .gFlex3 { -webkit-flex:3; -moz-flex:3; -ms-flex:3; flex:3; }
      .ec-base-button[class*="gColumn"] .gFlex4 { -webkit-flex:4; -moz-flex:4; -ms-flex:4; flex:4; }
/* base */
.ec-base-box { padding:20px; margin-left:auto; margin-right:auto; border:2px solid #f1f1f1; color:#404040; }
.ec-base-box.gHalf { position:relative; padding:20px 0; }
.ec-base-box.gHalf:before { position:absolute; top:0; left:50%; display:block; content:""; width:1px; height:100%; background-color:#e6e6e6; }
.ec-base-box.typeBg { background-color:#fbfafa; }
.ec-base-box.typeThin { border-width:0px; border-color:#d7d5d5; }
.ec-base-box.typeThin h3.boxTitle { margin:0 0 20px; font-size:13px; text-align:center; }
.ec-base-box.typeThinBg { border-width:1px; border-color:#d7d5d5; background-color:#fbfafa; }
.ec-base-box.center { text-align:center; }
    /* ì•½ê´€ */
    .ec-base-box.typeThinBg > .agree { padding:20px; border:1px solid #e6e6e6; background:#fff; }
    .ec-base-box.typeThinBg > .agree p { padding:0 0 17px; }

/* typeMember */
.ec-base-box.typeMember { padding:0; }
.ec-base-box.typeMember .information { display:table; table-layout:fixed; padding:15px 0; width:100%; box-sizing:border-box; }
.ec-base-box.typeMember .information > .title, .ec-base-box.typeMember .information > .thumbnail { display:table-cell; padding:0 15px; width:100px; text-align:center; vertical-align:middle; }
.ec-base-box.typeMember .information > .title { vertical-align:middle; }
.ec-base-box.typeMember .information > .thumbnail img { max-width:70px; }
.ec-base-box.typeMember .information .description { display:table-cell; padding:0 10px; width:auto; line-height:1.5em; border-left:1px solid #e8e8e8; vertical-align:middle; }
    .ec-base-box.typeMember.gMessage { border-width:1px; border-color:#d7d5d5; }
.ec-base-box .message { display:block; padding:10px 0 10px 35px; border-bottom:1px solid #e8e7e7; background:#fbfbfb url("//img.echosting.cafe24.com/skin/base/common/ico_info.gif") no-repeat 10px center; }

/* typeProduct */
.ec-base-box.typeProduct { display:table; table-layout:fixed; padding:15px 0; width:100%; box-sizing:border-box; }
.ec-base-box.typeProduct .thumbnail, .ec-base-box.typeProduct .information { display:table-cell; padding:0 20px; vertical-align:middle; }
.ec-base-box.typeProduct .thumbnail { width:100px; }
.ec-base-box.typeProduct .thumbnail img { max-width:90px; border:1px solid #d7d5d5; }
.ec-base-box.typeProduct .information { padding-left:0; }

.ec-base-box.typeProduct .information img { padding:0 3px 0 0;}
.xans-board-product .information .icon_img  {    margin: 0px 0px 0 2px;}
.ec-base-table table { position:relative; margin:10px 0 0; border-bottom:1px solid #eee; border-top:0; color:#fff; line-height:1.5; }
  .ec-base-table.gLayoutFixed table { table-layout:fixed; }
  .ec-base-table.gLayoutFixed .gLayoutAuto table { table-layout:auto; }


.ec-base-table thead th { padding:15px 0 15px;  border-bottom:1px solid #eee; color:#353535; vertical-align:middle; font-weight:normal; background:#fff; }
.ec-base-table tbody th { padding:15px 0 15px 18px; border-top:1px solid #eee; border-bottom-width:0; color:#353535; text-align:left; font-weight:normal; background-color:#fff; }
.ec-base-table th { word-break:break-all; word-wrap:break-word; }
.ec-base-table th:first-child { border-left:0; }
.ec-base-table td { padding:15px 10px 15px; border-top:1px solid #eee; color:#353535; vertical-align:middle; word-break:break-all; word-wrap:break-word; }
.ec-base-table td.clear { padding:0 !important; border:0 !important; }

/* horizontal */
  /* typeWrite */
    .ec-base-table.typeWrite td { padding:8px 10px 7px; }
    .ec-base-table.typeWrite img { max-width:100% !important; height:auto !important; }

/* vertical */
  /* typeList */
    .ec-base-table.typeList table { border-top:1px solid #f1f1f1; }
    .ec-base-table.typeList table:before { display:none; }
    .ec-base-table.typeList td { padding:15px 10px 15px; }
    .ec-base-table.typeList tfoot td { padding:15px 10px 17px; background:#fbfafa; }
    .ec-base-table .message { border:1px solid #eee; padding:50px 0; text-align:center; color:#757575; }
    .ec-base-table table + .message { margin:-1px 0 0; }
    .ec-base-table table td.message { padding:50px 0; }
    .ec-base-table .scroll .message { border:0; }
  /* scroll */
    .ec-base-table.typeList .head td { padding:11px 0 10px; border-left:1px solid #dfdfdf; border-bottom:1px solid #dfdfdf; color:#353535; vertical-align:middle; text-align:center; background:#fbfafa; }
    .ec-base-table.typeList .head td:first-child { border-left:0; }
    .ec-base-table.typeList .scroll { position:relative; overflow-x:hidden; overflow-y:scroll; max-height:185px; min-height:100px; border:1px solid #d7d5d5; border-top-width:0; margin-top:-1px; }
    .ec-base-table.typeList .scroll table { border:0; margin:0; }
    .ec-base-table.typeList .scroll table:before { display:none; }
    .ec-base-table.typeList .scroll .message { border: 0; }
  /* thead - blind */
    .ec-base-table thead.blind,
    .ec-base-table thead.blind th { display:none; }
    .ec-base-table thead.blind + tbody tr:first-child th,
    .ec-base-table thead.blind + tbody tr:first-child td { border-top-width:0; }
  /* Line */
    .ec-base-table.typeList.gLine table { border-width:0; border-bottom-width:1px; }

/* common */
  /* border, background style none */
    .ec-base-table.typeClear table:before { display:none; }
    .ec-base-table.typeClear table,
    .ec-base-table.typeClear th,
    .ec-base-table.typeClear td { border:0 none; background:none; }
    .ec-base-table.typeClear th { font-weight:bold; }
  /* border */
    .ec-base-table.gBorder td { border-left:0px solid #dfdfdf; }
    .ec-base-table.gBorder td:first-child { border-left:0; }
    .ec-base-table.gBorder td.gClearLine { border-left:0; }
    .ec-base-table.typeList.gBorder tbody td { border-color:#eee; }
  /* align */
    .ec-base-table .left { text-align:left; }
    .ec-base-table .center { text-align:center; }
    .ec-base-table .right { text-align:right; }
    .ec-base-table.typeList .center td,
    .ec-base-table.typeList td.center { padding-left:0; padding-right:0; }
    .ec-base-table.typeList .center td.left { padding-left:10px; }
    .ec-base-table.typeList .center td.right { padding-right:10px; }
    .ec-base-table .top th, .ec-base-table th.top,
    .ec-base-table .top td, .ec-base-table td.top { vertical-align:top; }
    .ec-base-table .middle th, .ec-base-table th.middle,
    .ec-base-table .middle td, .ec-base-table td.middle { vertical-align:middle; }
  /* form */
    .ec-base-table img { vertical-align:middle; }

@media print {
  .ec-base-table table:before { display:none; }
}
.ec-base-desc { overflow:hidden; text-align:left; }
.ec-base-desc:after { content:""; display:block; clear:both; }
.ec-base-desc dt, .ec-base-desc .term { float:left; width:100px; margin:0 0 2px; padding:0 4px 0 0; line-height:22px;-webkit-box-sizing:border-box; -moz-webkit-box:border-box; box-sizing:border-box; font-weight:normal; }
.ec-base-desc dd, .ec-base-desc .desc { display:block; margin:0 0 2px; padding:0 5px 0 100px; min-height:22px; line-height:22px; word-wrap:break-word; word-break:break-all; }
.ec-base-desc dd:after, .ec-base-desc .desc:after { content:""; display:block; clear:left; }

/* size */
.ec-base-desc.gSmall dt, .ec-base-desc.gSmall .term { width:30%; }
.ec-base-desc.gSmall dd, .ec-base-desc.gSmall .desc { padding-left:30%; }
.ec-base-desc.gMedium dt, .ec-base-desc.gMedium .term { width:40%; }
.ec-base-desc.gMedium dd, .ec-base-desc.gMedium .desc { padding-left:40%; }
.ec-base-desc.gLarge dt, .ec-base-desc.gLarge .term { width:50%; }
.ec-base-desc.gLarge dd, .ec-base-desc.gLarge .desc { padding:0 0 0 50%; }

/* align */
.ec-base-desc.centerDT dt, .ec-base-desc.centerDD dd, .ec-base-desc.centerDT .term, .ec-base-desc.centerDD .desc,
.ec-base-desc.center, .ec-base-desc .center { text-align:center; }
.ec-base-desc.rightDT dt, .ec-base-desc.rightDD dd, .ec-base-desc.rightDT .term, .ec-base-desc.rightDD .desc,
.ec-base-desc.right, .ec-base-desc .right { text-align:right; }
.ec-base-desc.rightDD dd, .ec-base-desc.rightDD .desc { padding-right:0; }

/* typeBullet */
.ec-base-desc.typeBullet dt,
.ec-base-desc.typeBullet .term { padding:0 4px 0 10px; background:url("//img.echosting.cafe24.com/skin/base/common/ico_arrow.png") no-repeat 0 7px; }

/* typeDot */
.ec-base-desc.typeDot dt,
.ec-base-desc.typeDot .term { position:relative; padding:0 4px 0 10px; }
.ec-base-desc.typeDot dt:before,
.ec-base-desc.typeDot .term:before { position:absolute; top:50%; left:0; content:""; display:block; width:2px; height:2px; margin:-2px 0 0 0; background:#383838; }

.xans-layout-multishopshipping { display:none; }
.xans-layout-multishopshipping .worldshipLayer { top:303px; left:50%; width:448px; margin:0 0 0 -225px; }
.xans-layout-multishopshipping .worldshipLayer .content { padding:153px 20px 30px;  line-height:1.8; background:url("//img.echosting.cafe24.com/skin/base/link/bg_worldship.gif") center 21px no-repeat; }
.xans-layout-multishopshipping .worldshipLayer .content .desc { display:block; margin:4px 0 14px; }
.xans-layout-multishopshipping .worldshipLayer .select { margin:10px 0 0; }
.xans-layout-multishopshipping .worldshipLayer .select select { width:100%; }

.up {
  display: inline-block;
  width: 10px;
  height: 10px;
  border-top: 2px solid #000;
  border-right: 2px solid #000;
  transform: rotate(-45deg);
  margin-right: 5px;
  cursor: pointer;
}

.down {
  display: inline-block;
  width: 10px;
  height: 10px;
  border-bottom: 2px solid #000;
  border-left: 2px solid #000;
  transform: rotate(-45deg);
  cursor: pointer;
}


  
  .xans-order-totalsummary th,
  .xans-order-totalsummary td {
    padding: 8px;
    text-align: center;
  }
  
  .xans-order-totalsummary thead th {
    background-color: #f2f2f2;
    font-weight: bold;
  }
  

  
  .xans-order-totalsummary .txt16 {
    font-size: 16px;
  }
  
  .xans-order-totalsummary .txt23 {
    font-size: 23px;
  }
  
  .xans-order-totalsummary .txtEm {
    font-weight: bold;
  }
  
  .xans-order-totalsummary .displaynone {
    display: none;
  }
  
  .xans-order-totalsummary .center {
    text-align: center;
  }

    /* CSS code to style the X button */
.closeBtn {
  position: absolute;
  top: 10px;
  right: 10px;
  font-size: 18px;
  font-weight: bold;
  color: #000;
  text-decoration: none;
}

.closeBtn:hover {
  color: #f00; /* Change the color on hover if needed */
}

</style>