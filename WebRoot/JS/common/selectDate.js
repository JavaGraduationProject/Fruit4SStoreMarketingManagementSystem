/*
	�����Զ������룺
	A.���÷�����
		1.���뱾js�ļ���
		2.��Ҫѡ�����ڵĵط�����onclick='javascript:selectDate(this)'�����ˣ��磺
		<input  type="text" name="aa" onclick='javascript:selectDate(this)'>
*/

 //�����·�,�������ʾӢ���·ݣ��޸������ע��
 /*var months = new Array("January?, "February?, "March",
    "April", "May", "June", "July", "August", "September",
    "October", "November", "December");*/
 var months = new Array("һ��", "����", "����",
    "����", "����", "����", "����", "����", "����",
    "ʮ��", "ʮһ��", "ʮ����");
 var daysInMonth = new Array(31, 28, 31, 30, 31, 30, 31, 31,
    30, 31, 30, 31);
  //������  �������ʾ Ӣ�ĵģ��޸������ע��
 /*var days = new Array("Sunday", "Monday", "Tuesday",
    "Wednesday", "Thursday", "Friday", "Saturday");*/
 var days = new Array("������","����һ", "���ڶ�", "������",
    "������", "������", "������");
 var getObject,oldObject;//ȡ�õ�ǰ����
 function getDays(month, year) {
    //�������δ������жϵ�ǰ�Ƿ��������
    if (1 == month)
       return ((0 == year % 4) && (0 != (year % 100))) ||
          (0 == year % 400) ? 29 : 28;
    else
       return daysInMonth[month];
 }

 function getToday() {
    //�õ��������,��,��
    this.now = new Date();
    this.year = this.now.getFullYear();
    this.month = this.now.getMonth();
    this.day = this.now.getDate();
 }

 today = new getToday();

 function newCalendar() { 
    today = new getToday();
    var parseYear = parseInt(document.all.year
       [document.all.year.selectedIndex].text);
    var newCal = new Date(parseYear,
       document.all.month.selectedIndex, 1);
    var day = -1;
    var startDay = newCal.getDay();
    var daily = 0;
    if ((today.year == newCal.getFullYear()) &&(today.month == newCal.getMonth()))
       day = today.day;
    var tableCal = document.all.calendar.tBodies.dayList;
    var intDaysInMonth =getDays(newCal.getMonth(), newCal.getFullYear());
    for (var intWeek = 0; intWeek < tableCal.rows.length;intWeek++)
         for (var intDay = 0;intDay < tableCal.rows[intWeek].cells.length;intDay++)
         {
          var cell = tableCal.rows[intWeek].cells[intDay];
	  if ((intDay == startDay) && (0 == daily))
             daily = 1;
          if(day==daily)
              //���죬���ý����Class
              cell.className = "today";
          else if(intDay==6)
              //����
              cell.className = "sunday";
          else if (intDay==0)
              //����
              cell.className ="satday";
          else
              //ƽ��
              cell.className="normal";        
          if ((daily > 0) && (daily <= intDaysInMonth))
             { 
               cell.innerText = daily;
               daily++;
             }
          else
              cell.innerText = "";
       }
 }

 function getDate() {
    var sDate;
    //��������������
    if ("TD" == event.srcElement.tagName)
       if ("" != event.srcElement.innerText)
	 {//������ʾ���ڵĸ�ʽ
	   var sMonth = document.all.month.value;
	   var sDay = event.srcElement.innerText;
	   if (sMonth.length==1)sMonth = "0"+sMonth;
	   if (sDay.length==1)sDay = "0"+sDay;
	   sDate = document.all.year.value + "-" + sMonth + "-" + sDay;
	  			getObject.value=sDate;
			//	setUpdateFlag(getObject);//�����¼�����������
				//HideLayer();
				window.close();

	 	 }
 }

function HideLayer() {
	Layer.style.visibility = "hidden";
}

function LayerShow(){
	Layer.style.visibility = "visible";
}

