<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册用户</title>
</head>
<body>
	<s:form action="reg" validate="true">
		<s:textfield name="user.username" label="用户名"/>
		<s:password name="user.password" label="密码"/>
		<s:select label="性别" name="user.gender"
		list="#{'1':'男','0':'女' }"
		listKey="key"
		listValue="value" value="0"/>
		<s:textfield name="user.birthDate" label="出生日期"/>
		<s:textfield name="user.tel" label="联系电话"/>
		<s:textfield name="user.email" label="Email"/>
		<s:textfield name="user.url" label="个人首页"/>
		<s:submit value="提交"/>
	</s:form>
</body>
</html>