<div class=bg8  >
  <div style="padding-left:5px;padding-right:5px;">
    <font class=f13>{FIRMA} {ARTIKELNAME}</font>
  </div>
</div>

<table>
<tr>
<tD valign=top>
<!-- BEGIN switch_img -->
<a href={switch_img.ARTIKEL_IMG_ACTION}>{switch_img.ARTIKEL_IMG_THUMB_1}</a>
<bR>
<!-- END switch_img -->
</tD>
<td  colspan=2 align=center valign=top><img src={IMG_PFAD} border=0 ><br><br><center>{IMG_NAME}</center></td></tr>
<tr><td  width=33%>
<!-- BEGIN switch_back -->
<a href={switch_back.PFADBACK}><< {NAME_BACK}</a>
<!-- END switch_back -->
</td><td width=33%  align=center><A HREF=# onClick=window.close();return false>{CLOSE_NAME}</a></td><td align=right width=33% >
<!-- BEGIN switch_next -->
<a href={switch_next.PFADNEXT}>{NAME_NEXT} >></a>
<!-- END switch_next -->
    
</td></tr></table>

