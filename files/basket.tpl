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
<hr>
<!-- END switch_artikel_crosssells -->


<!-- BEGIN switch_info_message -->
<p class="f32">{switch_info_message.MESSAGE}</p><hr>
<!-- END switch_info_message -->

<!-- BEGIN switch_error_message -->
<p class="f19">{switch_error_message.MESSAGE}</p><hr>
<!-- END switch_error_message -->

<script language="JavaScript">
<!--
	function troggle_all() {	
		for (var i = 0;i < document.{WK_FORM_NAME}.elements.length; i++){
			if(document.{WK_FORM_NAME}.elements[i].type == "checkbox"){
				document.{WK_FORM_NAME}.elements[i].checked = document.{WK_FORM_NAME}.allchecked.checked;
			}
		}
	}
//-->
</script>
{WK_SCRIPT_CODE}

<!-- BEGIN switch_wk_leer -->
	<br><center>{WK_LEER_HINWEIS}
	<br><br><input type=button value='{BACK_NAME}' onclick={BACK_ACTION}>
<!-- END switch_wk_leer -->

<!-- BEGIN switch_wk_voll -->
	<form name={WK_FORM_NAME} action={WK_FORM_ACTION} method=post>
		<table width=100%>
			<tr class={WK_HEAD_BG_COLOR}>
				<td width='25' align=center>
					<INPUT name='allchecked' onClick='troggle_all()' type='checkbox' value='*'>
				</td>
				<td width='100' align='center'><b>{WK_HEAD_BILD}</b></td>
				<td width='auto'align='left'><b>{WK_HEAD_PRODUKT}</b></td>
				<td width='100' align='center'><b>{WK_HEAD_GESAMTPREIS}</b></td>
			</tr>
			<!-- BEGIN inhalt -->
				{switch_wk_voll.inhalt.WK_ENTRY}
			<!-- END inhalt -->
		</table>
		<table width='100%'>
			<tr>
				<td align=left>
					<input type='submit' id='{WK_DEL_ACTION}' name='{WK_DEL_ACTION}' value='{WK_DEL_NAME}'>
					<input type='button' id='{WK_EDIT_ACTION}' name='{WK_EDIT_ACTION}'style="display:none"  value='{WK_EDIT_NAME}' onclick='{WK_EDIT_CODE}'>
				</td>
				<td align=right>
					<input type='hidden' id='{WK_JS_ACTION}' name='{WK_JS_ACTION}' value=''>
					<input type='submit' style="display:inline" id='{WK_CANCEL_EDIT_ACTION}' name='{WK_CANCEL_EDIT_ACTION}' value='{WK_CANCEL_EDIT_NAME}'>
					<input type='submit' style="display:inline" id='{WK_SAVE_EDIT_ACTION}' name='{WK_SAVE_EDIT_ACTION}' value='{WK_SAVE_EDIT_NAME}'>
				</td>
			</tr>
		</table>
		<table width=100%>
			<tr><td align=right>
			<b>{WK_SUMME_NAME}</b> {WK_CUR} {WK_SUMME}
			</tD></tR>
			<!-- BEGIN switch_skonto -->
			<tr><td align=right>
			<b>{WK_SKONTO_NAME}</b> {WK_CUR} -{WK_SKONTO}
			</tD></tR>
			<!-- END switch_skonto -->
			<!-- BEGIN tax -->
			<tr><td align=right>
			{switch_wk_voll.tax.TAX_HINWEIS} {switch_wk_voll.tax.TAX_WERT}% {switch_wk_voll.tax.TAX_NAME} {WK_CUR} {switch_wk_voll.tax.TAX}
			</tD></tr>
			<!-- END tax -->
			<tr><td align=right>
			<font class=f18>{WK_GESAMT_SUMME_NAME} {WK_CUR} {WK_GESAMT_SUMME}</font><bR>
			{ZZGL_NAME} <a href={LIEFERVERSAND_T_ACTION}>{LIEFERVERSAND_T_NAME}</a>
			</tD></tR>
		</table>
	</form>

	<!-- BEGIN minorder -->
	<table width=100%>
	<tr><td align=center>{switch_wk_voll.minorder.WK_MINDEST_BESTELLWERT_HINWEIS} <b>{WK_CUR} {switch_wk_voll.minorder.WK_MINDEST_BESTELLWERT}</b>
	</tD></tr></table>
	<!-- END minorder -->
	<br>

	<table width=100% border=0><tR><tD>
		<input type="button" title="{CONTINUE_SHOPPING}" value="{CONTINUE_SHOPPING}" onclick="{BACK_ACTION}">
	</td><td align=right>
		<!-- BEGIN checkout -->
		<form action={switch_wk_voll.checkout.WK_GOTO_KASSE_ACTION} method=post>
			<input type=submit value='{switch_wk_voll.checkout.WK_GOTO_KASSE_BUTTON_NAME}' {switch_wk_voll.checkout.WK_GOTO_KASSE_BUTTON_FREE}> {switch_wk_voll.checkout.PAYPAL_BUTTON}
		</form>
		<!-- END checkout -->
	</td></tr></table>
<!-- END switch_wk_voll -->

