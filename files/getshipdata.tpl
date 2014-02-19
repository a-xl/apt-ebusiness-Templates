<!-- BEGIN switch_show_all -->
<table width=100%><tr><td><b>{VERSANDADRESSE_NAME}</b></td>
<td align=right><input type=button value='{VERSANDADRESSE_BUTTON_NAME}' onclick=window.location.href='{VERSANDADRESSE_BUTTON_ACTION}'></tD></tR></table>


<table>
<tR><td>
{SHIP_FIRMA}<br>{SHIP_ANREDE} {SHIP_VNAME} {SHIP_NNAME}
<br>{SHIP_STRASSE} {SHIP_HNR}<br>{SHIP_ZUSATZ}<br>{SHIP_PLZ} {SHIP_ORT}<br>{SHIP_LAND}<bR>{SHIP_STATE}
</tD></tR>
</table>
<hr>
<!-- BEGIN switch_show_shipping_select -->
<table width=100%>
<form action={VERSANDART_ACTION} method=post>
<td><td colspan=2>{VERSANDART_HINWEIS}</td></tr>
<tR><td align=right>{VERSANDART_NAME}</td><tD>
<select name=versandart>
{VERSANDART_OPTIONS}
</select>
</td>
</tR>
</table>
<hr>
<table width=100%><tr><td align=right><input type=submit value="{VERSANDART_BUTTON_NAME}"  {VERSANDART_OPTIONS_BUTTON_ATTR}>
</tD></tr></form>
</table>
<!-- END switch_show_shipping_select -->

<!-- BEGIN switch_show_noshipping_hinweis -->
{VERSAND_NOT_POSSIBLE}
<!-- END switch_show_noshipping_hinweis -->

<!-- END switch_show_all -->


<!-- BEGIN switch_show_versandadresse -->
<script type="text/javascript" charset="utf-8">
function updateState(country_id){
	new Ajax.Request('modules.php?func=getStateSelect',   {
		method: 'get',
		parameters: { country_id: country_id},
		onSuccess: function(transport){       
			var response = transport.responseText;
			if(response=='') $('stateListe').hide();
			else $('stateListe').show();
			$('cust_state').update(response);
		}
	});
}
</script>

<table width=100%>
<form id=f1 name=f1 action={VERSANDADRESSE_ACTION} method=post>
<tr><td><td colspan=2>{VERSANDADRESSE_HINWEIS}</td></tr>

<tr><td>{FORM_FIRMA}</td><td><input type=text size=40 name=firma value='{SHIP_FIRMA}'></td></tr>
<tr><td>{FORM_ANREDE}</td><td><select name=anrede>{SHIP_ANREDE}</select></td></tr>
<tr><td>{FORM_VNAME} *</td><td><input type=text size=40 name=vname value='{SHIP_VNAME}'></td></tr>
<tr><td>{FORM_NNAME} *</td><td><input type=text name=nname size=40 value='{SHIP_NNAME}'></td></tr>
<tr><td>{FORM_STRASSE} *</td><td><input type=text size=40 name=strasse value='{SHIP_STRASSE}'> <input type=text size=4 name=hnr value='{SHIP_HNR}'></td></tr>
<tr><td>{FORM_ZUSATZ}</td><td><input type=text name=zusatz size=40 value='{SHIP_ZUSATZ}'></td></tr>
<tr><td>{FORM_PLZ} *</td><td><input type=text name=plz size=10 value='{SHIP_PLZ}'></td></tr>
<tr><td>{FORM_ORT} *</td><td><input type=text name=ort size=40 value='{SHIP_ORT}'></td></tr>
<tr><td>{FORM_LAND}</td><td><select id=land name=land onChange=javascript:updateState(f1.land.value);>{SHIP_LAND}</select></td></tr>
<tr id=stateListe style="{STATE_STYLE}"><td>{FORM_STATE}</td><td><select id=cust_state name=cust_state>
{STATE_LISTE}
</select></td>
</tr>

</table>
<hr>
<table width=100%><tr><td align=right><input type=submit value={VERSANDADRESSE_BUTTON_NAME}>
</tD></tr></form>
</table>
*) {HINWEIS_FELDER}
<!-- END switch_show_versandadresse -->