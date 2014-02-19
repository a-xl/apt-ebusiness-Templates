{ARTIKEL_IMG_JAVASCRIPT}

<table width=100%><tr>
<td valign=top width=70%>
{ARTIKEL_FIRM_NAME}<bR><font class=f21>{ARTIKEL_NAME}</font>
</td>
<td valign=top align=center>
<div class=bg24>
<a href={ARTIKEL_EMPFEHLEN_ACTION}>{ARTIKEL_EMPFEHLEN_NAME}</a>  <a href={ARTIKEL_PRINT_ACTION} target=_blank>{ARTIKEL_PRINT_NAME}</a>
</div>
</td></tr></table>

<table width=100%><tr>
<td  valign=top>
<a href={ARTIKEL_IMG_ACTION_1}>{ARTIKEL_IMG_THUMB_2_1}</a>
</tD>
<tD valign=top>
<a href={ARTIKEL_IMG_ACTION_2}>{ARTIKEL_IMG_THUMB_1_2}</a>
 
<a href={ARTIKEL_IMG_ACTION_3}>{ARTIKEL_IMG_THUMB_1_3}</a>
 
<a href={ARTIKEL_IMG_ACTION_4}>{ARTIKEL_IMG_THUMB_1_4}</a>
 
<a href={ARTIKEL_IMG_ACTION_5}>{ARTIKEL_IMG_THUMB_1_5}</a>
</td>
</tr>
<tr><td valign=top>
<b>Artikel-Nr.:</b> {ARTIKEL_NUMMER}<br>

<!-- BEGIN artikel_optionen -->
        <b>{artikel_optionen.ARTIKEL_OPTION_NAME}:</b> {artikel_optionen.ARTIKEL_OPTION_WERT}<br>
<!-- END artikel_optionen -->

<!-- BEGIN artikel_gewicht -->
<b>{ARTIKEL_GEWICHT_NAME}:</b> {ARTIKEL_GEWICHT}<br>
<!-- END artikel_gewicht -->

<b>{ARTIKEL_MINDESTMENGE_NAME}:</b> {ARTIKEL_MINDESTMENGE}<br>
</td><td valign=rop align=right>
{ARTIKEL_MICROPAYMENT_HANDYPAY}
<br>
{ARTIKEL_MICROPAYMENT_CALL2PAY}

</td></tr>
<tr><td colspan=2>
<div class=bg23>
{ARTIKEL_BESCHREIBUNG_LANG}
</div>
</td></tR>
</table><br>

<!-- BEGIN switch_artikel_downloads -->
<div class=bg26>

<table><tr><td>{ARTIKEL_DOWNLOAD_HINWEIS}</tD></tr></table>
<table>
<!-- BEGIN downloads -->
<tr><td>
<a href={switch_artikel_downloads.downloads.ARTIKEL_DOWNLOAD_ACTION} target=_blank>
{switch_artikel_downloads.downloads.ARTIKEL_DOWNLOAD_SYMBOL}</a></tD>
<tD>
<a href={switch_artikel_downloads.downloads.ARTIKEL_DOWNLOAD_ACTION} target=_blank>
{switch_artikel_downloads.downloads.ARTIKEL_DOWNLOAD_NAME}</a></tD>
</a></td></tr>
<!-- END downloads -->
</table>
</div>
<!-- END switch_artikel_downloads -->

<table width=100%>
<tr><td >{ARTIKEL_DATUM}</td>
<td align=right>{ARTIKEL_LIEFERBAR}</td></tr>
</table>

<div class=bg25>


<table width=100%>

<tr>
	<td valign="top">
	<!-- BEGIN switch_uvp_preis -->
	{switch_uvp_preis.ARTIKEL_UVP} {ARTIKEL_WARENKORB_WAEHRUNG}
	<!-- END switch_uvp_preis -->
	</td>
	<td align="right">
		<!-- BEGIN switch_staffel -->
		<font class=f17>{switch_staffel.ARTIKEL_WARENKORB_AB_NAME} {switch_staffel.ARTIKEL_WARENKORB_MENGE} {switch_staffel.ARTIKEL_WARENKORB_UNIT}: {switch_staffel.ARTIKEL_WARENKORB_PREIS} {ARTIKEL_WARENKORB_WAEHRUNG}/{switch_staffel.ARTIKEL_WARENKORB_UNIT}</font><br>
		<!-- END switch_staffel -->
		
		<!-- BEGIN switch_kombi -->
		<font class=f17>{switch_kombi.ARTIKEL_WARENKORB_AB_NAME} {switch_kombi.ARTIKEL_WARENKORB_MIN_PREIS} {ARTIKEL_WARENKORB_WAEHRUNG}</font><br>
		<!-- END switch_kombi -->
		
		{ARTIKEL_WARENKORB_MWST_HINWEIS} {ARTIKEL_WARENKORB_MWST_WERT} {ARTIKEL_WARENKORB_MWST_NAME}
		<bR> {ZZGL_NAME} <a href={LIEFERVERSAND_T_ACTION}>{LIEFERVERSAND_T_NAME}</a>
		{ARTIKEL_WARENKORB_GRUNDPREIS}
	</td>
</tR>
<!-- BEGIN show_basket -->
<form action={ARTIKEL_WARENKORB_ACTION} method=post>
<tr>
	<td valign="top">
		<!--{ARTIKEL_WARENKORB_SELECT}-->
		{ARTIKEL_WARENKORB_HIDDEN}
		{AUSWAHL_TABLE}
	</td>
	<td align=right valign="bottom">
		<input type=text size=2 name=wunschmenge value='{ARTIKEL_MINDESTMENGE_KURZ}'> {ARTIKEL_WARENKORB_UNIT_NAME} 
		<input type=submit value='{ARTIKEL_WARENKORB_BUTTON_NAME}'>
	</td>
</tr></form>
<!-- END show_basket -->
</table>

</div>

<!-- BEGIN switch_artikel_crosssells -->
<br>
<div class=bg27>
<table><tr><td>{ARTIKEL_CROSSSELLS_HINWEIS}</tD></tr></table>
<table width=100% >
<tr>
<!-- BEGIN crosssells -->
<td align=center>
<a href={switch_artikel_crosssells.crosssells.ARTIKEL_CROSSSELLS_ACTION}>
{switch_artikel_crosssells.crosssells.ARTIKEL_CROSSSELLS_IMG}</a><br>
<a href={switch_artikel_crosssells.crosssells.ARTIKEL_CROSSSELLS_ACTION}>
{switch_artikel_crosssells.crosssells.ARTIKEL_CROSSSELLS_NAME}</a><bR><br>
<a href={switch_artikel_crosssells.crosssells.ARTIKEL_CROSSSELLS_ACTION}>
<font class=f17>
{switch_artikel_crosssells.crosssells.ART_PREIS} {switch_artikel_crosssells.crosssells.CUR}</font> {switch_artikel_crosssells.crosssells.ART_GRUNDPREIS}</a><br>
{switch_artikel_crosssells.crosssells.MWST_HINWEIS}<bR>{ZZGL_NAME} <a href="{LIEFERVERSAND_T_ACTION}">{LIEFERVERSAND_T_NAME}</a>
<br><br></td>
{switch_artikel_crosssells.crosssells.LINE}

<!-- END crosssells -->
</tr></table></div>
<!-- END switch_artikel_crosssells -->

