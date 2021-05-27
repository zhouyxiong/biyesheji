	<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="com.trav.cms.user.domain.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
	<meta name="keywords" content="，旅游，旅游景点信息,旅游资讯，管理, 后台" />
	<meta name="description" content="旅游网，旅游，旅游景点，旅游资讯" />
	<link rel="Bookmark" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="Shortcut Icon" href="${pageContext.request.contextPath}/favicon.ico" />
	<link href="css/H-ui.css" rel="stylesheet" type="text/css" />
	<link href="css/H-ui.admin.css" rel="stylesheet" type="text/css" />
	<link type="text/css" rel="stylesheet" href="font/font-awesome.min.css" />
	<title>管理 - 旅游</title>
	</head>

	<body style="overflow:hidden">
	<!-- 登录失效后，返回重新登录 -->
	<%
	Object obj=session.getAttribute("userinfo");
	if(obj==null){
		response.sendRedirect("login.jsp");
		return;
	} %>
	   <header class="Hui-header cl">
				<a class="Hui-logo l" href="/travel" target="_blank"> 
					<img src="images/header_logo1.png" height="38px" />
				</a>
				<a class="Hui-logo l" title="网站主页" target="_blank" href="/travel">网站首页</a>
				
				<span class="Hui-userbox"><span class="c-white">管理员：<font color="red">${sessionScope.userinfo[0]}</font></span>
			<a class="btn btn-danger radius ml-10" href="login.jsp" title="退出" onclick="return confirm('确定退出吗？');"><i class="icon-off"></i>退出</a>
			</span>
			<a aria-hidden="false" class="Hui-nav-toggle" id="nav-toggle" href="#"></a>
		</header>
		<div class="cl Hui-main">
			<aside class="Hui-aside" style="">
				<input runat="server" id="divScrollValue" type="hidden" value="" />
				<div class="menu_dropdown bk_2">
					<dl id="menu-user">
						<dt><i class="icon-user"></i> 用户中心<b></b></dt>
						<dd>
							<ul>
								<li>
									<a _href="admin-edit.jsp?userid=${sessionScope.userinfo[1]}" href="javascript:;">个人信息编辑</a>
								</li>
								
								<li>
									<a title='修改密码'  _href="pwd-edit.jsp?userid=${sessionScope.userinfo[1]}" href="javascript:;">密码修改</a>
								</li>
							</ul>
						</dd>
					</dl>
					
						<dl id="menu-product">
						<dt><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera" viewBox="0 0 16 16">
							  <path d="M15 12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h1.172a3 3 0 0 0 2.12-.879l.83-.828A1 1 0 0 1 6.827 3h2.344a1 1 0 0 1 .707.293l.828.828A3 3 0 0 0 12.828 5H14a1 1 0 0 1 1 1v6zM2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2z"/>
							  <path d="M8 11a2.5 2.5 0 1 1 0-5 2.5 2.5 0 0 1 0 5zm0 1a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM3 6.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0z"/>
							</svg> 景点管理<b></b></dt>
						<dd>
							<ul>
								<li>
									<a _href=scen-list.jsp" href="javascript:void(0)">景点列表</a>
								</li>
								
							</ul>
						</dd>
					</dl>

					
					<dl id="menu-article">
						<dt><i class="icon-edit"></i> 资讯管理<b></b></dt>
						<dd>
							<ul>
								<li>
									<a _href="info-list.jsp" href="javascript:void(0)">资讯管理</a>
								</li>
							</ul>
						</dd>
					</dl>
					<dl id="menu-picture">
						<dt><i class="icon-picture"></i> 图片库<b></b></dt>
						<dd>
							<ul>
								<li>
									<a _href="${pageContext.request.contextPath}/admin/BannerList" href="javascript:void(0)">轮播图</a>
								</li>
								<li>
									<a _href=scen-list.jsp" href="javascript:void(0)">景区图</a>
								</li>
								<li>
									<a _href="info-list.jsp" href="javascript:void(0)">资讯图</a>
								</li>
							</ul>
						</dd>
					</dl>

				
					<dl id="menu-comments">
						<dt><i class="icon-comments"></i> 留言中心<b></b></dt>
						<dd>
							<ul>
								<li>
									<a _href="msg-list.jsp" href="javascript:;">留言列表</a>
								</li>
							</ul>
						</dd>
					</dl>

					<dl id="menu-admin">
						<dt><i class="icon-key"></i> 管理员管理<b></b></dt>
						<dd>
							<ul>
								<li>
									<a _href="admin-list.jsp" href="javascript:void(0)">管理员列表</a>
								</li>
								 
							</ul>
						</dd>
					</dl>
					<dl id="menu-system">
						<dt><i class="icon-cogs"></i> 系统管理<b></b></dt>
						<dd>
							<ul>
								<li>
									<a _href="system-base.html" href="javascript:void(0)">基本设置</a>
								</li>							
							</ul>
						</dd>
					</dl>
				</div>
			</aside>
			<div class="dislpayArrow">
				<a class="pngfix" href="javascript:void(0);"></a>
			</div>
			<section class="Hui-article">
				<div id="Hui-tabNav" class="Hui-tabNav">
					<div class="Hui-tabNav-wp">
						<ul id="min_title_list" class="acrossTab cl">
							<li class="active"><span title="我的桌面" data-href="welcome.html">我的桌面</span><em></em></li>
						</ul>
					</div>
					<div class="Hui-tabNav-more btn-group">
						<a id="js-tabNav-prev" class="btn radius btn-default btn-small" href="javascript:;"><i class="icon-step-backward"></i></a>
						<a id="js-tabNav-next" class="btn radius btn-default btn-small" href="javascript:;"><i class="icon-step-forward"></i></a>
					</div>
				</div>
				<div id="iframe_box" class="Hui-articlebox">
					<div class="show_iframe">
						<div style="display:none" class="loading"></div>
						<iframe scrolling="yes" frameborder="0" src="welcome.html"></iframe>
					</div>
				</div>
			</section>
		</div>	x
		</body>
		 
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>
<script type="text/javascript" src="layer/layer.min.js"></script>
<script type="text/javascript" src="js/H-ui.js"></script>
<script type="text/javascript" src="js/H-ui.admin.js"></script>
<script type="text/javascript">

function close(){
	<%session.removeAttribute("username");%>			
}
</script>
</html>