function ShowLayer(t,l) {

	if(oldObject==null)oldObject=getObject;//��ֵ
		if(Layer.style.visibility != "visible" && oldObject==getObject){//�ж��Ƿ����ͬһ��
				//if(l>480)l=l-131;
				Layer.style.top = t+document.body.scrollTop;
				Layer.style.left = l+document.body.scrollLeft;
				Layer.style.visibility = "visible";
				oldObject=getObject;
								}
	else if(oldObject==getObject){
		HideLayer();
	}
	else{
				//if(l>480)l=l-131;
				Layer.style.top = t+document.body.scrollTop;
				Layer.style.left = l+document.body.scrollLeft;
				Layer.style.visibility = "visible";
				oldObject=getObject;
	}
}
//����div��ʾ����;
function getLayer(){

	document.write("<div id=\"Layer\" style=\"position:absolute; width:340; z-index:12;boder-color:#ffffff; border:0px outset white; background-color: #d4d0c8; layer-background-color: #d4d0c8; visibility: hidden; height: 38; left:58; top:137;\"><input type=\"hidden\" name=\"ret\"><table width='320' id=\"calendar\" cellpadding=\"0\" align=\"center\"><thead><tr><td height='4'></td></tr>    <tr><td colspan=7 align=CENTER>��ѡ���·ݣ�<select id=\"month\" onChange=\"newCalendar()\" name=\"select\" class=\"smallSel\">");
	 for (var intLoop = 0; intLoop < months.length;  intLoop++)
	 document.write("<OPTION VALUE= " + (intLoop + 1) + " " + (today.month == intLoop ? "Selected" : "") + ">" + months[intLoop]);
	document.write("</select> &nbsp;&nbsp;&nbsp;&nbsp;��ѡ����ݣ�<select id=\"year\" onChange=\"newCalendar()\" name=\"select\" class=\"smallSel\">");
	 for (var intLoop = today.year-50; intLoop < (today.year + 10);                          intLoop++)
	 document.write("<OPTION VALUE= " + intLoop + " " +
	 (today.year == intLoop ?  "Selected" : "") + ">" + intLoop);
	document.write("</select></td></tr><tr><td height='6'></td></tr><tr class=\"days\">");
	document.write("<TD class=sunday>" + days[0] + "</TD>");
	for (var intLoop = 1; intLoop < days.length-1;intLoop++)
	document.write("<TD>" + days[intLoop] + "</TD>");
	document.write("<TD class=sunday>" + days[intLoop] + "</TD>");
	document.write("      </tr>      </thead> <tbody border=1 cellspacing=\"0\" cellpadding=\"0\" id=\"dayList\" align=CENTER ONCLICK='getDate()'>");
	 for (var intWeeks = 0; intWeeks < 6; intWeeks++) {
	document.write("<TR style='cursor:hand'>");
	 for (var intDays = 0; intDays < days.length;intDays++)
	document.write("<TD></TD>");
	document.write("</TR>");
	 }
	document.write("</tbody></table></div>");
}
//��ʾcss
document.write("<style>TABLE	{font-family:����,SimSun; font-size:9pt;border:0px;bgcolor:#d4d0c8;}.drpdwn	{font-family:����,SimSun;font-size:9pt;color:#000000;background-color:#000000} SELECT.smallSel{    BACKGROUND-COLOR: #eeeeee;    COLOR: #000000;    FONT-SIZE: 9pt} .normal{BACKGROUND: #d4d0c8;} .today {font-weight:bold;background-image:  url(date.gif);} .satday{color:#800000} .sunday{color:#800000} .days {FONT-SIZE: 9pt;} .Arraw {color:#0000BB; cursor:hand; font-family:Webdings; font-size:9pt}</style>");

getLayer();//��ʾdiv

function selectDate(x){
getObject=x;
var xx=event.clientX;//ȡ��x����;
var yy=event.clientY;//ȡ��y����;
newCalendar();
ShowLayer(0,0);//��ʾ��div
//x=getObject;
}
