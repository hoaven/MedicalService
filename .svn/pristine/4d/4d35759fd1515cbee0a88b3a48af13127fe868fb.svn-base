<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
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

	<%@include file="/web/view/header.jsp"%>

	<div style="width: 100%;">
		<form
			action="${pageContext.request.contextPath}/register/uregister.do"
			method="post" class="form form-horizontal responsive" id="demoform">
			<h2>用户注册</h2>
			<div class="row cl">
				<label class="form-label col-2">用户名：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text"
						placeholder="4~16个字符，字母/中文/数字/下划线" name="username" id="username"
						datatype="*4-16" nullmsg="用户名不能为空">
				</div>
				<div class="col-5"></div>
			</div>

			<div class="row cl">
				<label class="form-label col-2">密码：</label>
				<div class="formControls col-5">
					<input type="password" class="input-text" autocomplete="off"
						placeholder="密码" name="password" id="password" datatype="*6-18"
						nullmsg="请输入密码！">
				</div>
				<div class="col-5"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-2">密码验证：</label>
				<div class="formControls col-5">
					<input type="password" class="input-text" autocomplete="off"
						placeholder="密码" name="password2" id="password2"
						recheck="password" datatype="*6-18" nullmsg="请再输入一次密码！"
						errormsg="您两次输入的密码不一致！">
				</div>
				<div class="col-5"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-2">邮箱：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" placeholder="@" name="email"
						id="email" datatype="e" nullmsg="请输入邮箱！">
				</div>
				<div class="col-5"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-2">真实姓名：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" placeholder="请输入真实姓名"
						name="realname" id=""realname"">
				</div>
				<div class="col-5"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-2">电话：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" placeholder="请输入电话或手机"
						name="telephone" id="telephone">
				</div>
				<div class="col-5"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-2">年龄：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" placeholder="请输入年龄"
						name="age" id="age">
				</div>
				<div class="col-5"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-2">单选框：</label>
				<div class="formControls skin-minimal col-5">
					<div class="radio-box">
						<input type="radio" id="sex-1" name="sex" value="0"
							nullmsg="请选择性别！"> <label for="sex-1">男</label>
					</div>
					<div class="radio-box">
						<input type="radio" id="sex-2" name="sex" value="1"> <label
							for="sex-2">女</label>
					</div>

				</div>
				<div class="col-5"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-2">住址：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" placeholder="请输入您的家庭住址"
						name="address" id="address">
				</div>
				<div class="col-5"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-4"></label>
				<div class="formControls col-4">
					<input type="submit" class="btn btn-primary radius" value="注册">
					<input type="reset" class="btn btn-primary radius" value="取消">
				</div>
				<div class="col-4"></div>
			</div>

		</form>

	</div>
	<!--底部文件 -->
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