<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Tools Shop</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>style/index/style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script language="JavaScript" src="<%=basePath%>plugins/jValidate/jquery-1.3.2.min.js" charset="utf-8"></script>
<script language="JavaScript"  src="<%=basePath%>plugins/jValidate/jvalidate-1.0.0.js" charset="utf-8"></script>
<script language="JavaScript" src="<%=basePath%>plugins/jValidate/jmessagebox-1.0.0.js"	charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>plugins/jValidate/messagebox/blue/messagebox.css" />
<script type="text/javascript">
function bookmarksite(a,b){
	if(document.all){
		window.external.AddFavorite(b,a)
	}else{
		if(window.sidebar){
			window.sidebar.addPanel(a,b,"")
		}
	}
}
</script>
</head>
<body>

<div id="main_container">
	
	<div id="header">
        <div id="logo">
            <a href="index.html"><img src="images/logo.png" alt="" title="" border="0" width="182" height="85" /></a>
	    </div>
    </div>
    
   <div id="main_content"> 
   
            <div id="menu_tab">
                    <ul class="menu">
                         <li><a href="index.html" class="nav homeIcon"> 首页</a></li>
                         <li class="divider"></li>
                         <li><a href="#" class="nav feileiIcon">商品分类</a></li>
                         <li class="divider"></li>
                         <li><a href="#" class="nav carIcon">我的购物车</a></li>
                         <li class="divider"></li>                         
                         <li><a href="javascript:bookmarksite('我的毕业作品 购物车', 'http://www.baidu.com');" class="nav shouchangIcon">收藏本站 </a></li>
                         <li class="divider"></li>
                         <li><a href="contact.html" class="nav loginIcon">注册</a></li>
                         <li class="divider"></li>  
						 <li>
                             <div class="top_bar">
                                <div class="top_search">
                                    <div class="search_text">搜索商品</div>
                                    <input type="text" class="search_input" name="search" />
                                    <input type="image" src="images/search.gif" class="search_bt"/>
                                </div>
                             </div>
                         </li>
                    </ul>

            </div><!-- end of menu tab -->
            
    <div class="crumb_navigation">
    Navigation: <span class="current">Home</span>
    
    </div>        
    
   <div class="left_content">
    <div class="title_box">商品分类</div>
    
        <ul class="left_menu">
        <li class="even"><a href="details.html">深信服科技</a></li>
         <li class="odd"><a href="details.html">Hand Tools</a><a href="details.html">Hand </a><a href="details.html">Hand Tools</a></li>
        <li class="even"><a href="details.html">Accessories</a></li>
         <li class="odd"><a href="details.html">Workwear</a></li>
         <li class="even"><a href="details.html">Spare Parts</a></li>
        <li class="odd"><a href="details.html">Power Tools</a></li>
        <li class="even"><a href="details.html">Air Tools</a></li>
         <li class="odd"><a href="details.html">Hand Tools</a></li>
        <li class="even"><a href="details.html">Accessories</a></li>
         <li class="odd"><a href="details.html">Workwear</a></li>
         <li class="even"><a href="details.html">Spare Parts</a></li>
        </ul> 
        

	 <div class="title_box">销量排名</div>
    
        <ul class="left_menu">
        <li class="odd"><a href="services.html">Bosch</a></li>
        <li class="even"><a href="services.html">Samsung</a></li>
         <li class="odd"><a href="services.html">Makita</a></li>
        <li class="even"><a href="services.html">LG</a></li>
         <li class="odd"><a href="services.html">Fujitsu Siemens</a></li>
         <li class="even"><a href="services.html">Motorola</a></li>
        <li class="odd"><a href="services.html">Phillips</a></li>
        <li class="even"><a href="services.html">Beko</a></li>
        </ul>      
     
    
     
  
   </div><!-- end of left content --> 



   <div class="center_content">
   	<div class="center_title_bar">用户注册</div>
    
    	<div class="prod_box_big">
      
            <div class="center_prod_box_big">            
                 
              	<div class="contact_form" id="loginForm" style="display:none">
                     <form action="" id="dataForm">     
                    <div class="form_row">
                    <label class="contact"><strong>登录名 :</strong></label>
                    <input type="text" class="contact_input" jvpattern="^.+$" jverrortip="登录名称不能为空." jvtipid="spt_name" />
					<span id="spt_name" class="normaltip" jverrorclass="errortip" jvcorrectclass="correcttips"></span>
                    </div>  

                    <div class="form_row">
                    <label class="contact"><strong>登录密码:</strong></label>
                    <input type="password" class="contact_input"id="password" jvpattern="^.{6,}$" jverrortip="请输入不少于6位的密码." jvtipid="spt_password"/>
                    <span id="spt_password" class="normaltip" jverrorclass="errortip" jvcorrectclass="correcttips"></span>
                    </div>


                    <div class="form_row">
                    <label class="contact"><strong>密码验证:</strong></label>
                    <input type="password" class="contact_input" id="password1" jvcompareid="password" jverrortip="两次输入的密码不相同." jvtipid="spt_password1"/>
                    <span id="spt_password1" class="normaltip" jverrorclass="errortip" jvcorrectclass="correcttips"></span>
                    </div>
                    
                    <div class="form_row">
                    <label class="contact"><strong>用户头像:</strong></label>
                    <input type="file" class="contact_input" /><span style="float:left;margin:2px 0 0 15px;">(可选)</span>
                    </div>

                    <div class="form_row">
                    <a href="#" class="prod_details">马上注册</a>
                    </div>      
                    </form> 
                </div> 
                <div class="contact_form" id="userInfoForm" >
                     <form action="" id="infoForm">     
                    <div class="form_row">
                    <label class="contact"><strong>用户名:<b style="color:#f00;">&nbsp;*</b></strong></label>
                    <input type="text" class="contact_input" jvpattern="^.+$" jverrortip="用户名不能为空." jvtipid="spt_name" />
					<span id="spt_name" class="normaltip" jverrorclass="errortip" jvcorrectclass="correcttips"></span>
                    </div>  
                    <div class="form_row">
                    <label class="contact"><strong>年&nbsp;龄:<b style="color:#f00;">&nbsp;*</b></strong></label>
                    <input type="text" class="contact_input" jvpattern="^[0-9]*[1-9][0-9]*$" jverrortip="请填写你的 实际年龄." jvtipid="spt_age" />
					<span id="spt_age" class="normaltip" jverrorclass="errortip" jvcorrectclass="correcttips"></span>
                    </div> 
                     <div class="form_row">
                    <label class="contact"><strong>手&nbsp;机:<b style="color:#f00;">&nbsp;*</b></strong></label>
                    <input type="text" class="contact_input" jvpattern="^[0-9]{11}$" jverrortip="手机号码格式不正确." jvtipid="spt_phone" />
					<span id="spt_phone" class="normaltip" jverrorclass="errortip" jvcorrectclass="correcttips"></span>
                    </div>  
                    <div class="form_row">
                    <label class="contact"><strong>Q&nbsp;Q:&nbsp;&nbsp;&nbsp;</strong></label>
                    <input type="text" class="contact_input"  />
                    </div> 
                     <div class="form_row">
                    <label class="contact"><strong>省&nbsp;份:<b style="color:#f00;">&nbsp;*</b></strong></label>
                    <input type="text" class="contact_input" jvpattern="^.{2,}$" jverrortip="你所在省份不能为空." jvtipid="spt_province" />
					<span id="spt_province" class="normaltip" jverrorclass="errortip" jvcorrectclass="correcttips"></span>
                    </div>  
                     <div class="form_row">
                    <label class="contact"><strong>城&nbsp;市:<b style="color:#f00;">&nbsp;*</b></strong></label>
                    <input type="text" class="contact_input" jvpattern="^.{3,}$" jverrortip="请填写你的城市地址." jvtipid="spt_city" />
					<span id="spt_city" class="normaltip" jverrorclass="errortip" jvcorrectclass="correcttips"></span>
                    </div>  
                     <div class="form_row">
                    <label class="contact"><strong>邮政编码:<b style="color:#f00;">&nbsp;*</b></strong></label>
                    <input type="text" class="contact_input" jvpattern="^[0-9]{6}$" jverrortip="邮政编码格式不正确." jvtipid="spt_code" />
					<span id="spt_code" class="normaltip" jverrorclass="errortip" jvcorrectclass="correcttips"></span>
                    </div>  
                    <div class="form_row">
                    <label class="contact"><strong>个人简介:&nbsp;&nbsp;&nbsp;</strong></label>
                    <input type="text" class="contact_input" />
                    </div>  

                    <div class="form_row">
                    <a href="#" class="prod_details">提交信息</a>
                    </div>      
                    </form> 
                </div> 
                                     
            </div>
                                 
        </div>
    
   
   </div><!-- end of center content -->



 <div class="right_content">
  
     <div class="title_box">What’s new</div>  
     <div class="border_box">
         <div class="product_title"><a href="details.html">Motorola 156 MX-VL</a></div>
         <div class="product_img"><a href="details.html"><img src="images/p2.jpg" alt="" title="" border="0" /></a></div>
         <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
     </div>  
     
     
       <div class="title_box">查看最多</div>  
     <div class="border_box">
         <div class="product_title"><a href="details.html">Makita 156 MX-VL</a></div>
         <div class="product_img"><a href="details.html"><img src="images/p1.jpg" alt="" title="" border="0" /></a></div>
         <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
     </div>  
      <div class="banner_adds">
     
     <a href="#"><img src="images/bann1.jpg" alt="" title="" border="0" /></a>
     </div>        
   <!-- end of right content -->   


            
   </div><!-- end of main content -->
 
   <div class="area">
   <a href="#">
   	<img src="images/serviceicon_01.gif"  /></a>
    <a href="#">
    <img src="images/serviceicon_02.gif"  /></a>
    <a href="#">
    <img src="images/serviceicon_03.gif" /></a>
    <a href="#">
    <img src="images/serviceicon_04.gif" /></a>
    </div>
   <div class="footer">
   

        <div class="left_footer">
        <img src="images/footer_logo.png" alt="" title="" width="89" height="42"/>
        </div>
        
        <div class="center_footer">
        广东科贸职业学院10届毕业班 XXXX<br />
       
        </div>
        
        <div class="right_footer">
        <a href="index.html">home</a>
        <a href="details.html">about</a>
        <a href="details.html">sitemap</a>
        <a href="details.html">rss</a>
        <a href="contact.html">contact us</a>
        </div>   
   
   </div>                 


</div>
<!-- end of main_container -->
</script>
	<script language="JavaScript">
	$('#dataForm,#infoForm').jValidate({
		blurvalidate : true
	/*,
	isbubble : false,
	onerror : function(item,form){
		$.jMessageBox.show('错误', item.attr('jverrortip'));
	} **/
	});
</script>
</body>
</html>