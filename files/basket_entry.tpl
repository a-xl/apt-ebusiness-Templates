<tr class={TABLE_BG_COL_COLOR}>
	<td rowspan=2 align=center>
		<input type=checkbox name={WK_DEL_POS_ACTION}[] value={WK_INHALT_ENTRY_ID}>
		{WK_INHALT_SCRIPT_CODE}
	</td>
	<td rowspan=2 valign='top' align='center'>
		<a href={WK_INHALT_ART_ACTION}>{WK_INHALT_BILD}</a>
	</td>
	<td>
		<a href={WK_INHALT_ART_ACTION} class=l6>{WK_INHALT_NAME}</a> 
		({WK_HEAD_ARTIKEL_NR}: {WK_INHALT_ARTIKEL_NR}) <b>{WK_INHALT_PURCHASE_INFO}</b>
	</td>
	<td align=right>
		<input type='submit' style="display:none" id='{WK_INHALT_SAVE_EDIT_ACTION}' name='{WK_INHALT_SAVE_EDIT_ACTION}' value='{WK_INHALT_SAVE_EDIT_NAME}'>
	</td>
</tr>
<tr class={TABLE_BG_COL_COLOR}>
	<td align=left>
		<table width=100%>
			<tr>
				<td width='150'>Menge:</td>
				<td width='auto'>
					<b>{WK_INHALT_MENGENFELD}</b> x {WK_CUR} {WK_INHALT_EINZELPREIS}
					<br><span class="f19">{WK_MENGEN_ERROR}</span>
				</td>
				<td valign='top' width='100'>{WK_CUR} {WK_INHALT_MENGENPREIS}</td>
			</tr>
			<!-- BEGIN auswahlfelder -->
			<tr>
				<td align='left'>{auswahlfelder.WK_INHALT_AUSWAHL_NAME}:</td>
				<td align='left'>{auswahlfelder.WK_INHALT_AUSWAHL_FELD} {auswahlfelder.WK_INHALT_AUSWAHL_EINZELPREIS_INFO}</td>
				<td align='left' valign='top'>{WK_CUR} {auswahlfelder.WK_INHALT_AUSWAHL_MENGENPREIS}</td>
			</tr>	
			<!-- END auswahlfelder -->
			
			<!-- BEGIN auswahlfelder2 -->
			<tr>
				<td align=left valign=top>{auswahlfelder2.WK_INHALT_AUSWAHL_NAME}:</td>
				<td align=left colspan=2>{auswahlfelder2.WK_INHALT_AUSWAHL_FELD}</td>
			</tr>	
			<!-- END auswahlfelder2 -->
		</table>
	</td>
	<td align=right valign=bottom><b>{WK_CUR} {WK_INHALT_GESAMTPREIS}</b></td>
</tr>