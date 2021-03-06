<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>景点主页</title>
<link rel="stylesheet" href="css/bootstrap.min.css"  />
<link rel="stylesheet" href="css/style.css">
<!-- 排版css -->
<link rel="stylesheet" href="css/paiban.css">
<script type="text/javascript" src="js/jquer.min.js"></script>
</head>
<body>
<div class="wrapper header col-xs-12">
  <div class="container nav-wrapper">
    <div class="head-top">
      <div class="logo col-md-6 col-sm-4 col-xs-12"><img src="img/login.png"></div>
      <div class="logo-right col-md-6 col-sm-8 col-xs-12">
        <div class="search col-md-12 col-sm-12"><!--  <i class="taobao"></i> <i class="sina"></i> <i class="wx"></i> -->
          <form class="navbar-form col-xs-6" role="search">
            <div class="form-group">
              <input type="text" class="form-control" name="search" value="" placeholder="请输入关键字">
            </div>
            <button type="submit" class="btn btn-default">搜索</button>
           	&nbsp;
            <button type="button" class="btn btn-default btn-sm" id="login" >
    			<span class="glyphicon glyphicon-log-in"></span>&nbsp;登录
			</button>
			&nbsp;
			<button type="button" class="btn btn-default btn-sm" id="reg">
    							<span class="glyphicon glyphicon-user"></span>&nbsp;注册
			</button>
			
				 &nbsp;
         	<button type="button" class="btn btn-default btn-sm" style="display:none" id="center">
    			<span class="glyphicon glyphicon-user"></span>&nbsp;个人中心
			</button>
			&nbsp;
			<button type="button" class="btn btn-default btn-sm" style="display:none" id="exit">
    			<span class="glyphicon glyphicon-log-out"></span>&nbsp;退出
			</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="clearfix"></div>
<!--导航-->
<div class="navs">
  <nav class="navbar navbar-default" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        <a class="navbar-brand" href="index.jsp">首页</a> </div>
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
     	<li><a href="Scenic.jsp" target="_blank">景点</a></li>
					<li><a href="hotel.jsp" target="_blank">酒店</a></li>
					<li><a href="lygl.jsp" target="_blank">旅游攻略</a></li>
					<li><a href="about.jsp" target="_blank">关于我们</a></li>
        </ul>
      </div>
    </div>
  </nav>
</div>
<div class="clearfix"></div>
<!--banner-->
<div class="banner">
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner" role="listbox">
      <div class="item active"> <img src="img/banner1.jpg" alt="...">
        <div class="carousel-caption-con">
	      <div class="container">
	        <div class="col-md-4 col-sm-4 col-xs-12">
	          <div class="banner-title">人和假期</div>
	          <p>蜜月尽在马尔代夫 </p>
	          <p>咨询电话：010-56149580</p>
	        </div>
	        <div class="col-md-4 col-sm-4 col-xs-12 weather">
	        	<div class="title"></div>
	        	<iframe width="210" scrolling="no" height="80" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&color=%23FFFFFF&icon=1&py=male&num=1&nid=119&wid=1190001"></iframe>
			</div>
	        <div class="col-md-2 col-sm-2 col-xs-12 bj">
				<div class="title">北京时间</div>
				<div class="bjtime"></div>
			</div>
	        <div class="col-md-2 col-sm-2 col-xs-12 md">
	        	<div class="title">马尔代夫时间</div>
				<div class="mdtime"></div>
	        </div>
	      </div>
	    </div>
      </div>
      <div class="item"> <img src="img/banner2.jpg" alt="...">
        <div class="carousel-caption-con">
	      <div class="container">
	        <div class="col-md-4 col-sm-4 col-xs-12">
	          <div class="banner-title">浪漫沙滩的气味</div>
	          <p>你是风儿我是沙 </p>
	          <p>咨询电话：010-56149580</p>
	        </div>
	        <div class="col-md-4 col-sm-4 col-xs-12 weather">
	        	<div class="title"></div>
	        	<iframe width="210" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&color=%23FFFFFF&icon=1&py=male&num=1&nid=119&wid=1190001"></iframe>
			</div>
	        <div class="col-md-2 col-sm-2 col-xs-12 bj">
				<div class="title">北京时间</div>
				<div class="bjtime"></div>
			</div>
	        <div class="col-md-2 col-sm-2 col-xs-12 md">
	        	<div class="title">马尔代夫时间</div>
				<div class="mdtime"></div>
	        </div>
	      </div>
	    </div>
      </div>
      <div class="item"> <img src="img/banner3.jpg" alt="...">
        <div class="carousel-caption-con">
	      <div class="container">
	        <div class="col-md-4 col-sm-4 col-xs-12">
	          <div class="banner-title">蔚蓝色的心跳</div>
	          <p>让心情随波浪跳动 </p>
	          <p>咨询电话：010-56149580</p>
	        </div>
	        <div class="col-md-4 col-sm-4 col-xs-12 weather">
	        	<div class="title"></div>
	        	<iframe width="210" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&color=%23FFFFFF&icon=1&py=male&num=1&nid=119&wid=1190001"></iframe>
			</div>
	        <div class="col-md-2 col-sm-2 col-xs-12 bj">
				<div class="title">北京时间</div>
				<div class="bjtime"></div>
			</div>
	        <div class="col-md-2 col-sm-2 col-xs-12 md">
	        	<div class="title">马尔代夫时间</div>
				<div class="mdtime"></div>
	        </div>
	      </div>
	    </div>
      </div>
    </div>
    
    <!-- Controls --> 
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> <span class="sr-only">Previous</span> </a> 
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> <span class="sr-only">Next</span> </a> </div>
</div>
<div class="container">
  <ol class="breadcrumb">
    <li>你的位置：</li>
    <li><a href="index.jsp">首页</a></li>
    <li class="active">景点介绍</li>
  </ol>
  <div class="col-md-12">
    <div class="list-title">景点介绍</div>
    <div class="row jdjs-main">
    
      <div class="col-md-8" id="scenics">
      

