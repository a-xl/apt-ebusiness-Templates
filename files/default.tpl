<!-- BEGIN contentmodule -->
        {contentmodule.MODULE_HTML}
        {contentmodule.MODULE_JS}
<!-- END contentmodule -->
<div style='clear:left;'></div>
<div id='starpage_specialoffers' class='gridContent'>
	{LIST_CONTENT}
</div>
<br/>
<table cellspacing=0 width="100%">
    <tr>
<!-- BEGIN artikel -->
        <td align=center><a href="{artikel.ART_ACTION}">{artikel.ART_IMG_THUMB_1_1}</a><br>
<a href="{artikel.ART_ACTION}" class=l6>{artikel.ART_NAME}</a><br><br>
<a href="{artikel.ART_ACTION}"><font class=f17>{artikel.ART_PREIS} {artikel.CUR}</font>
		{artikel.ART_GRUNDPREIS}</a>
        <bR>
    {artikel.MWST_HINWEIS}<bR>{ZZGL_NAME} <a href="{LIEFERVERSAND_T_ACTION}">{LIEFERVERSAND_T_NAME}</a>
        <br><br></td>
    {artikel.LINE}
<!-- END artikel -->
</tr>
</table>