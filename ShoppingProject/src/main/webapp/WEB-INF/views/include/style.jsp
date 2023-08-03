<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>

/*-----------------------------------------------------------------*/
/* ê³µí†µ 
/*-----------------------------------------------------------------*/
#test {height:1px; background:#fff;}
#header.fixed {  position:fixed;  top:0px; left:0; right:0; width:100%; height:55px; background:#fff; z-index:102;} 
#header.fixed .header-box {   position:relative;   margin:0 auto 0;  z-index:101;   }
#header.fixed .header-box .toplog {  top:0px;}
#header.fixed .header-box .top-right { top:0px;  }
#header.fixed .logo { margin:8px 0 5px;}
#header.fixed .logo img {max-height:25px;}
#header.fixed #wrap_notice_search {display:none;}



/*-----------------------------------------------------------------*/
/* ìƒë‹¨ë¼ì¸
/*-----------------------------------------------------------------*/


.header-box { position:relative;  max-width:90%; margin:0 auto; text-align:center;   padding:4px 0 0; z-index:105; }


/*-----------------------------------------------------------------*/
/* ë¡œê·¸ì¸
/*-----------------------------------------------------------------*/
.toplog { position:absolute; top:40px; left:0; margin:13px 0 0 0px;  padding:0px 0 0px;  z-index:50;  text-align:left;}
.toplog > ul {display:inline-block;}
.toplog li {display:inline-block; position:relative; }
.toplog li a { color:#444;  font-size:11px; ; padding:10px 15px 10px; }


#joinpoint2 {position:absolute; top:21px; left:0px; width:48px; padding:0px 1px; margin:0; text-align:center; border-radius:2px;  }
#joinpoint2 a { color:#fff;  font-size:10px;   text-align:center;  padding:0; letter-spacing:0.5px;}
#joinpoint2:after { bottom: 99%; left: 50%; border: solid transparent; content: ""; height: 0; width: 0; position: absolute; pointer-events: none; border-width: 4px; margin-left: -4px;}


/*-----------------------------------------------------------------*/
/* ë¡œê³ 
/*-----------------------------------------------------------------*/
.logo { margin:40px 0 50px; text-align:center; position:relative;  -khtml-transition: all 0.3s ease; -moz-transition: all 0.3s ease; -ms-transition: all 0.3s ease; -o-transition: all 0.3s ease; transition: all 0.3s ease;}
.logo a { color:#000; letter-spacing:4px; font:500 24px 'Josefin Sans',verdana,ë‹ì›€,êµ´ë¦¼;}


/*-----------------------------------------------------------------*/
/* ê²Œì‹œíŒ
/*-----------------------------------------------------------------*/
#community {  position:relative; }
#community h2  { font-size:12px; font-weight:400;  padding:0px 30px 10px;  cursor:pointer; text-transform:uppercase; letter-spacing:1px;  }
#community h2:hover { color:#ddd;}
#community h2 img {width:35px;}

#community .toppadding {margin-right:50px; margin-top:10px;}
#community .topicon {margin-left:50px;}
#community .topicon i {font-size:22px; padding:0 0 0 0;  }
#community li {position:relative;} 
.middle_category {display:none; position:absolute;}

/* etc */
#community li:hover > .middle_category {position:absolute; top:25px; left:5px; display:block; width:130px; padding:10px 0 10px 10px;  z-index:90; background:#f9f9f9;}
#community li:hover > .middle_category li { width:100%;  display:block!important; padding:0px 15px 0 10px ;  height:25px; line-height:25px;  align-items: center; display: flex;}
#community li:hover > .middle_category li a {  font-size:12px; padding:0 10px 5px 0;  font-weight:500; color:#444; }
#community li:hover > .middle_category li a:hover { color:#999;}



#header .toggle-topsearch {display:block; cursor:pointer;  color:#000;  font-size:11px;  text-transform:uppercase; padding:10px 0 10px 19px; }


.top-right { position:absolute; top:40px; right:10px; margin:5px 0 0 0px;  }
.top-icon { float:right;  position:relative; }
.top-icon  img { padding:9px 7px 10px; }
.top-icon .basketcount {  position:absolute; bottom:3px; right:-2px;  font-size:9px; background:#bbac9e; border-radius:50%; color:#fff; width:17px; height:17px; line-height:17px; text-align:center; }


#wrap_notice_search .popular {text-align:left; counter-reset: item; margin-top:5px; }
#wrap_notice_search .popular li a:before  {content: counter(item) ""; counter-increment: item; font-size:11px; color:#fff; font-weight:bold; background:#bbac9e; padding:0 4px 1px; margin-right:3px; border-radius:2px;  }
.notice_list a { text-decoration:none;  color:#666;  font-size:12px;}
.notice_list ul.marquee {display:block; position:relative;  padding:0;width:150px;  height:20px; line-height:20px; list-style:none; overflow:hidden;   }
.notice_list ul.marquee li {display:block; position:absolute; top:-999em; left:0; white-space:nowrap;  width:100%;  }



/*-----------------------------------------------------------------*/
/* fix ë©”ë‰´ 
/*-----------------------------------------------------------------*/
#comment2.fixed {  position:fixed; left:0; top:59px; width:100%;  background-color: rgba( 240, 240, 240, 0.8 ); z-index:101; } 
.inner1 { position:relative; width:100%;  min-width:1024px;  border-top:1px solid #eee;  border-bottom:1px solid #eee; height:60px;  margin:0 0 0 0;  z-index:101;   }
#comment2 {margin:0 auto; }


#comment2.fixed .xans-layout-category {  border-top:1px solid #f1f1f1; padding:10px 0;  }
#comment2.fixed .xans-layout-category .sub-category { top:35px; }

@keyframes slide-bottom
 {0%{-webkit-transform:translateY(-10px);transform:translateY(-10px)}
 100%{-webkit-transform:translateY(0px);transform:translateY(0px)}
}


.xans-layout-category { padding:20px 0 10px; float:left; width:100%; }
.xans-layout-category .position { width:100%;  margin:0 auto;  text-align:center;}
.xans-layout-category .position > ul { font-size:0; line-height:0; }
.xans-layout-category .position > ul > li { position:relative; display:inline-block; height:25px; line-height:25px;   letter-spacing:1.5px; } /* 여기 letter-spacing:1.5px;*/
.xans-layout-category .position > ul > li > a { padding:0px 35px 20px; font-weight:500; font-size:12px; color:#444;}


.xans-layout-category .sub-category { position:absolute; left:50%; top:40px; z-index:90; white-space: nowrap; height:auto; background:#f9f9f9; text-align:left; 
	-o-transform:translate(-50%,0); -ms-transform:translate(-50%,0); -moz-transform:translate(-50%,0); -webkit-transform:translate(-50%,0); transform:translate(-50%,0); }
.xans-layout-category .sub-category ul { display:block; padding:10px;  }
.xans-layout-category .sub-category > ul > li { width:100%; padding:0 10px; text-indent:5px;  line-height:24px;  }
.xans-layout-category .sub-category > ul > li a { font-size:12px; color:#000;}


.xans-layout-category .depth-category { position:absolute; left:90%; margin-top:-41px; z-index:90; white-space: nowrap; height:auto;  background:#f1f1f1; text-align:left; }
.xans-layout-category .depth-category > ul { display:block; padding:10px;}
.xans-layout-category .depth-category > ul > li {
  width: 100%;
  margin: 0px;
  line-height: 24px;
  padding: 0px 0;
  text-indent: 5px;
}

.xans-layout-category .depth-category > ul > li a {
  font-size: 12px;
  color: #000;
}

/* Styles for the modal container */
.modal {
  display: none; /* Hide the modal by default */
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent black background */
  z-index: 9999;
}

/* Styles for the modal content */
.modal .content {
  background-color: #fff;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  max-width: 500px;
}

/* Styles for the modal header */
.modal .header {
  background-color: #f1f1f1;
  padding: 10px;
  border-top-left-radius: 5px;
  border-top-right-radius: 5px;
}

/* Styles for the modal header text */
.modal .header h5 {
  margin: 0;
}

/* Styles for the close button */
.modal .btnClose {
  position: absolute;
  top: 10px;
  right: 10px;
  cursor: pointer;
  color: #888;
}

/* Styles for the product information */
.modal .prdInfo {
  list-style: none;
  padding: 0;
  margin-bottom: 15px;
}

/* Styles for the product options */
.modal .prdModify {
  margin-bottom: 15px;
}

/* Styles for the option description */
.modal .optionDesc {
  font-weight: bold;
}

/* Styles for the select box */
.modal select {
  width: 100%;
  padding: 5px;
  margin-top: 5px;
}


</style>