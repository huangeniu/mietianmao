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
<title>main</title>
<link rel="stylesheet" type="text/css" href="style/default/cms_common.css">
<link rel="stylesheet" id="skinCss" type="text/css" href="style/default/cms_sytle.css">
<script src="js/common.js" language="javascript" type="text/javascript"></script>
<!--通用-->
<script src="js/tab_swicth.js" language="javascript" type="text/javascript"></script>
<!--标签切换-->
<script src="js/table.js" type="text/javascript"></script>
</head>
<body class="main_bg">
<div class="weizhi"><span class="weizhi_icon">&nbsp;</span>您目前所在位置：基础数据导入 > 学生数据导入</div>
<div class="module">
  <div class="title"><img src="images/ico_w.gif" />
    <h2>基础数据导入流程说明</h2>
  不知道怎么处理？<a href="#">查看视频教程</a></div>
  <div class="steps" >
    <ul>
      <li class="steps_b">4.确定导入通过检测的数据<strong></strong></li>
      <li class="steps_b">3.查看数据检测信息<span></span></li>
      <li class="steps_b">2.上传填好的模版数据文件<span></span></li>
      <li class="steps_a">1.下载模版并填写数据<span></span></li>
    </ul>
  </div>
  <ol>
    <li><div>1.下载要导入数据的模版文件</div>
    <p><a href="#"><img src="images/ico_excel.gif" />学生基础数据导入模版.xls</a></p>
	<div class="tips"><strong>模版文件说明：</strong><br />
请严格按照下载模板文件里面规定的格式进行数据填写
   <br />
   1.学生基础数据导入模板中[学生姓名][性别][生日][班级名称]必须填写：[学籍号]不是必填项，为了在数据处理过程中不出现重复学生数据，如果
   学生已分配了教育局统一编号，请填写：校内学号为选填：
   <br />
   2.班级名称命名规范 年级(班号)班 (年级定义:一年，二年，三年，四年，五年，六年，初一，初二，初三，高一，高二，高三：班号定义:1，2，3，4，5...)
   示例:一年(1)班，初一(1)班，高一(1)班
   3.生日格式:yyyy-mm-dd  示例:1998-1-25</div>
    </li>
	 <li><div>2.上传导入数据文件</div>
    <p><input name="" type="file" /></p>
	<small>上传可能会耗费一定时间，视数据量多少而定</small></li>
  </ol>
</div>
<div class="search_k">
  <fieldset class="search">
  <legend><img src="images/search_btn.gif" align="absmiddle">&nbsp;高级查找</legend>
  <div class="search_content"> 通过对方ee号：
    <input name="userId" type="text" class="input_style1" value=""/>
    通过名字查询：
    <input type="text" name="realname" value="" class="input_style1"/>
    <input type="submit" name="Submit" value="开始查询" class="input_btn_style1"/>
  </div>
  </fieldset>
</div>
<div class="search_k">
  <fieldset class="search">
  <legend><img src="images/search_btn.gif" align="absmiddle">&nbsp;选择行政区</legend>
  <div class="search_content">
    <ul class="innerbutton">
      <li class="buttonbg2" id="mb1" onClick="changeContent('/user/areaUserManager.ee?action=studentUserList',1)" >越秀区</li>
      <li class="buttonbg2" id="mb2" onClick="changeContent('/user/areaUserManager.ee?action=studentUserList',2)" >荔湾区</li>
      <li class="buttonbg1" id="mb3" onClick="changeContent('/user/areaUserManager.ee?action=studentUserList',3)" >海珠区</li>
      <li class="buttonbg2" id="mb4" onClick="changeContent('/user/areaUserManager.ee?action=studentUserList',4)" >天河区</li>
      <li class="buttonbg2" id="mb5" onClick="changeContent('/user/areaUserManager.ee?action=studentUserList',5)" >白云区</li>
      <li class="buttonbg2" id="mb6" onClick="changeContent('/user/areaUserManager.ee?action=studentUserList',6)" >黄埔区</li>
      <li class="buttonbg2" id="mb7" onClick="changeContent('/user/areaUserManager.ee?action=studentUserList',7)" >番禺区</li>
      <li class="buttonbg2" id="mb8" onClick="changeContent('/user/areaUserManager.ee?action=studentUserList',8)" >花都区</li>
      <li class="buttonbg2" id="mb9" onClick="changeContent('/user/areaUserManager.ee?action=studentUserList',9)" >南沙区</li>
      <li class="buttonbg2" id="mb10" onClick="changeContent('/user/areaUserManager.ee?action=studentUserList',10)" >萝岗区</li>
      <li class="buttonbg2" id="mb11" onClick="changeContent('/user/areaUserManager.ee?action=studentUserList',11)" >增城市</li>
      <li class="buttonbg2" id="mb12" onClick="changeContent('/user/areaUserManager.ee?action=studentUserList',12)" >从化市</li>
      <li class="buttonbg2" id="mb13" onClick="changeContent('/user/areaUserManager.ee?action=studentUserList',14)" >市直属学校</li>
    </ul>
    <div>学校名称：
      <input name="schoolName" id="schoolName" type="text" class="input_style1" value='' size="22" >
      <input  class="input_btn_style1" type="submit" name="Submit" value="模糊查询">
      <input class="input_btn_style1" type="reset" name="Submit" value="重置" >
    </div>
  </div>
  </fieldset>
