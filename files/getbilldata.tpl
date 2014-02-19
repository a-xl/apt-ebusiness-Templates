<!-- BEGIN switch_show_all -->
<table width=100%><tr><td><b>{RECHNUNGSADRESSE_NAME}</b></td>
<td align=right><input type=button value='{RECHNUNGSADRESSE_BUTTON_NAME}' onclick=window.location.href='{RECHNUNGSADRESSE_BUTTON_ACTION}'></tD></tR></table>


<table>
<tR><td>
{BILL_FIRMA}<br>{BILL_ANREDE} {BILL_VNAME} {BILL_NNAME}
<br>{BILL_STRASSE} {BILL_HNR}<br>{BILL_ZUSATZ}<br>{BILL_PLZ} {BILL_ORT}<br>{BILL_LAND}<br>{BILL_STATE}
</tD></tR>
</table>
<hr>
<center>{KEINE_ZAHLUNGSWEISE}</center>

<form action={RECHNUNGSART_ACTION} method=post>
<!-- BEGIN show_payments -->
<table width=100%>
<tR><td width=1 ><input type=radio name=rechnungsart value='{switch_show_all.show_payments.ID}_{switch_show_all.show_payments.REAL_PREIS}' {switch_show_all.show_payments.BUTTON_CHECK}></td>
<td ><b>{switch_show_all.show_payments.NAME}</b>
{switch_show_all.show_payments.HINWEIS}</td>
<td valign=top align=right nowrap><b>{switch_show_all.show_payments.FORMATED_PREIS}</b>
<bR>{switch_show_all.show_payments.STEUER_HINWEIS}
</td>


</tr>
</table><br>
<!-- END show_payments -->
<hr>
<table width=100%><tr><td align=right><input type=submit {DISABLED_BUTTON} value={RECHNUNGSART_BUTTON_NAME}>
</tD></tr></form>
</table>
<!-- END switch_show_all -->


<!-- BEGIN switch_show_rechnungsadresse -->
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
<form id=f1 name=f1 action={RECHNUNGSADRESSE_ACTION} method=post>
<tr><td><td colspan=2>{RECHNUNGSADRESSE_HINWEIS}</td></tr>

<tr><td>{FORM_FIRMA}</td><td><input type=text size=40 name=firma value='{BILL_FIRMA}'></td></tr>
<tr><td>{FORM_ANREDE}</td><td><select name=anrede>{BILL_ANREDE}</select></td></tr>
<tr><td>{FORM_VNAME}</td><td><input type=text size=40 name=vname value='{BILL_VNAME}'></td></tr>
<tr><td>{FORM_NNAME}</td><td><input type=text name=nname size=40 value='{BILL_NNAME}'></td></tr>
<tr><td>{FORM_STRASSE}</td><td><input type=text size=40 name=strasse value='{BILL_STRASSE}'> <input type=text size=4 name=hnr value='{BILL_HNR}'></td></tr>
<tr><td>{FORM_ZUSATZ}</td><td><input type=text name=zusatz size=40 value='{BILL_ZUSATZ}'></td></tr>
<tr><td>{FORM_PLZ}</td><td><input type=text name=plz size=10 value='{BILL_PLZ}'></td></tr>
<tr><td>{FORM_ORT}</td><td><input type=text name=ort size=40 value='{BILL_ORT}'></td></tr>
<tr><td>{FORM_LAND}</td><td><select id=land name=land onChange=javascript:updateState(f1.land.value);>{BILL_LAND}</select></td></tr>
<tr id=stateListe style="{STATE_STYLE}"><td>{FORM_STATE}</td><td><select id=cust_state name=cust_state>
{STATE_LISTE}
</select></td>
</tr>

</table>
<hr>
<table width=100%><tr><td align=right><input type=submit value={RECHNUNGSADRESSE_BUTTON_NAME}>
</tD></tr></form>
</table>
<!-- END switch_show_rechnungsadresse -->

