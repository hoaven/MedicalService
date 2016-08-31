<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<link
	href="${pageContext.request.contextPath}/web/style/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/web/style/css/evaluate.css"
	rel="stylesheet" type="text/css" />
<title>评价医生</title>
</head>
<body>
	<div class="container">
		<div id="header">
			<div class="row">
				<div class="col-md-2 col-md-push-1">
					<img src="a.png">
				</div>
				<div class="col-md-8">
					<h1 id="title">患者评价</h1>
				</div>
			</div>
		</div>
		<div id="content">
			<div class="row">
				<div class="col-md-10 col-md-push-1">
					<div id="main" class="row">
						<div id="left" class="col-md-6">
							<form action="" method="get"
								class="form form-horizontal responsive">
								<img src="b.png">
								<div class="row ">
									<label class="form-label col-md-8 col-md-push-2">姓名:${assessdoctor.realname}</label>
									<label class="form-label col-md-8 col-md-push-2">资历:${assessdoctor.career}</label>
									<label class="form-label col-md-8 col-md-push-2">科系:${assessdepartment.name}</label>
									<label class="form-label col-md-8 col-md-push-2">人气值:${assessdoctor.popularynum}</label>
								</div>
							</form>
						</div>
						<div id="right" class="col-md-6">
							<form action="" method="get"
								class="form form-horizontal responsive">
								<h2 id="tit">医疗机构专用处方</h2>
								<div class="row ">
									<label class="form-label col-md-6">姓名:${assessuser.realname}</label>
									<label class="form-label col-md-6">性别:<c:if
											test="${assessuser.sex == 0}">男</c:if> <c:if
											test="${assessuser.sex == 1}">女</c:if></label> <label
										class="form-label col-md-6">年龄:${assessuser.age}</label> <label
										class="form-label col-md-6">科别::${assessdepartment.name}</label>
									<label class="form-label col-md-12">地址:${assessuser.address}</label>
									<label class="form-label col-md-12">诊断：${assesshistory.diagnosiscontent}</label>
									<label class="form-label col-md-12">处方：${assesshistory.prescription}</label>
									<label class="form-label col-md-4  col-md-push-4 rig">医师:${assessdoctor.realname}</label>
									<label class="form-label col-md-4 col-md-push-4  rig">日期:${assesshistory.diagnosistime}</label>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="bottom">
			<div class="row">
				<div id="bot" class="col-md-8 col-md-push-2">
					<form action="" method="get"
						class="form form-horizontal responsive">
						<label class="form-label col-md-12">服务态度：</label> <label
							class="form-label col-md-12">就诊功能：</label> <label
							class="form-label col-md-12">就诊实惠：</label> <label
							class="form-label col-md-12">患者建议 </label> <input id="text"
							type="text">
						<button type="button" class="btn btn-danger">
							提交
							<button type="button" class="btn btn-danger">重置
				</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>