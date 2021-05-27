<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="keywords" content="洛阳，旅游，旅游景点信息,旅游资讯" />
<meta name="description" content="洛阳旅游网，旅游，旅游景点，旅游资讯" />
<title>服务 - 洛阳旅游</title>
<link rel="Bookmark" href="favicon.ico">
<link rel="Shortcut Icon" href="favicon.ico" />
<link rel="stylesheet" type="text/css" href="public/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="public/css/bootstrap-theme.css" />
<link rel="stylesheet" type="text/css" href="public/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="public/css/travel/index.css" />

<style type="text/css">
	.server-page {
		margin-top: 30px;
		margin-bottom: 50px;
	}
</style>
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
			<div class="container-fluid">
				<div class="row">

					<img src="public/img/夜景.jpg" class="img-responsive" style="margin-top: 45px; " />
				</div>
			</div>

			<!-- 服务主题页-->
			<div class="container server-page">

				<div class="row">
					<div class="col-md-8 msg">
						<h4 class="text-center">留言给我们</h4>

						<form id="msg-form" method="post" action="MsgAdd">
							<div class="col-md-12">

								<div class="form-group col-md-9 col-md-offset-1">
									<label for="name">Enter your name:</label>
									<input type="text" class="form-control" id="author" name="author" placeholder="Enter your name:" required="required">
								</div>

								<div class="form-group col-md-9 col-md-offset-1">
									<label for="email">Email your email:</label>
									<input type="email" class="form-control" id="email" name="email" placeholder="Enter your email:" required>
								</div>

								<div class="form-group col-md-9 col-md-offset-1">
									<label for="msg">Your message here:</label>
									<textarea id="msg_text" class="form-control" rows="3" name="msg_text"  placeholder="Enter Your message:"  required></textarea>
								</div>
								<div class="form-group col-md-9 col-md-offset-1 text-center">
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
							</div>
						</form>
					</div>

					<div class="col-sm-4">
						<div class="about">							 
							<blockquote>About</blockquote>
							<p>
														
       						随着文旅产业的高速发展，智慧旅游建设全面推进，青城山旅游网应用而生。
							青城山旅游网是集景点展示、资讯展示以及用户反馈于一体的展示型微观网，基于HTML5的响应式设计。
							</p>
						</div>
						
						<div class="about">							 
							<blockquote>Contact</blockquote>
							<dl class="dl-horizontal">
							  <dt>电话：</dt>
							  <dd>17761415924</dd>
							</dl>
							<dl class="dl-horizontal">
							  <dt>邮箱：</dt>
							  <dd>zhouxiongy@qq.com</dd>
							</dl>
							<dl class="dl-horizontal">
							  <dt>地址：</dt>
							  <dd>青城山</dd>
							</dl>
							
							
						</div>
					</div>
				</div>
			</div>
			<!-- 主题页结束-->

			<!-- 底部版权声明 -->
			<%@ include file="include/footer.jsp" %>
			<!-- 版权结束-->

		</div>
		<!-- 全页结束-->
	</body>

	<script src="public/js/jquery-3.1.1.js" type="text/javascript" charset="utf-8"></script>
	<script src="public/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
	<script src="public/js/back-top.js" type="text/javascript" charset="UTF-8"></script>

</html>