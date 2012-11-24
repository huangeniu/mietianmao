<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Tools Shop</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>style/index/style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
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
$(function(){
	var userName = "${session.USER_NAME}";
	if(userName!=""){
		$("#myCarPane").show();
	}else{
		$("#loginPane").show();
	}
	$("#toregister").click(function(){
		window.location.href="<%=basePath%>jsp/index/register.jsp";
	});
	$("#loginBtn").bind("click",function(){
		var url = "<%=basePath%>user/userLogin.action";
		var $uname = $("#loginName").val();
		var $password = $("#loginPassword").val();
		if($uname.length<1){
			alert("请输入用户名称！");
			return false;
		}
		if($password.length<1){
			alert("请输入密码！");
			return false;		
		}
		$.post(url,{"user.uname":$uname,"user.password":$password},function(msg){
			if(msg!="error"){
				window.location.reload();
			}else{
				alert("用户名或密码错误！请重新登录！");
				$("#loginName").val("");
				$("#loginPassword").val("");
			}
		});
	});
	$("#loginOutBtn").bind("click",function(){
		if(confirm("你确定要退出登录吗？")){
			window.location.href="<%=basePath%>user/userLoginOut.action";
		}
	});
});
</script>
</head>
<body>
<div id="main_container">

	<div id="header">
        <div id="logo">
            <a href="index.html"><img src="<%=basePath%>images/logo.png" alt="" title="" border="0" width="182" height="85" /></a>
	    </div>
    </div>
    
   <div id="main_content"> 
   
            <div id="menu_tab">
                    <ul class="menu">
                         <li><a href="<%=basePath%>jsp/index/index.jsp" class="nav homeIcon"> 首页</a></li>
                         <li class="divider"></li>
                         <li><a href="#" class="nav feileiIcon">商品分类</a></li>
                         <li class="divider"></li>
                         <li><a href="#" class="nav carIcon">我的购物车</a></li>
                         <li class="divider"></li>                         
                         <li><a href="javascript:bookmarksite('我的毕业作品 购物车', 'http://www.baidu.com');" class="nav shouchangIcon">收藏本站 </a></li>
                         <li class="divider"></li>
                         <li><a href="<%=basePath%>jsp/index/register.jsp" class="nav loginIcon">注册</a></li>
                         <li class="divider"></li>  
						 <li>
                             <div class="top_bar">
                                <div class="top_search">
                                    <div class="search_text">搜索商品</div>
                                    <input type="text" class="search_input" name="search" />
                                    <input type="image" src="<%=basePath%>images/search.gif" class="search_bt"/>
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
   
           		<div class="oferta">
                	<img src="<%=basePath%>images/p1.png" width="165" height="113" border="0" class="oferta_img" alt="" title="" />
                	
                    <div class="oferta_details">
                            <div class="oferta_title">Power Tools BST18XN Cordless</div>
                            <div class="oferta_text">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            </div>
                            <a href="details.html" class="prod_buy">查看详细介绍</a>
                    </div>
                </div>
   
   
   	<div class="center_title_bar">推荐商品</div>
    
    	<div class="prod_box">

            <div class="center_prod_box">            
                 <div class="product_title"><a href="details.html">Makita 156 MX-VL</a></div>
                 <div class="product_img"><a href="details.html"><img src="<%=basePath%>images/p1.jpg" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
            </div>
           
            <div class="prod_details_tab">
            <a href="buy.html" class="prod_buy">加入购物车</a>          
            <a href="details.html" class="prod_details">查看详细</a>            
            </div>                     
        </div>
    
    	<div class="prod_box">

            <div class="center_prod_box">            
                 <div class="product_title"><a href="details.html">Bosch XC</a></div>
                 <div class="product_img"><a href="details.html"><img src="<%=basePath%>images/p2.jpg" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
            </div>
           
            <div class="prod_details_tab">
            <a href="buy.html" class="prod_buy">加入购物车</a>              
            <a href="details.html" class="prod_details">查看详细</a>            
            </div>                     
        </div>    
 

     	<div class="prod_box">

            <div class="center_prod_box">            
                 <div class="product_title"><a href="details.html">Lotus PP4</a></div>
                 <div class="product_img"><a href="details.html"><img src="<%=basePath%>images/p4.jpg" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
            </div>
           
            <div class="prod_details_tab">
            <a href="buy.html" class="prod_buy">加入购物车</a>              
            <a href="details.html" class="prod_details">查看详细</a>            
            </div>                     
        </div>
 
     	<div class="prod_box">

            <div class="center_prod_box">            
                 <div class="product_title"><a href="details.html">Makita 156 MX-VL</a></div>
                 <div class="product_img"><a href="details.html"><img src="<%=basePath%>images/p3.jpg" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
            </div>
           
            <div class="prod_details_tab">
            <a href="buy.html" class="prod_buy">加入购物车</a>              
            <a href="details.html" class="prod_details">查看详细</a>            
            </div>                     
        </div>
    
    	<div class="prod_box">

            <div class="center_prod_box">            
                 <div class="product_title"><a href="details.html">Bosch XC</a></div>
                 <div class="product_img"><a href="details.html"><img src="<%=basePath%>images/p5.jpg" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
            </div>
           
            <div class="prod_details_tab">
            <a href="buy.html" class="prod_buy">加入购物车</a>              
            <a href="details.html" class="prod_details">查看详细</a>            
            </div>                     
        </div>    
 

     	<div class="prod_box">

            <div class="center_prod_box">            
                 <div class="product_title"><a href="details.html">Lotus PP4</a></div>
                 <div class="product_img"><a href="details.html"><img src="<%=basePath%>images/p6.jpg" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
            </div>
           
            <div class="prod_details_tab">
            <a href="buy.html" class="prod_buy">加入购物车</a>              
            <a href="details.html" class="prod_details">查看详细</a>            
            </div>                     
        </div>
 
    	<div class="center_title_bar">最新商品</div>
    
    	<div class="prod_box">

            <div class="center_prod_box">            
                 <div class="product_title"><a href="details.html">Makita 156 MX-VL</a></div>
                 <div class="product_img"><a href="details.html"><img src="<%=basePath%>images/p7.jpg" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
            </div>
           
            <div class="prod_details_tab">
            <a href="buy.html" class="prod_buy">加入购物车</a>              
            <a href="details.html" class="prod_details">查看详细</a>            
            </div>                     
        </div>
    
    	<div class="prod_box">

            <div class="center_prod_box">            
                 <div class="product_title"><a href="details.html">Bosch XC</a></div>
                 <div class="product_img"><a href="details.html"><img src="<%=basePath%>images/p1.jpg" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
            </div>
           
            <div class="prod_details_tab">
            <a href="buy.html" class="prod_buy">加入购物车</a>              
            <a href="details.html" class="prod_details">查看详细</a>            
            </div>                     
        </div>    
 

     	<div class="prod_box">

            <div class="center_prod_box">            
                 <div class="product_title"><a href="details.html">Lotus PP4</a></div>
                 <div class="product_img"><a href="details.html"><img src="<%=basePath%>images/p3.jpg" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
            </div>
           
            <div class="prod_details_tab">
            <a href="buy.html" class="prod_buy">加入购物车</a>              
            <a href="details.html" class="prod_details">查看详细</a>            
            </div>                     
        </div>   
    
   
   </div><!-- end of center content -->



 <div class="right_content">
