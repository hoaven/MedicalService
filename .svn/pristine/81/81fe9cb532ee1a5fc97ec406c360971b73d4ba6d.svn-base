<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>医院服务 | 主页</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<link
	href="${pageContext.request.contextPath}/web/style/css/bootstrap.min.css"
	type="text/css" rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/web/style/css/bootstrap-responsive.min.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/web/style/css/model.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/web/style/css/home.css"
	type="text/css" rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/web/style/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/web/style/js/bootstrap.min.js"></script>
</head>

<body>
	<!-- 响应的消息 -->
	${message}
  <div class="contain">

	<%@include file="/web/view/header.jsp"%>
	
	<!--图片，这张图片只在首页显示 -->
	<div class="top-img">
		<img src="${pageContext.request.contextPath }/web/style/images/1.png"
			width="100%">
	</div>

	<!-- 主体内容 -->
	<div class="main-content">
		<div class="top-content">
			<div class="topleft">
				<img
					src="${pageContext.request.contextPath }/web/style/images/7.png"
					width="100%">
				<ul class="news">
					<c:forEach items="${ns1}" var="n1" begin="0" end="9">
						<li style="overflow: hidden;"><a href="${n1.url}"
							class="title" target="_blank"><span class="text-info">${n1.newstitle}</span></a>
							<time>--<fmt:formatDate value="${n1.releasetime}" /></time></li>
					</c:forEach>
				</ul>
				<div class="more">
					<a href="#"><span class="text-success">更多>></span></a>
				</div>
			</div>
			<div class="topright">
				<div class="text1">
					<span>人</span><span>气</span><span>之</span><span>星</span>
				</div>
				<div class="popstar">
					<ul class="num1">
						<li><h3>
								No.1 <a href="#"><span class="name"> 张三</span> <span
									class="grade"> 99.5分</span></a>
							</h3></li>
						<li><h4>
								No.2 <a href="#"><span class="name"> 李四</span> <span
									class="grade"> 92分</span></a>
							</h4></li>
						<li><h4>
								No.3 <a href="#"><span class="name"> 李四</span> <span
									class="grade"> 92分</span></a>
							</h4></li>
						<li><h4>
								No.4 <a href="#"><span class="name"> 李四</span> <span
									class="grade"> 92分</span></a>
							</h4></li>
						<li><h4>
								No.5 <a href="#"><span class="name"> 李四</span> <span
									class="grade"> 92分</span></a>
							</h4></li>
					</ul>
					<div class="more">
						<a href="#" class="btn btn-info btn-sm">更多>></a>
					</div>
				</div>
			</div>
		</div>
		<div class="bottom-content">
			<!--医疗政策-->
			<div class="bottomleft">
				<img
					src="${pageContext.request.contextPath }/web/style/images/15.png"
					width="100%">
				<ul>
					<c:forEach items="${ns2}" var="n2" begin="0" end="7">
						<li><a href="${n2.url}" class="title" target="_blank"><span
								class="text-info">${n2.newstitle}</span></a></li>
					</c:forEach>
				</ul>
				<div class="more">
					<a href="#" class="btn btn-success btn-sm">更多>></a>
				</div>
			</div>
			<!--热点话题-->
			<div class="bottomcenter">
				<img
					src="${pageContext.request.contextPath }/web/style/images/21.png"
					width="100%">
				<ul>
					<c:forEach items="${ns3}" var="n3" begin="0" end="7">
						<li><a href="${n3.url}" class="title" target="_blank"><span
								class="text-info">${n3.newstitle}</span></a></li>
					</c:forEach>
				</ul>
				<div class="more">
					<a href="#" class="btn btn-success btn-sm">更多>></a>
				</div>
			</div>
			<!--活跃之星-->

			<div class="bottomright">
				<div class="text1">
					<span>活</span><span>跃</span><span>之</span><span>星</span>
				</div>
				<div class="actstar">
					<ul class="num1">
						<li><h3>
								No.1 <a href="#"><span class="name"> 张三</span> <span
									class="grade"> 99.5分</span></a>
							</h3></li>
						<li><h4>
								No.2 <a href="#"><span class="name"> 李四</span> <span
									class="grade"> 92分</span></a>
							</h4></li>
						<li><h4>
								No.3 <a href="#"><span class="name"> 李四</span> <span
									class="grade"> 92分</span></a>
							</h4></li>
						<li><h4>
								No.4 <a href="#"><span class="name"> 李四</span> <span
									class="grade"> 92分</span></a>
							</h4></li>
						<li><h4>
								No.5 <a href="#"><span class="name"> 李四</span> <span
									class="grade"> 92分</span></a>
							</h4></li>
					</ul>
					<div class="more">
						<a href="#" class="btn btn-info btn-sm">更多>>></a>
					</div>
				</div>
			</div>
		</div>
		
	</div>
</body>
</html>