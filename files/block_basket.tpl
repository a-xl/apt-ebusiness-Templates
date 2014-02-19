
<div class=bg15>{WARENKORB_NAME}</div>                
<div style="{BG_IMG_30}">
<div style="padding:{PIXELABSTAND-MENUEBLOCK}px;">
<table class=f16>
<!-- BEGIN warenkorb_leer -->
<tR><td class=f16>{warenkorb_leer.WK_LEER}</td></tr>
<!-- END warenkorb_leer -->
<!-- BEGIN warenkorb_voll -->
<tr><td align=right valign=top class=f16>{warenkorb_voll.WK_MENGE}</tD>
<td valign=top class=f16> x </td> 
<td class=f16><a href="{warenkorb_voll.WK_ACTION}">{warenkorb_voll.WK_NAME}</a></tD></tR>
<!-- END warenkorb_voll -->
</table>
<font class=f16>
<!-- BEGIN switch_warenkorb_summe -->
<bR>{WARENKORB_SUMME_NAME}</font> <font class=f18>{WARENKORB_WAEHRUNG} {WARENKORB_SUMME}</font><font class=f16><bR>
{ZZGL_NAME} <a href="{LIEFERVERSAND_T_ACTION}">{LIEFERVERSAND_T_NAME}</a>
<!-- END switch_warenkorb_summe -->
</font>
<br><center><br>
<input type=button value='{WARENKORB_BUTTON_NAME}' onclick="window.location.href='{WARENKORB_BUTTON_ACTION}'">
</center>
</div></div>

<div style="height:{PIXELABSTAND-MENUEBLOCK-ZWISCHEN}px;">
</div>