<div style="display:none" id="loginPane"><div class="title_box">用户登录</div>  
     <div class="border_box">
  
      	<div style="padding:5px 0 0 0"><label for="loginName" >用户名称：</label><input style="width:120px;" id="loginName"type="text"/></div>
      	<div style="padding:5px 0 0 0"><label for="loginPassword">登录密码：</label><input style="width:120px;" id="loginPassword"type="password"/></div>
     	<div style="padding:10px 0 5px 0"><input style=" background-color: #eee;"type="button" id="toregister" value="我要注册"/><input style=" background-color: #eee;float:right;margin-right:10px;"type="button" id="loginBtn"value="马上登录"/></div> 
     
     </div> 
 </div> 
   <div style="display:none" id="myCarPane">
   <div class="shopping_cart">
        	<div class="title_box">我的购物车</div>
            
            <div class="cart_details">
            	用户名:&nbsp;${session.USER_NAME}<br />
             <span class="border_cart"></span>
            3 个商品
            <span class="border_cart"></span>
            总价: <span class="price">350$</span><br />
            </div>
            
            <div class="cart_icon"><a href="#" title=""><img src="<%=basePath%>images/shoppingcart.png" alt="" title="" width="35" height="35" border="0" /></a>
            </div>
             <div class="cart_icon"><a href="#" id="loginOutBtn"><img alt="退出登录"src="<%=basePath%>images/loginOut.png" style="margin:10px 0 0 15px;"alt="" title="" width="20" height="20" border="0" /></a>
            </div>
        
        </div>
    </div>
   
     <div class="title_box">What’s new</div>  
     <div class="border_box">
         <div class="product_title"><a href="details.html">Motorola 156 MX-VL</a></div>
         <div class="product_img"><a href="details.html"><img src="<%=basePath%>images/p2.jpg" alt="" title="" border="0" /></a></div>
         <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
     </div>  
     
     
       <div class="title_box">查看最多</div>  
     <div class="border_box">
         <div class="product_title"><a href="details.html">Makita 156 MX-VL</a></div>
         <div class="product_img"><a href="details.html"><img src="<%=basePath%>images/p1.jpg" alt="" title="" border="0" /></a></div>
         <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
     </div>  
      <div class="banner_adds">
     
     <a href="#"><img src="<%=basePath%>images/bann1.jpg" alt="" title="" border="0" /></a>
     </div>        
   <!-- end of right content -->   


            
   </div><!-- end of main content -->
   
   <div class="area">
   <a href="#">
   	<img src="<%=basePath%>images/serviceicon_01.gif"  /></a>
    <a href="#">
    <img src="<%=basePath%>images/serviceicon_02.gif"  /></a>
    <a href="#">
    <img src="<%=basePath%>images/serviceicon_03.gif" /></a>
    <a href="#">
    <img src="<%=basePath%>images/serviceicon_04.gif" /></a>
    </div>
   <div class="footer">
   

        <div class="left_footer">
        <img src="<%=basePath%>images/footer_logo.png" alt="" title="" width="89" height="42"/>
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
</body>
</html>