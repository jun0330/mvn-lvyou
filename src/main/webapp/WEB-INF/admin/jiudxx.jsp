<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8" />
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<style type="text/css">
#img{width:550px;
     height:400px;

}
#span{
display:inline-block; 
margin-top:40px;
margin-left:100px;
}
.u li{
float:left;
list-style-type:none;
margin-right:30px;
color:#FFA500;
}



#demo,#dem,#a,#b,#bt,#sp{

float: left;

}
#demo,#dem{

float: left;
width:180px;
height:40px;
}


</style>
<script src="${pageContext.request.contextPath}/laydate/laydate.js"></script>
<style>
*{margin:0;padding:0;list-style:none;}
html{background-color:#E3E3E3; font-size:14px; color:#000; font-family:'微软雅黑'}
h2{line-height:30px; font-size:20px;}
a,a:hover{ text-decoration:none;}
pre{font-family:'微软雅黑'}
.box{width:970px; padding:10px 20px; background-color:#fff; margin:10px auto;}
.box a{padding-right:20px;}
.demo1,.demo2,.demo3,.demo4,.demo5,.demo6{margin:25px 0;}
h3{margin:10px 0;}
.layinput{height: 22px;line-height: 22px;width: 150px;margin: 0;}
</style>
</head>
<body>
<div class="wrapper header col-xs-12">
  <div class="container nav-wrapper">
    <div class="head-top">
      <div class="logo col-md-6 col-sm-4 col-xs-12"><img src="${pageContext.request.contextPath}/img/login.png"></div>
      <div class="logo-right col-md-6 col-sm-8 col-xs-12">
        <div class="search col-md-12 col-sm-12"> <i class="taobao"></i> <i class="sina"></i> <i class="wx"></i>
          <form class="navbar-form col-xs-6" role="search">
            <div class="form-group">
              <input type="text" class="form-control" name="search" value="" placeholder="请输入关键字">
            </div>
            <button type="submit" class="btn btn-default">搜索</button>
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
           <li><a href="" target="_blank">景点</a></li>
          <li><a href="" target="_blank">酒店</a></li>
          <li><a href="" target="_blank">攻略</a></li>
          <li><a href="" target="_blank">关于我们</a></li>
        </ul>
      </div>
    </div>
  </nav>
</div>

<div class="container">
  <ol class="breadcrumb">
    <li>你的位置：</li>
    <li><a href="#">首页</a></li>
    <li class="active">酒店介绍</li>
  </ol>
  
  <c:if test="${list!=null }">
  <c:forEach items="${list}" var="hotel">
  <div class="col-md-12">
    <div class="list-title">酒店介绍</div>
    <div class="row jdjs-main">
      <div class="col-md-10">
        <div class="row parameter">
          <div class="col-md-6"><img src="${pageContext.request.contextPath}/hotelImg/${hotel.hotelinfopic1}" id="img" class="img-responsive"></div>
          <div class="col-md-6">
            <h3><a href="">${hotel.hotelinfoname}</a></h3>
            <em>酒店等级：<span class="s_star_1"><i class="s_d8"></i></span></em> <em>地址：${hotel.hotelinfoaddress}<span style="margin-left:10px"><a href="?#hotel">
                                  查看地图</a></span></em><em>房间数量：99+</em> <em>电话号码：+110 1101000</em> <em>营业时间：全天24小时  00：00-24：00</em> <em>服务宗旨：你的微笑是我们最大的成功</em> <em><span style="color:#FFA500;font-size:24px;">98.6%</span>好评率</em><a href="?#disport"><em>查看<span style="color:#FFA500">1030</span>条评论</em></a></div>
              
              <span style="color:#FF4500;font-size:24px;margin-right:20px" id="span" ><span  style="color:#FF4500;font-size:18px">￥</span>${hotel.hotelinfoprice}<span  style="color:#000000;font-size:14px">起</span></span><a href="?#about"><button id="btn" style="width:100px;height:35px;background:#FFA500;border-radius:7px; border-style:none;color:#F8F8FF; font-size:16px;">立即预定</button></a>
        </div>
        <ul class="about col-md-12">
            <li class="col-md-2"><a href="?#about">房型介绍</a></li>
            <li class="col-md-2"><a href="?#house">酒店详情</a></li>
            <li class="col-md-2"><a href="?#images">相关图片</a></li>
            <li class="col-md-2"><a href="?#hotel">交通位置</a></li>
            <li class="col-md-2"><a href="?#disport">用户点评<span style="color:#FFA500;">(1030)</span></a></li>
            <li class="col-md-2"><a href="?#discount">相关游记<span style="color:#FFA500;">(50)</span></a></li>
        </ul>
        <div class="clearfix"></div>
      
         <div class="demo1">
           <span id="a" style="color:black;font-size:20px;padding-top:5px;">入住:</span> 
             <input class="laydate-icon" id="demo" value="2018-7-3更新"> 
             </div>
       
              <div class="dem1" style="display:inline-block">
                <span id="b" style="color:black;font-size:20px;padding-top:5px;">退房:</span>
                  <input class="laydate-icon" id="dem" value="2018-7-3更新">
                  <span id="sp" style="color:black;margin-top:8px;">共1晚</span>
                <button id="bt" style="background:green;margin-top:3px;height:35px;width:80px">重新搜索</button>
                </div>
                 
        <div id="about">
         <div class="row parameter">
          <div class="col-md-2"><img src="${pageContext.request.contextPath}/hotelImg/${hotel.roomimgone}" style="width:150;height:110px;" class="img-responsive"></div>
           <div class="col-md-10">
           <div class="row">
            <span class="col-md-4" style="font-size:30px;margin-right:65px;">${hotel.roomtypeone}</span><span class="col-md-6" style="color:#FF4500;font-size:24px;margin-right:20px;"><span  style="color:#FF4500;font-size:15px;">￥</span>840<span  style="color:#000000;font-size:14px">起</span></span>
             </div>
               <span style="margin-right:10px;color:#FF4500;">上网</span><span style="margin-right:15px;">宽带</span><span style="margin-right:10px;">|</span>
                   <span style="margin-right:10px;color:#FF4500;">卫浴</span><span style="margin-right:15px;">独立</span><span style="margin-right:10px;">|</span>
                          <span style="margin-right:10px;color:#FF4500;">窗户</span><span style="margin-right:15px;">无</span><span style="margin-right:10px;">|</span> <span style="margin-right:10px;color:#FF4500;">可住</span><span>2人</span>
          <em>床型<span style="margin-left:20px;">大床1.5x2.0米1张</span></em>
           <div style="margin-top:-30px;"><span style="margin-right:130px;">特价房</span><span style="margin-right:50px;">单床</span><span style="margin-right:50px;">无窗户</span><span style="margin-right:50px;">有早餐</span><span>不可取消</span>
            <span style="color:#FF4500;font-size:24px;padding-right:20px" id="span" ><span  style="color:#FF4500;font-size:15px;">￥</span>${hotel.roompriceone}<span  style="color:#000000;font-size:14px">起</span></span><a href="${pageContext.request.contextPath}/HotelOrder.jsp"><button id="btn" style="width:70px;height:30px;background:#FFA500;border-radius:7px; border-style:none;color:#F8F8FF; font-size:10px;">立即预定</button></a>
              </div>
               </div>
                </div>
             
           <div class="row parameter">
            <div class="col-md-2"><img src="${pageContext.request.contextPath}/hotelImg/${hotel.roomimgtwo}" style="width:150;height:110px;" class="img-responsive"></div>
             <div class="col-md-10">
              <div class="row">
               <span class="col-md-4" style="font-size:30px;margin-right:65px;">${hotel.roomtypetwo}</span><span class="col-md-6" style="color:#FF4500;font-size:24px;margin-right:20px;"><span  style="color:#FF4500;font-size:15px;">￥</span>840<span  style="color:#000000;font-size:14px">起</span></span>
                </div>
                 <span style="margin-right:10px;color:#FF4500;">上网</span><span style="margin-right:15px;">宽带</span><span style="margin-right:10px;">|</span>
                   <span style="margin-right:10px;color:#FF4500;">卫浴</span><span style="margin-right:15px;">独立</span><span style="margin-right:10px;">|</span>
                          <span style="margin-right:10px;color:#FF4500;">窗户</span><span style="margin-right:15px;">无</span><span style="margin-right:10px;">|</span> <span style="margin-right:10px;color:#FF4500;">可住</span><span>2人</span>
          <em>床型<span style="margin-left:20px;">单人床1.2x2.0米2张</span></em>
          <div style="margin-top:-30px;"><span style="margin-right:100px;">标准双床房</span><span style="margin-right:50px;">双床</span><span style="margin-right:50px;">无窗户</span><span style="margin-right:50px;">有早餐</span><span>不可取消</span>
          <span style="color:#FF4500;font-size:24px;margin-right:20px" id="span" ><span  style="color:#FF4500;font-size:15px;">￥</span>${hotel.roompricetwo}<span  style="color:#000000;font-size:14px">起</span></span><a href="${pageContext.request.contextPath}/HotelOrder.jsp"><button id="btn" style="width:70px;height:30px;background:#FFA500;border-radius:7px; border-style:none;color:#F8F8FF; font-size:10px;">立即预定</button></a>
          </div>
           </div>
           
             </div>
             
                <div class="row parameter">
          <div class="col-md-2"><img src="${pageContext.request.contextPath}/hotelImg/${hotel.roomimgthree}" style="width:150;height:110px;" class="img-responsive"></div>
           <div class="col-md-10">
            <div class="row">
           <span class="col-md-4" style="font-size:30px;margin-right:65px;">${hotel.roomtypethree}</span><span class="col-md-6" style="color:#FF4500;font-size:24px;margin-right:20px;"><span  style="color:#FF4500;font-size:15px;">￥</span>840<span  style="color:#000000;font-size:14px">起</span></span>
            </div>
            <span style="margin-right:10px;color:#FF4500;">上网</span><span style="margin-right:15px;">宽带</span><span style="margin-right:10px;">|</span>
                   <span style="margin-right:10px;color:#FF4500;">卫浴</span><span style="margin-right:15px;">独立</span><span style="margin-right:10px;">|</span>
                          <span style="margin-right:10px;color:#FF4500;">窗户</span><span style="margin-right:15px;">有</span><span style="margin-right:10px;">|</span> <span style="margin-right:10px;color:#FF4500;">可住</span><span>2人</span>
          <em>床型<span style="margin-left:20px;">单人床1.2x2.0米2张</span></em>
          <div style="margin-top:-30px;"><span style="margin-right:100px;">豪华双床房</span><span style="margin-right:50px;">双床</span><span style="margin-right:50px;">有窗户</span><span style="margin-right:50px;">有早餐</span><span>不可取消</span>
          <span style="color:#FF4500;font-size:24px;margin-right:20px" id="span" ><span  style="color:#FF4500;font-size:15px;">￥</span>${hotel.roompricethree}<span  style="color:#000000;font-size:14px">起</span></span><a href="${pageContext.request.contextPath}/HotelOrder.jsp"><button id="btn" style="width:70px;height:30px;background:#FFA500;border-radius:7px; border-style:none;color:#F8F8FF; font-size:10px;">立即预定</button></a>
          </div>
           </div>
           
             </div>
           <!--  <div class="more"><a href="#"></a></div>
            <div class="clearfix"></div> -->
        </div>
        <div id="house">
        	<div class="tit">酒店详情 <a href="#"></a></div>
            <p>${hotel.hotelinfointro}<p>
            <div class="more"><a href="#"></a></div>
            <div class="clearfix"></div>
        </div>
             <div id="images">
        	<div class="tit">相关图片</div>
            <div class="row">
                <div class="col-md-6 img"><img src="${pageContext.request.contextPath}/hotelImg/${hotel.hotelinfopic2}"></div>
               <div class="col-md-6 img"><img src="${pageContext.request.contextPath}/hotelImg/${hotel.hotelinfopic3}"></div>
              <div class="col-md-6 img"><img src="${pageContext.request.contextPath}/hotelImg/${hotel.hotelinfopic4}"></div>
            <div class="col-md-6 img"><img src="${pageContext.request.contextPath}/hotelImg/${hotel.hotelinfopic5}"></div>
                <div class="col-md-6 img"><img src="${pageContext.request.contextPath}/hotelImg/${hotel.hotelinfopic6}"></div>
               <div class="col-md-6 img"><img src="${pageContext.request.contextPath}/hotelImg/${hotel.hotelinfopic7}"></div>
            </div>
        </div>
        <div id="hotel">
        	<div class="tit">交通位置 <a href="#"></a></div>
            <!--引用百度地图API-->
<style type="text/css">
    html,body{margin:0;padding:0;}
    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
</head>

<body>
  <!--百度地图容器-->
  <div style="width:697px;height:550px;border:#ccc solid 1px;" id="dituContent"></div>
</body>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point('${hotel.mappoint1}','${hotel.mappoint2}');//定义一个中心点坐标
        map.centerAndZoom(point,15);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"'${hotel.title}'",content:"我的备注",point:"'${hotel.point1}'|'${hotel.point2}'",isOpen:0,icon:{w:23,h:25,l:46,t:21,x:9,lb:12}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
			//var iconImg = new BMap.Icon('img.biaoji01.jpg',new BMap.Size(32,32));
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
    
   
    !function(){
    laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
    laydate({elem: '#demo'});//绑定元素
    }();
    
    !function(){
        laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
        laydate({elem: '#dem'});//绑定元素
        }();
   
</script>
            <div class="more"><a href="#"></a></div>
            <div class="clearfix"></div>
        </div>
       <div id="disport">

          <div  class="about col-md-12"style="margin-top:0px;">
          
      <!--       <span class="col-md-2" style="color:#FFA500"><a href="">全部(1030)</a></span>
            <span class="col-md-2" style="color:#FFA500"><a href="">好评(670)</a></span>
            <span class="col-md-2" style="color:#FFA500"><a href="">中评(230)</a></span>
            <span class="col-md-2" style="color:#FFA500"><a href="">差评(130)</a></span> -->
            <ul class="u">
        	<li><a href="?#disport">全部(1030)</a></li>
        	<li><a href="">好评(670)</a></li>
        	<li><a href="">中评(230)</a></li>
        	<li><a href="">差评(130)</a></li>
        	</ul>
        	<hr style="margin-top:50px;color:red;">
            </div>
         <span style="margin-right:20px;">追*风</span><span>2018-07-02</span>
            <p>马尔代夫旅游不能错过的豪华度假村，W岛，宁静岛度假村(W Retreat & Spa)位于North Ari Atoll 亚里北环礁，从马累机场至岛屿有72公里，乘坐水上飞机(Sea Plane)需要30分钟。马尔代夫的W宁静岛采取贴近自然的设计风格，僻静而备受欢迎，W宁静岛度假村是一个私人度假和游乐的高档豪华岛屿酒店，仙境般的白色沙滩，翠绿泻湖和激动人心的珊瑚礁，优美的环境令人忘怀。关爱自己，体验马尔代夫式的生活，在AWAY Spa中心彻底放松，身心焕心。在宁静岛的六所餐厅尝试各种美味佳肴。<p>

                <span><img src="${pageContext.request.contextPath}/img/text.png" style="width:90px;height:90px;"></span>
                <span><img src="${pageContext.request.contextPath}/img/text2.png" style="width:90px;height:90px;" ></span>
                <span><img src="${pageContext.request.contextPath}/img/text3.png" style="width:90px;height:90px;"></span>
                <span><img src="${pageContext.request.contextPath}/img/text.png" style="width:90px;height:90px;"></span>
                <span><img src="${pageContext.request.contextPath}/img/text2.png" style="width:90px;height:90px;"></span>
                <span><img src="${pageContext.request.contextPath}/img/text3.png" style="width:90px;height:90px;"></span>
            
            <div class="more"><a href="#"></a></div>
            <div class="clearfix"></div>
        </div>
        <div id="discount">
        	<div class="tit">相关游记<a href="#"></a></div>
        	<span style="margin-right:10px;color:#FF4500;"><a href="" style="color:#FF4500;">全部</a></span><span style="margin-right:10px;">|</span><span><a href="">精华</a></span>
            <p>本产品暂无相关游记，如果您去过，那就写篇关于这里的游记吧，更重要的是它还能帮你赚钱哦！<p>
            <div class="more"><a href="#"></a></div>
            <div class="clearfix"></div>
        </div>
   
      </div>

    </div>
  </div>
  </c:forEach>
  </c:if>
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
      <div class="col-md-4 col-sm-4 col-xs-12"><a href="#"><img src="${pageContext.request.contextPath}/img/wx_link.png" class="img-responsive"></a></div>
      <div class="col-md-4 col-sm-4 col-xs-12"><a href="#"><img src="${pageContext.request.contextPath}/img/taobao_link.png" class="img-responsive"></a></div>
      <div class="col-md-4 col-sm-4 col-xs-12"><a href="#"><img src="${pageContext.request.contextPath}/img/wb_link.png" class="img-responsive"></a></div>
    </div>
    <div class="copyright col-md-12">
      <p>版权所有：人和假期旅游咨询   咨询电话：15611549285 传真：010-66094197</p>
      <p>北京西城区复兴门内大街45号 4号楼101室 邮编：100801   备案专政号 京IPC备1300362号</p>
    </div>
  </div>
</div>
<script src="js/jquery.min.js"></script> 
<script src="js/bootstrap.min.js"></script>
</body>
</html>
