<%@ page contentType="text/html; charset=gb2312" %>
<%@ taglib uri="/struts-bean" prefix="bean" %>
<%@ taglib uri="/struts-html" prefix="html" %>
<jsp:useBean id="JSONRPCBridge" scope="session" class="com.metaparadigm.jsonrpc.JSONRPCBridge"/>
<jsp:useBean id="ajax" class="com.base.AjaxBean"></jsp:useBean>
<%
	JSONRPCBridge.registerObject("ajax",ajax);
%>
<html>
<head>
<title></title>
<link href="CSS/stylesheet.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="JS/jsonrpc.js"></script>
</head>
<body class="body">
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
	<td height="197" background="images/fg_top.jpg"></td>
  </tr>
</table>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="border:1px; border-style:solid; border-color:#888888">
  <tr>
    <td width="20">&nbsp;</td>
    <TD height="50" align="right" valign="bottom">
		<IMG src="images/icon_login.gif" align=absMiddle> 
		<INPUT id="qKey" name="qKey" value="ˮ���ؼ���" onClick="this.value=''"> 
		<SELECT id="category" name="category">
			<option value="0">����ˮ��</option>
		</SELECT>
		<A href="javascript:QuickSearch()"><IMG src="images/icon_search.gif" align="absMiddle" border="0"></A>
    </TD>
    <td width="20">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>
	<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TR align="center">
          <TD valign="top" width="9"><IMG src="images/icon02.gif"></TD>
          <TD class="header_menu" align="middle">
		  	<A href="mer.do?method=browseIndexMer"><span class="whiteTitle"><bean:message key="menu.item1"/></span></A>
		  </TD>
		  
          <TD background="images/Bule_06.gif" width="2"></TD>
          <TD class="header_menu" align="middle">
		  	<A href="gsjj.jsp"><span class="whiteTitle">��վ���</span></A>
		  </TD>		  
		  
          <TD background="images/Bule_06.gif" width="2"></TD>
          <TD class="header_menu" align="middle">
		  	<A href="cart.do?method=browseCart"><span class="whiteTitle"><bean:message key="menu.item2"/></span></A>
		  </TD>
          <TD background="images/Bule_06.gif" width="2"></TD>
          <TD class="header_menu" align="middle">
		  	<A href="order.do?method=browseOrder"><span class="whiteTitle"><bean:message key="menu.item3"/></span></A>
		  </TD>
          <TD background="images/Bule_06.gif" width="2"></TD>
          <TD class="header_menu" align="middle">
		  	<A href="mem.do?method=browseWord"><span class="whiteTitle"><bean:message key="menu.item4"/></span></A>
		  </TD>
          <TD background="images/Bule_06.gif" width="2"></TD>
          <TD class="header_menu" align="middle">
		  	<A href="mem.do?method=loadMember"><span class="whiteTitle"><bean:message key="menu.item5"/></span></A>
		  </TD>
          <TD vAlign=top width=7><IMG src="images/icon07.gif"></TD>
        </TR>
    </TABLE></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>
    <html:javascript formName="memberForm"/>
	<html:form action="/mem.do?method=reg" style="margin:0px;" onsubmit="return validateMemberForm(this);">
		<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
		  <tr>
			<td height="80" >��վ���</td>
			</tr>
		  <tr bgcolor="#F7F3F7">
			<td height="26">&nbsp;&nbsp;&nbsp;&nbsp;����վ��ӭ���Ĺ��٣�
			</td>
		  </tr>
		  <tr bgcolor="#F7F3F7">
			<td height="26">&nbsp;&nbsp;&nbsp;&nbsp;��վʼ�ձ��С��ﳬ��ֵ��������ڡ�����ּ�������Ƴ³��¡�
			</td>
		  </tr>
		  <tr bgcolor="#F7F3F7">
			<td height="26">
&nbsp;&nbsp;&nbsp;&nbsp;��2009����������˾�Ⱥ��������ֲ�����ֵȶ������ҵ��

			</td>
		  </tr>
		  <tr bgcolor="#F7F3F7">
			<td height="26"></td>
		  </tr>
		  <tr bgcolor="#F7F3F7">
			<td height="26">&nbsp;&nbsp;&nbsp;&nbsp;��ַ���ٻ���·12��</td>
		  </tr>
		  <tr bgcolor="#F7F3F7">
			<td height="26"></td>
		  </tr>
		  <tr bgcolor="#F7F3F7">
			<td height="26"> &nbsp;&nbsp;&nbsp;&nbsp;���ذ�����:400 818 5566
			</td>
		  </tr>
		  <tr bgcolor="#F7F3F7">
			<td height="26"></td>
		  </tr>
		  <tr bgcolor="#F7F3F7">
			<td height="26"> 
&nbsp;&nbsp;&nbsp;&nbsp;��һ�����գ�9:00-18:00
			</td>
		  </tr>
		  <tr>
			<td height="40" colspan="2" align="center">
				<br>
				<span class="redText"></span>
			</td>
		  </tr>
		</table>
	</html:form>              	
	</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="30">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="30" bgcolor="green" class="whiteText" align="center">
		<bean:message key="website.foot"/>	</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

</body>
</html>