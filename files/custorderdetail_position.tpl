<tr class={TABLE_BG_COL_COLOR}>
	<td rowspan=2>
		{WK_INHALT_POSITION}
	</td>
	<td rowspan=2>
		{WK_IMG}
	</tD>
	<td>
		{WK_INHALT_ARTIKEL_NR}
	</td> 
	<td>
		{WK_LINK}<b>{WK_INHALT_NAME}</b></a>
	</td>
	<td align="right" valign=bottom >
		<b>{WK_CUR} {WK_INHALT_GESAMTPREIS}</b>
	</td>
</tr>
<tr class={TABLE_BG_COL_COLOR}>
	<td >{WK_INHALT_ARTIKEL_DOWNLOADLINK}</td>
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
	<td align=right valign=bottom>
<!-- BEGIN inbasket -->
	<div class="basket_box" style="{BASKET_BOX_STYLE}">
							<form action="{BASKET_FORM_ACTION}" method="post">
								{inbasket.BASKET_FORM_HIDDEN_FIELDS}
								<span class="quantity_changer">
									<input id="quantity_field_{inbasket.DIV_ID}" type="text" size="2" name="wunschmenge" value="{WK_INHALT_MENGE}"}>
									<label for="quantity_field_{inbasket.DIV_ID}">{inbasket.WK_INHALT_ART_UNIT}</label>
								</span>
								<button class="add_to_basket" title="{BASKET_BUTTON_TITLE}" type="submit">
									<img title="{BASKET_BUTTON_TITLE}" alt="{BASKET_BUTTON_ALT}" src="images/spacer.gif">
								</button>
							</form>
						</div>
<!-- END inbasket -->						
	</td>
</tr>