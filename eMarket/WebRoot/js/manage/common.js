/**
 *js��ѡ��ťȫѡ& ɾ�� ����
 *By haungjinkun
 *2012-11-24
 */



function checkSelect(checkBoxName) {
	var is_sel = false;
	var objArrAll = document.getElementsByName("check_box1");
	is_sel = objArrAll[0].checked;
	var objArr = document.getElementsByName(checkBoxName);
	for (var i = 0; i < objArr.length; i++) {
		if (objArr[i].type == "checkbox") {
			if (is_sel) {
				objArr[i].checked = true;
			} else {
				objArr[i].checked = false;
			}
		}
	}
	return is_sel;
}
function checkSelectIS(checkBoxName) {
	var is_sel = false;
	var objArr = document.getElementsByName(checkBoxName);
	for (var i = 0; i < objArr.length; i++) {
		if (objArr[i].type == "checkbox" && objArr[i].checked) {
			is_sel = true;
			break;
		}
	}
	return is_sel;
}

function deletetemplate(checkBoxName,action) {
	if (checkSelectIS(checkBoxName)) {
		if (window.confirm("ȷ��Ҫɾ����������")) {
			document.callForm.action = action;
			document.callForm.submit();
		}
	} else {
		alert("������ѡ��һ��ɾ����");
		return;
	}
}

