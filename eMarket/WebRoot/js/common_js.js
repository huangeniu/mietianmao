/* ======= FileName:skinCss.js =======
* Author:Crystal (Feng Fupeng)
* Date:2008-02-24
* Email:8215349[at]qq.com
*/

/*function GetCookie(sName)
{
    var aCookie = document.cookie.split("; ");
    for (var i=0; i < aCookie.length; i++)
    {
        var aCrumb = aCookie[i].split("=");
        if (sName == aCrumb[0])
        {
            return aCrumb[1];
        }
    }
    return null;
}

function SetCookie(name, value, time, domain)
{
    var expdate = new Date();
    var expires = time;
    if(expires!=null){
      expdate.setTime(expdate.getTime() + ( expires * 1000 ));
      expd = "expires="+expdate.toGMTString()+";";
    }else
      expd = "";
    if (domain)
    {
        domain = "domain="+ domain +"; path=/; ";
    }
    document.cookie = name + "=" + escape (value) + "; " + expd + domain;
}
var cookieTag = "Crystal_skin";
var vSkin = GetCookie(cookieTag);

function setSkinColor(vSkinNum)
{
    SetCookie( cookieTag, vSkinNum, 60*60*24*30);
    document.getElementById("skinCss").href = "skin/"+vSkinNum+"/cms_sytle.css";
}

if( vSkin && vSkin!="Style" )
{
    document.getElementById("skinCss").href = "skin/"+vSkin+"/cms_sytle.css";
}

*/