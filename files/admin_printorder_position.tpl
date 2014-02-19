<tr class={TABLE_BG_COL_COLOR}>
	<td>
		{WK_INHALT_POSITION}
	</td>
	<td>
		{WK_INHALT_ARTIKEL_NR}
	</td>
	<td>
		<b>{WK_INHALT_NAME}</b>
	</td>
	<td align="right" valign=bottom rowspan=2>
		<b>{WK_CUR} {WK_INHALT_GESAMTPREIS}</b>
	</td>
</tr>
<tr class={TABLE_BG_COL_COLOR}>
	<td colspan=2>&nbsp;</td>
	<td align=left>
		<table width=100%>
			<tr>
				<td width='150'>Menge:</td>
				<td width='auto'>
					<b>{WK_INHALT_MENGE} </b> x {WK_CUR} {WK_INHALT_EINZELPREIS}
				</td>
				<td valign='top' width='100'>{WK_CUR} {WK_INHALT_MENGENPREIS}</td>
			</tr>
			<!-- BEGIN auswahlfelder -->
			<tr>
				<td align='left'>{auswahlfelder.WK_INHALT_AUSWAHL_NAME}:</td>
				<td align='left'>{auswahlfelder.WK_INHALT_AUSWAHL_WERT} ({auswahlfelder.WK_INHALT_AUSWAHL_EINZELPREIS_INFO})</td>
				<td align='left' valign='top'>{WK_CUR} {auswahlfelder.WK_INHALT_AUSWAHL_MENGENPREIS}</td>
			</tr>	
			<!-- END auswahlfelder -->
			
			<!-- BEGIN auswahlfelder2 -->
			<tr>
				<td align=left valign=top>{auswahlfelder2.WK_INHALT_AUSWAHL_NAME}:</td>
				<td align=left colspan=2>{auswahlfelder2.WK_INHALT_AUSWAHL_WERT}</td>
			</tr>	
			<!-- END auswahlfelder2 -->
		</table>
	</td>
</tr>