<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="com.ORM.Admin" %>
<%
	//���û�е�¼����ת����¼ҳ��
	Admin admin = (Admin)session.getAttribute("Admin");
	if (admin ==null) {
%>
	<jsp:forward page="/Admin/adminLogin.jsp"/>
<%}%>