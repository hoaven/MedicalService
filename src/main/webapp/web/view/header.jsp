<!--指定jsp文件编码 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!--头部文件 -->
<header>
	<div class="navigation">
		<div class="row">
			<div class="col-md-2">
				<a href="${pageContext.request.contextPath}">
					<div class="nav1 active">首页</div>
				</a>
			</div>
			<div class="col-md-2">
				<a href="#">
					<div class="nav1">挂号预约</div>
				</a>
			</div>
			<div class="col-md-2">
				<a href="${pageContext.request.contextPath}/web/view/forum1.jsp">
					<div class="nav1">在线咨询</div>
				</a>
			</div>
			<div class="col-md-2">
				<a href="#" onclick="tip()"> <a
					href="${pageContext.request.contextPath}/assess/testlogin.do">
						<div class="nav1">评价医生</div>
				</a>
				</a>
			</div>
			<div class="col-md-2">
				<a href="#">
					<div class="nav1">医患调节</div>
				</a>
			</div>
			<div class="col-md-2">

				<c:if test="${empty user}">
					<div class="button">
						<a href="${pageContext.request.contextPath}/web/view/ulogin.jsp"
							class="btn btn-info">用户登录</a> <a
							href="${pageContext.request.contextPath}/web/view/dlogin.jsp"
							class="btn btn-info">医生登录</a>
					</div>
				</c:if>
				<c:if test="${not empty user}"> 
  				  欢迎您 : ${user.username}<button>
						<a href="${pageContext.request.contextPath}/login/lout.do">退出</a>
					</button>
				</c:if>
			</div>

		</div>
	</div>
</header>