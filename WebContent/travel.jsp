<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
	<meta name="keywords" content="，旅游，旅游景点信息,旅游资讯" />
	<meta name="description" content="旅游网，旅游，旅游景点，旅游资讯" />
	<title>畅游 - 旅游网</title>
	<link rel="Bookmark" href="favicon.ico">
	<link rel="Shortcut Icon" href="favicon.ico" />
	<link rel="stylesheet" type="text/css" href="public/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="public/css/bootstrap-theme.css" />
	<link rel="stylesheet" type="text/css" href="public/css/travel/index.css" />
	<link rel="stylesheet" type="text/css" href="public/css/banner-style.css" media="screen" />
	<!-- jQuery Paradigm Slider  -->
	<link rel="stylesheet" type="text/css" href="public/css/settings.css" media="screen" />
	<!-- FONT IMPORT -->
	<!-- <link rel='stylesheet' type='text/css' href='public/css/css.css'> -->
	<link type="text/css" rel="stylesheet" href="public/css/scen-ban.css" />
</head>

<body>

	<div class="page">
	
		 <!-- 头部导航 NAV-->
				<header class="">
			<nav class="navbar navbar-default navbar-fixed-top">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span><span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<!--LOGO-->
						<a class="navbar-brand" href="index.jsp" style="padding: 0px;"> 
							<img src="public/img/header_logo1.png"  alt="无法显示"  height="50px" />
						</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.jsp">首页 <span
									class="sr-only">(current)</span></a></li>
							
							<li><a href="travel.jsp">热门资讯</a></li>
							<li><a href="info.jsp">历史与文化</a></li>
						</ul>
						
						<!-- 全站搜索 -->
						<form class="navbar-form navbar-left" role="search" action="http://zhannei.baidu.com/cse/search" method="get" target="_blank" class="bdcs-search-form" autocomplete="off" id="bdcs-search-form">
							<div class="form-group">
								<input type="hidden" name="s" value="4106996640374743104">
								<input type="hidden" name="entry" value="1">
								<input type="search" name="q" class="bdcs-search-form-input form-control" id="bdcs-search-form-input" placeholder="请输入关键词" autocomplete="off" style="height: 34px; line-height: 34px;">					 
							</div>
							<button type="submit" class="btn btn-success">搜索</button>
						</form>

						<ul class="nav navbar-nav navbar-right">
							<li><a href="server.jsp">服务</a></li>
						</ul>
						&nbsp;
						<!-- 天气预报插件-->
						<iframe width="300" height="25" src="https://i.tianqi.com/?c=code&
						a=getcode&id=10&py=dujiangyan&icon=1" frameborder="0"></iframe>
				
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>
		<!-- 导航结束 -->
		 
			<!-- 景点-->
			<div class="container-fluid travel-scen">
				<div class="row">
					<div class="col-md-12">
						<div class="container">
							<section class="cntr">
								<div class="cntr mt20">
									<ul class="pgwSlideshow">
										<li><img src="image/scen/景点1.jpg" alt="青城山景点"/></li>
										<li><img src="image/scen/景点2.jpg" alt="青城山后山美景" height="300px"/></li>
										<li><img src="image/scen/景点3.jpg" alt="醉美黄金旅游走廊" height="300px"/></li>
										<li><img src="image/scen/景点4.jpg" alt="美好的青城山之旅" height="300px"/></li>
										<li><img src="image/scen/景点9.jpg" alt="青城山五行仙谷汤池" height="300px"/></li>
										<li><img src="image/scen/景点10.jpg" alt="青城水立方漂流" height="300px"/></li>
										<li><img src="image/scen/景点11.jpg" alt="青城山景点" height="300px"/></li>
										<li><img src="image/scen/景点12.jpg" alt="都江堰" height="300px"/></li>
									</ul>
								</div>
							</section>
							<!-- THE END OF THE BANNER EXMAPLE -->
						</div>
					</div>
				</div>
			</div>


			<img src="public/img/hot-info.png" class="center-block" />

			<!-- 景点列表-->
			<div class="container scen-list">
				<div class="row">
					<div id="slide" class="col-md-12 col-sm-12 col-xs-12">
					</div>
				</div>
				 <p class="center-block text-center more">
					<a class="btn btn-primary load-more" role="button">加载更多 »</a>
				</p>
			</div>

		
			<!-- 结束-->

			<!-- /.page -->

			<!-- 底部版权声明 -->
			<%@ include file="include/footer.jsp" %>

			<!-- 返回顶部-->
			<div class="back-top">
				<a href="javascript:;" class="top-button">
					<img src="public/img/top-arrow.png" class="top-img" title="返回顶部" />
				</a>
			</div>
			<!-- 返回顶部END-->

		</div>
		<!-- 整页结束-->
</body>

<script src="public/js/jquery-3.1.1.js" type="text/javascript" charset="utf-8"></script>
<script src="public/js/jquery-banner.min.js" type="text/javascript"></script>
<script src="public/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="public/js/back-top.js" type="text/javascript"></script>
<script>
$(function(){

	/*初始化*/
	var counter = 0; /*计数器*/
	var pageStart = 0; /*offset*/
	var pageSize = 4; /*size*/
	
	/*首次加载*/
	getData(pageStart, pageSize);
	
	/*监听加载更多*/
	 	 $(".load-more").click(function(){
	 		//console.log("load more");
	    	counter ++;
			pageStart = counter * pageSize;		
			getData(pageStart, pageSize);
	    });
	function getData(offset,size){
		$.ajax({
			type: 'POST',
			url: 'ScenShow'+ '?' +'offset=' +offset + '&size=' + size, //这里offset,size无作用，仅方便调试
			dataType: 'json',
			success: function(scens){
				/* 每次读取数据个数 */
				sum=scens.length;
				/* 实现页面的拼接 */
				var result = '';
 				console.log("offset:"+offset ,"size:"+ size, "sum:"+sum);			 
				/*******************************************/
				/*隐藏more*/
				if (sum <= 0){
					$(".load-more").hide();
				}else{
					$(".load-more").show();
				 $.each(scens,function(index,scen){
					 console.log(index,scen);
 
					result +='<div class="col-md-3 col-sm-6 col-xs-6 scen">'+
							'<div class="thumbnail"><h6 id="" class="travel travel-title">'+scen.scenname+'</h6>'+
							'<a href="scens.jsp?scenid='+scen.scenid+'" target="_blank" class="scens-a">'+
							'<img class="scen-img" src="'+scen.scenpic+'"/></a>'+
							'<h6 id="" class="travel travel-level">星级:'+ scen.scenlevel +'</h6>'+
							'<p id="" class="travel travel-add">位于:'+ scen.scenadd +'</p>'+
						'</div></div>';	
				 
				 });
				/* 将新读取的页面拼接到页面 */
				$('#slide').append(result);
				}
			},
			error: function(xhr, type){
				alert('Ajax error!');
			}
		});
	}
});
</script>
</html>