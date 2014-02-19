{ARTIKEL_LIST_KOPF}
<hr noshade>
<table cellspacing=0 width=100%>
    <tr>
        <td><b>{TABLE_HEAD_IMG}</b></td>
        <td><b>{TABLE_HEAD_PRODUKT}</b></td>
        <td><b>{TABLE_HEAD_ARTIKELNR}</b></td>
        <td><b>{TABLE_HEAD_PREIS}</b></td>
    </tR>
<!-- BEGIN artikel -->
    <tr class={artikel.TABLE_BG_COL_COLOR}>
        <td rowspan=3><a href={artikel.ART_ACTION}>{artikel.ART_IMG_THUMB_1_1}</a></td>
        <td><a href={artikel.ART_ACTION} class=l6>{artikel.ART_NAME}</a></td>
        <td><a href={artikel.ART_ACTION}>{artikel.ART_ARTIKELNR}</a></td>
        <td align=right><a href={artikel.ART_ACTION}><font class=f17>{artikel.ART_PREIS} {artikel.CUR}</font></a></td>
    </tR>
    <tr  class={artikel.TABLE_BG_COL_COLOR}><td colspan=3><a href={artikel.ART_ACTION}>{artikel.ART_DESCRIPTION}</a><br>
<!-- BEGIN artikel_gewicht -->
{ARTIKEL_GEWICHT_NAME} {artikel.ARTIKEL_GEWICHT} | 
<!-- END artikel_gewicht -->
{artikel.ARTIKEL_LIEFERBAR}</td></tr>
    <tr  class={artikel.TABLE_BG_COL_COLOR}><td colspan=3 align=right>{artikel.MWST_HINWEIS} {ZZGL_NAME} <a href={LIEFERVERSAND_T_ACTION}>{LIEFERVERSAND_T_NAME}{artikel.ART_GRUNDPREIS}</a></td></tr>
<!-- BEGIN show_mp_directpayment -->
<tr  class={switch_artikel_teil.artikel.TABLE_BG_COL_COLOR}>
    <td colspan=4 align=right>  {artikel.show_mp_directpayment.ARTIKEL_MICROPAYMENT_HANDYPAY}
  {artikel.show_mp_directpayment.ARTIKEL_MICROPAYMENT_CALL2PAY}

</td>
</tr>
<!-- END show_mp_directpayment -->
<!-- BEGIN show_basket -->
<form action={artikel.ACTION} method=post>
<tr class={artikel.TABLE_BG_COL_COLOR}>
	<td valign="top" colspan=2>
		{artikel.HIDDEN}
		{artikel.AUSWAHL_TABLE}
	</td>
	<td align=right valign="bottom" colspan=2>
		<input type=text size=2 name=wunschmenge value='{artikel.MINDESTMENGE}'>
		<input type=submit value='{artikel.BUTTON_NAME}'>
	</td>
</tr></form>
<!-- END show_basket -->


<tr  class={artikel.TABLE_BG_COL_COLOR}><td colspan=4 align=right><br></td></tr>

<!-- END artikel -->
</table>
<hr noshade>
{ARTIKEL_LIST_KOPF}