<!-- 
         <div class="page pull-right">
  		</div> -->
  		
      </div>
      <div class="col-md-4 jd-list">
		<div class="list-title">景点位置</div>
		<ul class="content-list">
			<li>▪&nbsp;&nbsp;&nbsp;&nbsp;<a href="javvascript:void(0);" class="loc">厦门</a></li>
			<li>▪&nbsp;&nbsp;&nbsp;&nbsp;<a href="javvascript:void(0);" class="loc">泉州</a></li>
			<li>▪&nbsp;&nbsp;&nbsp;&nbsp;<a href="javvascript:void(0);" class="loc">福州</a></li>
			<li>▪&nbsp;&nbsp;&nbsp;&nbsp;<a href="javvascript:void(0);" class="loc">宁德</a></li>
			<li>▪&nbsp;&nbsp;&nbsp;&nbsp;<a href="javvascript:void(0);" class="loc">漳州</a></li>
		</ul>
	</div>
      
    </div>
  </div>
</div>
<div class="wrapper footer">
  <div class="service">
    <div class="container">
      <div class="col-md-3 col-sm-12">
        <div class="link_logo"></div>
      </div>
      <div class="col-md-6 col-sm-12">
        <div class="link_tel"></div>
      </div>
      <div class="col-md-3 col-sm-12 fx">
        <div class="bshare-custom icon-medium">
          <div class="bsPromo bsPromo2"></div>
          <a title="分享到一键通" class="bshare-bsharesync" href="javascript:void(0);"></a> <a title="分享到QQ空间" class="bshare-qzone"></a> <a title="分享到新浪微博" class="bshare-sinaminiblog" href="javascript:void(0);"></a> <a title="分享到人人网" class="bshare-renren" href="javascript:void(0);"></a> <a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a> </div>
        <script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script> 
        <script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script> 
      </div>
    </div>
  </div>
  <div class="container">
    <div class="friendlink">
      <div class="col-md-4 col-sm-4 col-xs-12"><a href="#"><img src="img/wx_link.png" class="img-responsive"></a></div>
      <div class="col-md-4 col-sm-4 col-xs-12"><a href="#"><img src="img/taobao_link.png" class="img-responsive"></a></div>
      <div class="col-md-4 col-sm-4 col-xs-12"><a href="#"><img src="img/wb_link.png" class="img-responsive"></a></div>
    </div>
    <div class="copyright col-md-12">
      <p>版权所有：人和假期旅游咨询   咨询电话：15611549285 传真：010-66094197</p>
      <p>北京西城区复兴门内大街45号 4号楼101室 邮编：100801   备案专政号 京IPC备1300362号</p>
    </div>
  </div>
</div>
<script src="js/jquery.min.js"></script> 
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/click.js"></script>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript">
		$(function(e){
			 $.ajax({
	             type: "GET",
	             url: "${pageContext.request.contextPath}/api/scenic/six",
	             dataType: "json",
	             success: function(data){
	            	$.each(data, function(commentIndex, comment){
	            		var loc=comment.scenicname.substring(0,2);
                      $("#scenics").append("<div class='jd-summary'><div class='row'><div class='col-md-3 img'><img src='scenicImg/"+comment.scenidpic+"' class='img-responsive'></div><div class='col-md-9 content'><h4><a href='${pageContext.request.contextPath}/view/list?scenicId="+comment.scenicid+"'>"+comment.scenicname+"</a><b><span class='s_star_1'><i class='s_d8'></i></span></b></h4><em>地点："+loc+"</em><em>门票价格：<dfn class='Scenic-price'><i>&yen;"+comment.scenicprice+"</i></dfn>起 </em><p>福建景点</p></div><div class='clearfix'></div></div> </div>"); 
                   });
	             }
	          });
		 	$(".loc").click(function(e){
				var scenicname=$(this).text();
				$("#scenics").empty();
				  $.ajax({
		             type: "GET",
		             data:{'scenicname':scenicname},
		             url: "${pageContext.request.contextPath}/api/scenic/like",
		             dataType: "json",
		             success: function(data){
		            	$.each(data, function(commentIndex, comment){
		            		
		            		var loc=comment.scenicname.substring(0,2);
	                      $("#scenics").append("<div class='jd-summary'><div class='row'><div class='col-md-3 img'><img src='scenicImg/"+comment.scenidpic+"' class='img-responsive'></div><div class='col-md-9 content'><h4><a href='${pageContext.request.contextPath}/view/list?scenicId="+comment.scenicid+"'>"+comment.scenicname+"</a><b><span class='s_star_1'><i class='s_d8'></i></span></b></h4><em>地点："+loc+"</em><em>门票价格：<dfn class='Scenic-price'><i>&yen;"+comment.scenicprice+"</i></dfn>起 </em><p>福建景点</p></div><div class='clearfix'></div></div> </div>"); 
	                   });
		             }
		          }); 
			}); 
			
		})
		
	</script>
</body>
</html>
