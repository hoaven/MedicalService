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



<script type="text/javascript"
	src="${pageContext.request.contextPath}/web/style/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/web/style/js/bootstrap.min.js"></script>
<link
	href="${pageContext.request.contextPath}/web/style/h-ui/css/H-ui.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/web/style/h-ui/css/style.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/web/style/h-ui/lib/icheck/icheck.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/web/style/h-ui/lib/bootstrapSwitch/bootstrapSwitch.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/web/style/h-ui/lib/font-awesome/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<!--[if IE 7]>
<link href="lib/font-awesome/font-awesome-ie7.min.css" rel="stylesheet" type="text/css" />
<![endif]-->
<link
	href="${pageContext.request.contextPath}/web/style/h-ui/lib/iconfont/iconfont.css"
	rel="stylesheet" type="text/css" />
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
</head>

<body>
	<!-- 响应的消息 -->
	${message}
	
	<%@include file="/web/view/header.jsp"%>

	<div style="" style="width:100%; height:560px;">
		<form action="${pageContext.request.contextPath}/assess/tipinput.do"
			method="post" class="form form-horizontal responsive" id="demoform">
			<h2 style="text-align:center">请输入您挂号的号码</h2>
			<div class="row cl">
				<label class="form-label col-2">挂号号码：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text"
						placeholder="请输入您挂号的号码" name="tip" id=tip
						datatype="*4-16" nullmsg="挂号号码不能为空">
				</div>
				<div class="col-5"></div>
			</div>
			<div class="row cl">
				<div class="formControls col-4"></div>
				<div class="formControls col-4">
					<button class="btn btn-primary radius" type="submit" id="login">确定</button>

					<button class="btn btn-primary radius" type="reset">取消</button>


				</div>
				<div class="formControls col-4"></div>
			</div>
	</div>
	</form>
	</div>
	
	<%@include file="/web/view/footer.jsp"%>
	
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/web/style/h-ui/lib/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/web/style/h-ui/lib/layer1.8/layer.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/web/style/h-ui/lib/laypage/laypage.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/web/style/h-ui/lib/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/web/style/h-ui/lib/icheck/jquery.icheck.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/web/style/h-ui/lib/bootstrapSwitch/bootstrapSwitch.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/web/style/h-ui/lib/Validform_v5.3.2.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/web/style/h-ui/lib/passwordStrength-min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/web/style/h-ui/js/H-ui.js"></script>
	<script>
		$(function() {
			$('.skin-minimal input').iCheck({
				checkboxClass : 'icheckbox-blue',
				radioClass : 'iradio-blue',
				increaseArea : '20%'
			});
			$("#demoform").Validform({
				tiptype : 2
			});
		});
	</script>
</body>
</html>