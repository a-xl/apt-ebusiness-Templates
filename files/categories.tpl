<!-- BEGIN switch_cat_info -->
<table width="100%"><tr><td>
{CAT_DESCRIPTION}
</td>
<td>{CAT_IMG}</tD>
</tr></table>
<!-- END switch_cat_info -->
<p></p>
{SELECT_CAT}
<table width="100%">
    <tr>
<!-- BEGIN subgroup -->
        <td align=center><a href={subgroup.SUB_ACTION}>{subgroup.SUB_IMG}</a><bR>
       <a href={subgroup.SUB_ACTION}>{subgroup.SUB_NAME}</a></td>
{subgroup.LINE}
<!-- END subgroup -->
    </tr>
</table>

<!-- BEGIN switch_artikel_teil -->
{ARTIKEL_LIST_KOPF}
<hr noshade>
<table cellspacing=0 width="100%">
    <tr>
        <td><b>{TABLE_HEAD_IMG}</b></td>
        <td><b>{TABLE_HEAD_PRODUKT}</b></td>
        <td><b>{TABLE_HEAD_ARTIKELNR}</b></td>
        <td align=right><b>{TABLE_HEAD_PREIS}</b></td>
    </tR>
<!-- BEGIN artikel -->
    <tr class={switch_artikel_teil.artikel.TABLE_BG_COL_COLOR}>
        <td rowspan=3 valign="top"><a href={switch_artikel_teil.artikel.ART_ACTION}>{switch_artikel_teil.artikel.ART_IMG_THUMB_1_1}</a></td>
        <td><a href={switch_artikel_teil.artikel.ART_ACTION} class=l6>{switch_artikel_teil.artikel.ART_NAME}</a></td>
        <td><a href={switch_artikel_teil.artikel.ART_ACTION}>{switch_artikel_teil.artikel.ART_ARTIKELNR}</a></td>
        <td align=right><a href={switch_artikel_teil.artikel.ART_ACTION}><font class=f17>{switch_artikel_teil.artikel.ART_PREIS} {switch_artikel_teil.artikel.CUR}</font></a></td>
    </tR>
    <tr  class={switch_artikel_teil.artikel.TABLE_BG_COL_COLOR}><td colspan=3><a href={switch_artikel_teil.artikel.ART_ACTION}>{switch_artikel_teil.artikel.ART_DESCRIPTION}</a><br>
<!-- BEGIN artikel_gewicht -->
{ARTIKEL_GEWICHT_NAME} {switch_artikel_teil.artikel.ARTIKEL_GEWICHT} | 
<!-- END artikel_gewicht -->
{switch_artikel_teil.artikel.ARTIKEL_LIEFERBAR}</td></tr>
    <tr  class={switch_artikel_teil.artikel.TABLE_BG_COL_COLOR}><td colspan=3 align=right>{switch_artikel_teil.artikel.MWST_HINWEIS} {ZZGL_NAME} <a href={LIEFERVERSAND_T_ACTION}>{LIEFERVERSAND_T_NAME}{switch_artikel_teil.artikel.ART_GRUNDPREIS}</a></td></tr>
<!-- BEGIN show_mp_directpayment -->
<tr  class={switch_artikel_teil.artikel.TABLE_BG_COL_COLOR}>
    <td colspan=4 align=right>  {switch_artikel_teil.artikel.show_mp_directpayment.ARTIKEL_MICROPAYMENT_HANDYPAY}
  {switch_artikel_teil.artikel.show_mp_directpayment.ARTIKEL_MICROPAYMENT_CALL2PAY}

</td>
</tr>
<!-- END show_mp_directpayment -->

<!-- BEGIN show_basket -->
    <tr  class={switch_artikel_teil.artikel.TABLE_BG_COL_COLOR}>
    <form action={switch_artikel_teil.artikel.ACTION} method=post>
    <td colspan=3 align=left>
    	{switch_artikel_teil.artikel.HIDDEN}
    	<!--{switch_artikel_teil.artikel.SELECT}-->
    	{switch_artikel_teil.artikel.AUSWAHL_TABLE}  
    </td>
    <td colspan=1 align=right valign=bottom>
    	<input type=text size=2 name=wunschmenge value='{switch_artikel_teil.artikel.MINDESTMENGE}'}> 
    	<input type=submit value='{switch_artikel_teil.artikel.BUTTON_NAME}'>
    </td>
    </form></tr>
<!-- END show_basket -->
<tr  class={switch_artikel_teil.artikel.TABLE_BG_COL_COLOR}><td colspan=4 align=right><br></td></tr>

<!-- END artikel -->
</table>
<hr noshade>
{ARTIKEL_LIST_KOPF}
<!-- END switch_artikel_teil -->

