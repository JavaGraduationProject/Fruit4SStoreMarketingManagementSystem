<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri="http://struts-menu.sf.net/tag" prefix="menu" %>
<%@ taglib uri="/struts-bean" prefix="bean" %>
<html>
  <head>
	<title></title>
	<link rel="stylesheet" type="text/css" media="screen" href="styles/global.css" />
	<link href="CSS/left_css.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="scripts/cookies.js"></script>
	<style type="text/css">
		<!--
		body {
			background-color:#c0ebf3;
		}
		-->
	</style>
  </head>  
  <body>
  
<table width="98%" border="0" cellpadding="0" cellspacing="0" background="images/tablemde.jpg">
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#16ACFF"></td>
  </tr>
  
  <c:if test="${user.role==1}">
  <tr>
    <td><TABLE width="97%" border=0 align=right cellPadding=0 cellSpacing=0 class=leftframetable>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(images/left_tt.gif) no-repeat">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <TD width="20"></TD>
          <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(1); height=25>��̨����</TD>
              </tr>
            </table>            
          </TD>
        </TR>
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                
                <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="Admin/adminCate.do?method=browseCate" target="frame1">ˮ���������</A></TD>
                </TR>
                
                 <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="Admin/adminMer.do?method=browseMer" target="frame1">ˮ������</A></TD>
                </TR>
               
                 <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="Admin/adminMer.do?method=browseSMer" target="frame1">�ؼ�ˮ������</A></TD>
                </TR>
                
                <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="Admin/adminOrder.do?method=browseOrder" target="frame1">��������</A></TD>
                </TR>
                
                 <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="Admin/adminMember.do?method=browseMember" target="frame1">��Ա����</A></TD>
                </TR>
               
                 <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="Admin/admin.do?method=browseAdmin" target="frame1">ϵͳ�û�����</A></TD>
                </TR>                
                
                
                <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="Admin/adminMember.do?method=browseWord" target="frame1">���Թ���</A></TD>
                </TR>
                
                 <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="Admin/login.do?method=logout" target="frame1">��ȫ�˳�</A></TD>
                </TR>
               
                
              </TBODY>
          </TABLE></TD>
        </TR>
      </TBODY>
      </TABLE>
      </td>
      </tr>
      </c:if>
      </table>
  
  
	<table cellpadding=0 cellspacing=0 bgcolor="#c0ebf3">
		
		<tr valign=top>
			 <td width="150" bgcolor="#c0ebf3">
			 <%---
			 
	       <Item name="menu1" title=" " image="images/icon1.gif" location=""/>
	       <Item name="menu2" title=" " image="images/icon2.gif" location=""/>
	       <Item name="menu3" title=" " image="images/icon2.gif" location=""/>
	       <Item name="menu4" title=" " image="images/icon11.gif" location=""/>
	       <Item name="menu5" title=" " image="images/icon6.gif" location=""/>	             	             	             	    
	       <Item name="menu6" title=" " image="images/icon10.gif" location=""/>
	       <Item name="menu7" title=" " image="images/icon1.gif" location=""/>
	       <Item name="menu8" title=" " image="images/icon12.gif" location=""/>				 
			 			 
			 
				<menu:useMenuDisplayer name="DropDown" bundle="org.apache.struts.action.MESSAGE">
				    <menu:displayMenu name="AdminMenu" target="frame1"/>
				</menu:useMenuDisplayer>
				 --%>
			 </td>
		</tr>
	</table>	
  </body>
</html>