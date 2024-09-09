<%@ page contentType="text/html; charset=gb2312" %>
<%@ taglib uri="/struts-bean" prefix="bean" %>
<%@ taglib uri="/struts-html" prefix="html" %>
<%@ taglib uri="/struts-logic" prefix="logic" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<A href="javascript:QuickSearch()"><IMG src="images/icon_search.gif" align="absMiddle" border="0"></A>    </TD>
    <td width="20">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>
	<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TR align="center">
          <TD valign="top" width="9"><IMG src="images/icon02.gif"></TD>
          <TD class="header_menu" align="middle">
		  	<A href="mer.do?method=browseIndexMer"><span class="whiteTitle"><bean:message key="menu.item1"/></span></A>		  </TD>
		  	
          <TD background="images/Bule_06.gif" width="2"></TD>
          <TD class="header_menu" align="middle">
		  	<A href="gsjj.jsp"><span class="whiteTitle">��վ���</span></A>
		  </TD>			  	
		  	
          <TD background="images/Bule_06.gif" width="2"></TD>
          <TD class="header_menu" align="middle">
		  	<A href="cart.do?method=browseCart"><span class="whiteTitle"><bean:message key="menu.item2"/></span></A>		  </TD>
          <TD background="images/Bule_06.gif" width="2"></TD>
          <TD class="header_menu" align="middle">
		  	<A href="order.do?method=browseOrder"><span class="whiteTitle"><bean:message key="menu.item3"/></span></A>		  </TD>
          <TD background="images/Bule_06.gif" width="2"></TD>
          <TD class="header_menu" align="middle">
		  	<A href="mem.do?method=browseWord"><span class="whiteTitle"><bean:message key="menu.item4"/></span></A>		  </TD>
          <TD background="images/Bule_06.gif" width="2"></TD>
          <TD class="header_menu" align="middle">
		  	<A href="mem.do?method=loadMember"><span class="whiteTitle"><bean:message key="menu.item5"/></span></A>		  </TD>
          <TD vAlign=top width=7><IMG src="images/icon07.gif"></TD>
        </TR>
    </TABLE></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="60"><img src="images/icon_order.gif" /></td>
      </tr>
      
      <tr>
        <td align="center">
			<table cellspacing="1" cellpadding="0" width="94%" border="0" bgcolor="#F7F3F7">
              <tr height="26">
                <td class="blackTitle" align="center"><bean:message key="order.no"/></td>
                <td class="blackTitle" align="center"><bean:message key="sel.money"/></td>
                <td class="blackTitle" align="center"><bean:message key="order.date"/></td>
                <td class="blackTitle" align="center"><bean:message key="order.status"/></td>
                <td class="blackTitle" align="center"><bean:message key="order.edit"/></td>
              </tr>
			<logic:notPresent name="result">
              <tr align="center" bgcolor="#FFFFFF">
                <td colspan="5" height="26" class="redText"><bean:message key="order.empty"/></td>
              </tr>				
			</logic:notPresent>
			<logic:present name="result">
				<logic:iterate id="order" name="result" type="com.ORM.Orders">
				  <tr height="26" class="text" align="center" bgcolor="#FFFFFF">
					<td>${order.orderNo}</td>
					<td class="redText">��${order.cart.money}</td>
				     <fmt:formatDate value="${order.orderDate}" var="orderDate" type="both" pattern="yyyy-MM-dd"/>			
					<td>${orderDate}</td>
					<td>
						<logic:equal name="order" property="orderStatus" value="1">
							<bean:message key="order.status1"/>
						</logic:equal>
						<logic:equal name="order" property="orderStatus" value="2">
							<bean:message key="order.status2"/>
						</logic:equal>
						<logic:equal name="order" property="orderStatus" value="3">
							<bean:message key="order.status3"/>
						</logic:equal>												
					</td>					
					<td>
						<html:link page="/order.do?method=viewOrder&id=${order.id}">
							<span class="blueText"><bean:message key="order.view"/></span>
						</html:link>&nbsp;
						<html:link page="/order.do?method=delOrder&id=${order.id}">
							<span class="blueText"><bean:message key="order.del"/></span>
						</html:link>						
					</td>
				  </tr>
				</logic:iterate>
              <tr>
                <td colspan="5">&nbsp;</td>
              </tr>				
			</logic:present>						
        </table></td>
      </tr>
	  <tr height="20"><td colspan="5"></td></tr>	  
      
      <tr align="right">
        <td height="20">&nbsp;</td>
      </tr>
    </table>	</td>
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
<script language="javascript">
	//����ˮ����������б�
	jsonrpc = new JSONRpcClient("JSON-RPC");
	var result = jsonrpc.ajax.getCategory();
	for (var i=0;i<result.length;i++){
		option =document.createElement("OPTION");
		option.value = result[i][0];
		option.text = result[i][1];
		document.all.category.options.add(option);
	}
	
	//����ˮ��
	function QuickSearch(){
		var url = "mer.do?method=searchMer&cateid="+document.all.category.value;
		var key = document.all.qKey.value;
		if (key !=null && key!="ˮ���ؼ���" && key.length>0)url = url+"&key="+key;
		window.location = url;
	}
</script>
<logic:messagesPresent property="delOrderStatus">
	<script language="javascript">
		alert('<html:errors property="delOrderStatus"/>');
	</script>
</logic:messagesPresent>
</body>
</html>