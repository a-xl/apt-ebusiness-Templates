<table width=100%><tr><td><span style='color:#ff0000'><b>{ORDER_HINWEIS}</b></span>
</tD><td align=right valign=top><input type=button value='{WK_BACK_NAME}' onclick=window.location.href='{WARENKORB_BUTTON_ACTION}'>
</tD></tr></table>
<hr>
 
<form action="{ORDER_ACTION}" method=post name=f1>

<!-- BEGIN switch_agb_error -->
<div class='error'>{switch_agb_error.ERROR_TEXT}</div>
<!-- END switch_agb_error -->

<table width=100%><tr><td width=70%>
{HINWEIS_WIDERRUF}
<input type=checkbox name='agb' {AGB_CHECKED} value='1'> {AGB_HINWEIS} <a href={AGB_T_ACTION} target=_blank>{AGB_T_NAME}</a>, <a href={WIDERRUFSBELEHRUNG_T_ACTION} target=_blank>{WIDERRUFSBELEHRUNG_T_NAME}</a>
</td><td align=right>
<b>{KUNDEN_NR_NAME} {KUNDEN_NR}</b>
</td></tr></table>
<br>
{HIDDEN_FIELDS}


<table width=100%>
<tr><td><b>{BEMERKUNG_HINWEIS}</b></td>
<td rowspan='2' valign='top' align=right>
<!-- BEGIN switch_no_gutschein -->
	<table width=100%><tr>
		<td valign='top'><b>{switch_no_gutschein.GUTSCHEIN_HINWEIS}<b></td>
	</tr><tr>
	<td valign='top'><b>{switch_no_gutschein.GUTSCHEIN_NAME}</b> <input type=text name='gutschein_nr' value='{switch_no_gutschein.GUTSCHEIN_NR}'> <input type=submit name='{switch_no_gutschein.GUTSCHEIN_SET_BUTTON_NAME}' value='{switch_no_gutschein.GUTSCHEIN_SET_BUTTON_VALUE}'></td>
	</tr></table>
<!-- END switch_no_gutschein -->

<!-- BEGIN switch_gutschein -->
			<table width=100%><tr>
				<td valign='top'><b>{switch_gutschein.GUTSCHEIN_TYP}<b>:</td>
			</tr><tr>
				<td valign='top'>
					{switch_gutschein.GUTSCHEIN_NAME} {switch_gutschein.GUTSCHEIN_NR}
					<input type=submit name='{switch_gutschein.GUTSCHEIN_DEL_BUTTON_NAME}' value='{switch_gutschein.GUTSCHEIN_DEL_BUTTON_VALUE}'>
					<input type=hidden name='gutschein_nr' value='{switch_gutschein.GUTSCHEIN_NR}'>
				</td>
			</tr></table>
<!-- END switch_gutschein -->
</td></tr><tr>
<td><textarea cols=50 rows=4 name=bemerkung>{BEMERKUNG_VALUE}</textarea></td>
</tr></table>

<hr>

<table width=100%><tR>
<tD><b>{VERSANDADRESSE_NAME}</b> <a href='{SHIP_EDIT}'><img src=images/edit.png title="{EDIT_NAME}" border=0></a></tD>
<td><b>{RECHNUNGSADRESSE_NAME}</b> <a href='{BILL_EDIT}'><img src=images/edit.png title="{EDIT_NAME}" border=0></a></tD></tR>
<tr><td>
{SHIP_FIRMA}<br>{SHIP_ANREDE} {SHIP_VNAME} {SHIP_NNAME}
<br>{SHIP_STRASSE} {SHIP_HNR}<br>{SHIP_ZUSATZ}<br>{SHIP_PLZ} {SHIP_ORT}<br>{SHIP_LAND}<bR>{SHIP_STATE}
</td><tD>
{BILL_FIRMA}<br>{BILL_ANREDE} {BILL_VNAME} {BILL_NNAME}
<br>{BILL_STRASSE} {BILL_HNR}<br>{BILL_ZUSATZ}<br>{BILL_PLZ} {BILL_ORT}<br>{BILL_LAND}<bR>{BILL_STATE}
</tr></table>

