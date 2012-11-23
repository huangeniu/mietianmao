function switchSysBarB(){
	if (parent.frames['fra'].cols=='0,8,*')
	{
		parent.frames['fra'].cols='206,15,*';
		document.getElementById("switchPointCLD2").src="images/bar02.gif";
	}else{
		parent.frames['fra'].cols='0,8,*';
		document.getElementById("switchPointCLD2").src="images/bar04.gif";
	}
}

function refreshMenu(){
    parent.frames['left'].location.href = "left.jsp";
}

//function switchSysBarA(){
//	if (parent.frames['fra0'].rows=='100,*')
//	{
//		switchPointCLD1.innerText=6;
//		parent.frames['fra0'].rows='0,*';
//	}else if (parent.frames['fra0'].rows=='100,*'){
//		switchPointCLD1.innerText=6;
//		parent.frames['fra0'].rows='0,*';
//	}else if (parent.frames['fra0'].rows=='0,*'){
//		switchPointCLD1.innerText=5;
//		parent.frames['fra0'].rows='100,*';
//	}else {
//		switchPointCLD1.innerText=5;
//		parent.frames['fra0'].rows='100,*';
//	}
//	refreshMenu();
//}
//function switchSysBarB(){
//	if (switchPointCLD2.innerText==3)
//	{
//		switchPointCLD2.innerText=4;
//		parent.frames['fra'].cols='0,15,*';
//	}
//	else{
//		switchPointCLD2.innerText=3;
//		parent.frames['fra'].cols='200,15,*';
//	}
//}
//function switchSysBarC(){
//	if (parent.frames['fra0'].rows=='63,*,45')
//	{
//		switchPointCLD3.innerText=5;
//		parent.frames['fra0'].rows='63,*,0';
//	}else if (parent.frames['fra0'].rows=='0,*,45'){
//		switchPointCLD3.innerText=5;
//		parent.frames['fra0'].rows='0,*,0';
//	}else if (parent.frames['fra0'].rows=='0,*,0'){
//		switchPointCLD3.innerText=6;
//		parent.frames['fra0'].rows='0,*,45';
//	}else {
//		switchPointCLD3.innerText=6;
//		parent.frames['fra0'].rows='63,*,45';
//	}
//    refreshMenu();
//}
//function refreshMenu(){
//    parent.frames['left'].location.href = "left.jsp";
//}