</div>
<div class="select"> <span style="float:right;">
  <input type="submit" name="Submit222" value="静态化"  class="input_btn_style1"/>
  <input type="submit" name="Submit223" value="恢复信息"  class="input_btn_style1"/>
  <input type="submit" name="Submit224" value="审批信息"  class="input_btn_style1"/>
  <input type="submit" name="Submit22" value="删除所选"  class="input_btn_style1"/>
  <input type="submit" name="Submit2" value="添加信息"  class="input_btn_style2"/>
  </span> </div>
<div class="table_bg">
  <table align="center" id="main_table">
    <tr>
      <th>选择</th>
      <th>资源名称</th>
      <th>资源代码</th>
      <th>叶子结点</th>
      <th>相关描述</th>
      <th nowrap="nowrap">操作</th>
    </tr>
    <tr >
      <td align="center"><input type="checkbox" name="checkbox" value="checkbox" /></td>
      <td>权限管理</td>
      <td>PRIMGR</td>
      <td align="center"><span class="font_red">重要</span></td>
      <td><a href="#">权限管理</a></td>
      <td align="center" nowrap="NOWRAP"><a href="#" onClick="window.open('window.html','newwindow','width=600,heigh=300,left=300,top=200,resizable=no')" class="edit">修改</a> <a href="#" class="delete">删除</a> <a href="#" class="up">置顶</a> <a href="#" class="move">移动</a> <a href="#" class="go">查看</a> <a href="#" class="add">增加</a> <a href="#" class="down">往下</a></td>
    </tr>
    <tr>
      <td align="center"><input type="checkbox" name="checkbox2" value="checkbox" /></td>
      <td>操作管理</td>
      <td>OPTMGR </td>
      <td align="center"><span class="font_blue">普通</span></td>
      <td><a href="#">基本操作动作如添加删除等的信息初始化基本操作动作如添加删除等</a></td>
      <td align="center" nowrap="NOWRAP"><a href="#" onClick="window.open('window2.html','newwindow','width=700,heigh=300,left=300,top=200,scrollbars=1,resizable=yes')"  class="edit">修改</a> <a href="#" class="delete">删除</a></td>
    </tr>
    <tr>
      <td align="center"><input type="checkbox" name="checkbox32" value="checkbox" /></td>
      <td>模块管理</td>
      <td>RESMGR</td>
      <td align="center"><span class="font_orange">特殊</span></td>
      <td><a href="#">对资源模块的初始化</a></td>
      <td align="center" nowrap="NOWRAP"><a href="window.html" target="_blank" class="edit">修改</a> <a href="#" class="delete">删除</a></td>
    </tr>
    <tr>
      <td align="center"><input type="checkbox" name="checkbox" value="checkbox" /></td>
      <td>权限管理</td>
      <td>PRIMGR</td>
      <td align="center"><span class="font_smalt">加急</span></td>
      <td><a href="#">权限管理</a></td>
      <td align="center" nowrap="NOWRAP"><a href="window.html" target="_blank" class="edit">修改</a> <a href="#" class="delete">删除</a></td>
    </tr>
    <tr>
      <td align="center"><input type="checkbox" name="checkbox2" value="checkbox" /></td>
      <td>操作管理</td>
      <td>OPTMGR </td>
      <td align="center"><span class="font_gray">未审</span></td>
      <td><a href="#">基本操作动作如添加删除等的信息初始</a></td>
      <td align="center" nowrap="NOWRAP"><a href="window.html" target="_blank" class="edit">修改</a> <a href="#" class="delete">删除</a></td>
    </tr>
    <tr>
      <td align="center"><input type="checkbox" name="checkbox3" value="checkbox" /></td>
      <td>模块管理</td>
      <td>RESMGR</td>
      <td align="center"><span class="font_green">已审</span></td>
      <td><a href="#">对资源模块的初始化</a></td>
      <td align="center" nowrap="NOWRAP"><a href="window.html" target="_blank" class="edit">修改</a> <a href="#" class="delete">删除</a></td>
    </tr>
    <tr >
      <td align="center"><input type="checkbox" name="checkbox" value="checkbox" /></td>
      <td>权限管理</td>
      <td>PRIMGR</td>
      <td align="center">否</td>
      <td><a href="#">权限管理</a></td>
      <td align="center" nowrap="NOWRAP"><a href="window.html" target="_blank" class="edit">修改</a> <a href="#" class="delete">删除</a></td>
    </tr>
    <tr>
      <td align="center"><input type="checkbox" name="checkbox2" value="checkbox" /></td>
      <td>操作管理</td>
      <td>OPTMGR </td>
      <td align="center">是</td>
      <td><a href="#">基本操作动作如添加删除等的信息初始化基本操作动作如添加删除等的信息初</a></td>
      <td align="center" nowrap="NOWRAP"><a href="window.html" target="_blank" class="edit">修改</a> <a href="#" class="delete">删除</a></td>
    </tr>
    <tr>
      <td align="center"><input type="checkbox" name="checkbox3" value="checkbox" /></td>
      <td>模块管理</td>
      <td>RESMGR</td>
      <td align="center">是</td>
      <td><a href="#">对资源模块的初始化</a></td>
      <td align="center" nowrap="NOWRAP"><a href="window.html" target="_blank" class="edit">修改</a> <a href="#" class="delete">删除</a></td>
    </tr>
    <tr >
      <td align="center"><input type="checkbox" name="checkbox" value="checkbox" /></td>
      <td>权限管理</td>
      <td>PRIMGR</td>
      <td align="center">否</td>
      <td><a href="#">权限管理</a></td>
      <td align="center" nowrap="NOWRAP"><a href="window.html" target="_blank" class="edit">修改</a> <a href="#" class="delete">删除</a></td>
    </tr>
    <tr>
      <td align="center"><input type="checkbox" name="checkbox2" value="checkbox" /></td>
      <td>操作管理</td>
      <td>OPTMGR </td>
      <td align="center">是</td>
      <td><a href="#">基本操作动作如添加删除等的信息初始化基本操作动作如添加删除等的信息</a></td>
      <td align="center" nowrap="NOWRAP"><a href="window.html" target="_blank" class="edit">修改</a> <a href="#" class="delete">删除</a></td>
    </tr>
    <tr>
      <td align="center"><input type="checkbox" name="checkbox3" value="checkbox" /></td>
      <td>模块管理</td>
      <td>RESMGR</td>
      <td align="center">是</td>
      <td><a href="#">对资源模块的初始化</a></td>
      <td align="center" nowrap="NOWRAP"><a href="window.html" target="_blank" class="edit">修改</a> <a href="#" class="delete">删除</a></td>
    </tr>
    <tr >
      <td align="center"><input type="checkbox" name="checkbox" value="checkbox" /></td>
      <td>权限管理</td>
      <td>PRIMGR</td>
      <td align="center">否</td>
      <td><a href="#">权限管理</a></td>
      <td align="center" nowrap="NOWRAP"><a href="window.html" target="_blank" class="edit">修改</a> <a href="#" class="delete">删除</a></td>
    </tr>
    <tr>
      <td align="center"><input type="checkbox" name="checkbox2" value="checkbox" /></td>
      <td>操作管理</td>
      <td>OPTMGR </td>
      <td align="center">是</td>
      <td><a href="#">基本操作动作如添加删除等的信息初始化基本操作动作如添加删除</a></td>
      <td align="center" nowrap="NOWRAP"><a href="window.html" target="_blank" class="edit">修改</a> <a href="#" class="delete">删除</a></td>
    </tr>
    <tr>
      <td align="center"><input type="checkbox" name="checkbox3" value="checkbox" /></td>
      <td>模块管理</td>
      <td>RESMGR</td>
      <td align="center">是</td>
      <td><a href="#">对资源模块的初始化</a></td>
      <td align="center" nowrap="NOWRAP"><a href="window.html" target="_blank" class="edit">修改</a> <a href="#" class="delete">删除</a></td>
    </tr>
    <tr>
      <td colspan="6" class="fenye">共有[<em>26</em>]条记录&nbsp;&nbsp;&nbsp;每页
        <select>
          <option value="1">10</option>
          <option value="2">20</option>
          <option value="3">30</option>
        </select>
        条&nbsp;&nbsp;&nbsp;第[<em>1</em>]页/共[<em>3</em>]页&nbsp;&nbsp;&nbsp;<a href="#"><span class="nx">9</span>首页</a> <a href="#"><span class="nx">3</span>上一页</a> <a href="#">下一页<span class="nx">4</span></a> <a href="#">末页<span class="nx">:</span></a>&nbsp;&nbsp;&nbsp;跳到
        <select name="menu1">
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
        </select>
        页</td>
    </tr>
  </table>
</div>
<script language="JavaScript">
	anole('main_table', 1,  '#edf3fe', '#ffffff', '#fff090', '#fff090');
</script>
</body>
</html>
