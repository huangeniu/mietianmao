<%@ page pageEncoding="GBK" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:hidden name="pagination.curPage" value="%{pagination.curPage}" id="curPage"/>
<s:hidden name="pagination.count" value="%{pagination.count}" id="count"/>



��[<s:property value="%{pagination.count}" />]����¼,

ÿҳ<s:select name="pagination.curPagin" list="{'10','20','50'}" 
	value="%{pagination.curPagin}" onchange="changePageSize()" theme="simple" />��&nbsp;
��[<s:property value="%{(pagination.count-1) / pagination.curPagin+1}" />]ҳ|

��[<s:property value="%{pagination.curPage}" />]ҳ&nbsp;


 
<span class="blue"><s:if test="pagination.firstEnable()"><a href="javascript:page(1);" class="text_blue">��ҳ</a></s:if><s:else>��ҳ</s:else></span>
<span class="blue">
<span class="blue">
<s:if test="pagination.previoEnable()"><a href="javascript:page(<s:property value="%{pagination.curPage-1}" />);" class="text_blue">��һҳ</a></s:if><s:else>��һҳ</s:else>
</span>
<s:if test="pagination.nextEnable()"><a href="javascript:page(<s:property value="%{pagination.curPage==(pagination.count+pagination.curPagin-1)/pagination.curPagin?pagination.curPage:pagination.curPage+1}" />);" class="text_blue">��һҳ</a></s:if><s:else>��һҳ</s:else>
</span>
<span class="blue">
<s:if test="pagination.lastEnable()"><a href="javascript:page(<s:property value="%{(pagination.count+pagination.curPagin-1)/pagination.curPagin}" />);" class="text_blue">ĩҳ</a></s:if><s:else>ĩҳ</s:else>
</span>
&nbsp;����
<input type="text" name="index" size=3 onkeyup="checkInput();">ҳ 
<a href="#"  onclick="page(document.forms[0].index.value);" class="text_blue"><b>GO!</b></a>






<script language="javascript">
    function changePageSize(){
        document.forms[0].count.value="1";
        document.forms[0].submit();
    }
    
    function page(index) {
        if (index == "") {
            alert("��������ת��ҳ������");
            return;
        }
		if(isNaN(document.forms[0].index.value)) {
			alert("��תҳ�����Ϊ��ֵ��");
			return;
		}
		if(index == 0){
        	index = 1;
        }
        if (index > <s:property value="%{(pagination.count+pagination.curPagin-1)/pagination.curPagin}" />)
       		document.forms[0].curPage.value = "" + <s:property value="%{(pagination.count+pagination.curPagin-1)/pagination.curPagin}" />;
       	else
       		document.forms[0].curPage.value = ""+index;
        document.forms[0].submit();
    }
    
    function checkInput() {
        if (event.keyCode == 13) {
            page(document.forms[0].index.value);
            return;
        }
		if ( (event.keyCode >= 48 && event.keyCode <= 57) || (event.keyCode >= 96 && event.keyCode <= 105) ||
         event.keyCode == 8 || event.keyCode == 37 || event.keyCode == 39 || event.keyCode == 127) {    
			
		 }else{
		 	document.forms[0].index.value = "";
		 }

    }
</script>
