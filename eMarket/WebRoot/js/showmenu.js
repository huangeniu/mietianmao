function showmenu(strID){ 
    var i; 
    var tarObj=document.getElementById(strID+'');
    for(i=0;i<=3;i++){ 
        var lay; 
        lay = document.getElementById('lay' + i); 
        if (lay.style.display=="" && lay!=tarObj){ 
            lay.style.display = "none"; 
        } 
    } 
    if (tarObj.style.display=="none"){ 
        tarObj.style.display = ""; 
    }else{ 
        tarObj.style.display = "none"; 
    } 
} 

function goTarget(obja){
 var oldsel=document.getElementById("sel");
// if(oldsel.innerText!=""){
//    var alink=document.getElementById(oldsel.innerText+"");
//    alink.style.color="#0D4A69";
//	alink.style.fontWeight="normal";
//  }
//  oldsel.innerText=obja.id!=null ? obja.id+"" : "";
//  obja.style.color="#F26521";
//  obja.style.fontWeight="bold";
}