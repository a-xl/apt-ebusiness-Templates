<table width=100%><tR><td><b>{KUNDEN_NR_NAME} {KUNDEN_NR}</b><br/>
<b> {ORDER_ID_NAME}: {ORDER_ID}</td><td align=right>
<input type=button value='{BACK_NAME}' onclick='{BACK_ACTION}'></td></tr></table><br><br>

<table width=100%><tR>
<tD><b>{VERSANDADRESSE_NAME}</b></tD>
<td><b>{RECHNUNGSADRESSE_NAME}</b></tD></tR>
<tr><td>
{SHIP_FIRMA}<br>{SHIP_ANREDE} {SHIP_VNAME} {SHIP_NNAME}
<br>{SHIP_STRASSE}<br>{SHIP_ZUSATZ}<br>{SHIP_PLZ} {SHIP_ORT}<br>{SHIP_LAND}
</td><tD>
{BILL_FIRMA}<br>{BILL_ANREDE} {BILL_VNAME} {BILL_NNAME}
<br>{BILL_STRASSE}<bR>{BILL_ZUSATZ}<br>{BILL_PLZ} {BILL_ORT}<br>{BILL_LAND}
</tr></table>

<hR> 

<b>{BESTELLDETAILS_NAME}</b><br><br>

<table width=100%>
<tr>
	<td width='20'>
		<b>{WK_HEAD_POSITION}</b>
	</td>
	<td></td>
	<td>
		<b>{WK_HEAD_ARTIKEL_NR}</b>
	</td>
	<td>
		<b>{WK_HEAD_NAME}</b>
	</td>
	<td align="right">
		<b>{WK_HEAD_GESAMTPREIS}</b>
	</td>
</tr>
<!-- BEGIN inhalt -->
	{inhalt.ORDER_POSITION}
<!-- END inhalt -->

</table>
<table width=100%><tr><td align=right>
<b>{WK_SUMME_NAME} {WK_CUR} {WK_SUMME}</b>
</tD></tR>

<!-- BEGIN switch_skonto -->
<tr><td align=right>
<b>{switch_skonto.WK_SKONTO_NAME}</b> {switch_skonto.WK_CUR} -{switch_skonto.WK_SKONTO}
</tD></tR>
<!-- END switch_skonto -->

</table>


<!-- BEGIN switch_rabattgutschein -->
<hr>
<table width=100%>
<tr><td>
<b>{switch_rabattgutschein.GUTSCHEIN_TYP}:</b> {switch_rabattgutschein.GUTSCHEIN_NR} ({switch_rabattgutschein.GUTSCHEIN_PROZENT})
</td><td align=right>{WK_CUR} -{switch_rabattgutschein.GUTSCHEIN_WERT}
</td></tr>
</table>
<!-- END switch_rabattgutschein -->

<hr>

<table width=100%><tr><td>
<b>{VERSANDART_NAME}</b> {VERSANDART}
</td><td align=right>{WK_CUR} {VERSANDART_KOSTEN}
</td></tr></table>

<hr>

<table width=100%><tr><td>
<b>{RECHNUNGSART_NAME}</b> {RECHNUNGSART}
</td><td align=right>{WK_CUR} {RECHNUNGSART_KOSTEN}
</td></tr></table>

<hr>

<table width=100%><tr><td align=right>
<b>{WK_SUMME_NAME} {WK_CUR} {SUMME}</b>
</tD></tR>

<!-- BEGIN tax -->
<tr><td align=right>
{tax.TAX_HINWEIS} {tax.TAX_WERT}% {tax.TAX_NAME} {WK_CUR} {tax.TAX}
</tD></tr>
<!-- END tax -->

<!-- BEGIN switch_wertgutschein -->
<tr><td align=right>
{switch_wertgutschein.GUTSCHEIN_TYP} ({switch_wertgutschein.GUTSCHEIN_NR}) {WK_CUR} -{switch_wertgutschein.GUTSCHEIN_WERT}
</td></tr>
<!-- END switch_wertgutschein -->

<tr><td align=right>
<b>{WK_GESAMT_SUMME_NAME} {WK_CUR} {WK_GESAMT_SUMME}</b>
</tD></tR>
</table>

<hr>

<b>{BEMERKUNG_HINWEIS}</b><br><br>



<table width=100%>
<tr><td>
{BEMERKUNG_VALUE}
</td></tr></table>