<hR>
<!-- BEGIN switch_info_message -->
<p class="f32">{switch_info_message.MESSAGE}</p><hr>
<!-- END switch_info_message -->

<!-- BEGIN switch_error_message -->
<p class="f19">{switch_error_message.MESSAGE}</p><hr>
<!-- END switch_error_message -->


<table width=100% bgcolor='{DETAILS_BGCOLOR}'>
<tR>
	<td>
	<b><big>{BESTELLDETAILS_NAME}</big></b>  <a href='{WARENKORB_BUTTON_ACTION}'><img src=images/edit.png title="{WK_BACK_NAME}" border=0></a>
	</tD>
</tr>
<tr>
	<td align=center>
<table width=96% >
<tr>
	<td width='5%' align='center'>
		<u><b>{WK_HEAD_POSITION}</b></u>
	</td>
	<td width='5%' align='center'>
		<u><b>{WK_HEAD_ARTIKEL_NR}</b></u>
	</td>
	<td width='100' align='center'>
		<u><b>{WK_HEAD_BILD}</b></u>
	</td>
	<td align='left'>
		<u><b>{WK_HEAD_NAME}</b></u>
	</td>
	<td align="right">
		<u><b>{WK_HEAD_GESAMTPREIS}</b></u>
	</td>
</tr>

<!-- BEGIN inhalt -->
	{inhalt.ORDER_POSITION}
<!-- END inhalt -->
</table>
<bR>
<table width=96%><tr><td align=right>
<b>{WK_SUMME_NAME} {WK_CUR} {WK_SUMME} </b>
</tD></tR>
</table>

<!-- BEGIN switch_rabattgutschein -->
<hr>
<table width=96%>
<tr><td align=left>
<b>{GUTSCHEIN_TYP}</b>: {GUTSCHEIN_NAME} {GUTSCHEIN_NR} ({GUTSCHEIN_PROZENT})
</td><td align=right>{WK_CUR} -{GUTSCHEIN_WERT}
</td></tr>
</table>
<!-- END switch_rabattgutschein -->
<hr>

<table width=96%><tr><td align=left>
<b>{VERSANDART_NAME}</b> {VERSANDART}
</td><td align=right>{WK_CUR} {VERSANDART_KOSTEN}
</td></tr><tr><td align=left valign=top>
<b>{RECHNUNGSART_NAME}</b> {RECHNUNGSART}
{RECHNUNGSART_HINWEIS}
</td><td align=right valign=top>{WK_CUR} {RECHNUNGSART_KOSTEN_BETRAG}<br>
{WK_CUR} {RECHNUNGSART_KOSTEN_RABATT}
</td></tr></table>

<hr>

<table width=96%>
<tr><td align=right>
<b>{WK_SUMME_NAME}</b> {WK_CUR} {SUMME}
</tD></tR>

<!-- BEGIN tax -->
<tr><td align=right>
{tax.TAX_HINWEIS} {tax.TAX_WERT}% {tax.TAX_NAME} {WK_CUR} {tax.TAX}
</tD></tr>
<!-- END tax -->

<!-- BEGIN switch_wertgutschein -->
<tr><td align=right>
<b>{GUTSCHEIN_TYP}</b> {WK_CUR} -{GUTSCHEIN_WERT}
</td></tr>
<!-- END switch_wertgutschein -->

<tr><td align=right>
<font class=f18>{WK_GESAMT_SUMME_NAME} {WK_CUR} {WK_GESAMT_SUMME}</font>
</tD></tR>
<tr><td align=right>
{FINANZIERUNG_HINWEIS}
</tD></tR></table>
<table width=96%><tr><tD width=50%></tD><td align=right>
{SONSTIGE_HINWEISE}
</td>
</table>

</tD></tR></table>

<table width=100%>
<tr><td align=right><input type=submit onClick='this.disabled=true;this.form.submit();' name='{ORDER_CHECKOUT_BUTTON_NAME}' value='{ORDER_CHECKOUT_BUTTON_VALUE}'></td></tr>
</table></form>
<p>