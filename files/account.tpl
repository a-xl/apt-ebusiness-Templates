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
		}
	);
}
function enablePW(){
	$('password').enable();
	$('password_again').enable();
}
function disablePW(){
	$('password').disable();
	$('password_again').disable();
}
</script>

<!-- BEGIN switch_error -->
<font class=f19>{switch_error.ERROR}</font>
<!-- END switch_error -->
<!--<a href={KUNDE_ACTION}>{KUNDE_NAME}</a><br><br>-->

<script type="text/javascript">
<!--
function chkFormular()
{
 if(!document.f1.datenschutz.checked)  {
   alert("{DATENSCHUTZ_ERROR}!");
   return false;
  }
}
//-->
</script>
<table width=100%><form id=f1 name=f1 action='{FORM_ACTION}' {FORM_ZUSATZ}  method=post>



<tr><td><b>{N_FIRMA}</td><td>
<input class='{C_V_FIRMA}' type=text name=cust_firma value='{V_FIRMA}' size=55>
<span class='f19'><br>{E_FIRMA}</span>
</td></tr>

<tr><td><b>{N_ANREDE}</td>
<td><select name=cust_anrede>
{V_ANREDE}
</select></td></tr>


<tr><td><b>{N_NNAME} *</td><td>
<input class='{C_V_NNAME}' type=text name=cust_nname value='{V_NNAME}' size=55>
<span class='f19'><br>{E_NNAME}</span>
</td></tr>

<tr><td><b>{N_VNAME} *</td><td>
<input class='{C_V_VNAME}' type=text name=cust_vname value='{V_VNAME}' size=55>
<span class='f19'><br>{E_VNAME}</span>
</td></tr>

<tr><td><b>{N_STRASSE} *</td>
<td><input class='{C_V_STRASSE}' type=text name=cust_strasse value='{V_STRASSE}' size=45> 
<input class='{C_V_HNR}' type=text name=cust_hnr value='{V_HNR}' size=5>
<span class='f19'><br>{E_STRASSE_HNR}</span>
</td></tr>


<tr><td><b>{N_ZUSATZ}</td><td>
<input class='{C_V_ZUSATZ}' type=text name=cust_zusatz value='{V_ZUSATZ}' size=55>
<span class='f19'><br>{E_ZUSATZ}</span>
</td></tr>

<tr><td><b>{N_PLZ_ORT} *</td><td>
<input class='{C_V_PLZ}' type=text name=cust_plz value='{V_PLZ}' size=10> 
<input class='{C_V_ORT}' type=text name=cust_ort value='{V_ORT}' size=40>
<span class='f19'><br>{E_PLZ_ORT}</span>
</td></tr>

<tr><td><b>{N_LAND} *</td><td>
<select class='{C_V_LAND}' id=cust_land name=cust_land onChange=javascript:updateState(f1.cust_land.value);>{V_LAND}</select>
<span class='f19'><br>{E_LAND}</span>
</td></tr>
<tr id=stateListe style="{STATE_STYLE}"><td><b>{N_STATE} *</td><td>
<select class='{C_V_STATE}' id=cust_state name=cust_state>{STATE_LISTE}</select>
<span class='f19'><br>{E_STATE}</span>
</td>
</tr>
<tr><td> </td></tr>

<!-- BEGIN switch_fon -->
<tr><td><b>{N_TEL}</td><td>
<input class='{C_V_TEL_VORWAHL}' type=text name=cust_tel_vorwahl value='{V_TEL_VORWAHL}' size=6> 
<input class='{C_V_TEL}' type=text name=cust_tel value='{V_TEL}' size=43>
<span class='f19'><br>{E_TEL}</span>
</td></tr>
<!-- END switch_fax -->

<!-- BEGIN switch_fax -->
<tr><td><b>{N_FAX}</td><td>
<input class='{C_V_FAX_VORWAHL}' type=text name=cust_fax_vorwahl value='{V_FAX_VORWAHL}' size=6>
<input class='{C_V_FAX}' type=text  name=cust_fax value='{V_FAX}' size=43>
<span class='f19'><br>{E_FAX}</span>
</td></tr>
<!-- END switch_fax -->

<!-- BEGIN switch_mobil -->
<tr><td><b>{N_MOBIL}</td><td>
<input class='{C_V_MOBIL_VORWAHL}' type=text name=cust_mobil_vorwahl value='{V_MOBIL_VORWAHL}' size=6> 
<input class='{C_V_MOBIL}' type=text name=cust_mobil value='{V_MOBIL}' size=43>
<span class='f19'><br>{E_MOBIL}</span></td></tr>
<!-- END switch_mobil -->

<!-- BEGIN switch_website -->
<tr><td><b>{N_WEBSEITE}</td><td>
<input class='{C_V_WEBSEITE}' type=text name=cust_webseite value='{V_WEBSEITE}' size=55>
<span class='f19'><br>{E_WEBSEITE}</span>
</td></tr>
<!-- END switch_website -->

<!-- BEGIN switch_birthday -->
<tr><td><b>{N_BIRTHDAY}</td><td>
<select class='{C_V_BIRTHDAY_DAY}' name='cust_birthday[day]'>{V_BIRTHDAY_DAY_OPTIONS}</select>
<select class='{C_V_BIRTHDAY_MONTH}' name='cust_birthday[month]'>{V_BIRTHDAY_MONTH_OPTIONS}</select>
<select class='{C_V_BIRTHDAY_YEAR}' name='cust_birthday[year]'>{V_BIRTHDAY_YEAR_OPTIONS}</select>
<span class='f19'><br>{E_BIRTHDAY}</span>
</td></tr>
<!-- END switch_birthday -->

<tr><td><b>{N_EMAIL} *</td><td>
<input class='{C_V_EMAIL}' type=text name=cust_email value='{V_EMAIL}' size=55>
{EMAIL_HINWEIS}
<span class='f19'><br>{E_EMAIL}</span></td></tr>

<!-- BEGIN switch_ustid -->
<tr><td><b>{N_USTID}</td><td>
<input class='{C_V_USTID}' type=text name=cust_ustid value='{V_USTID}' size=20>
<span class='f19'><br>{E_USTID}</span>
</td>
</tr><tR><td colspan=2>{USTID_HINWEIS}</td></tR>
<!-- END switch_ustid -->

<tr><td> </td></tr>
<!-- BEGIN switch_kundenkonto -->
<tr><td colspan=2><b>{KUNDENKONTO_HEADLINE}</b><bR>{KUNDENKONTO_HINWEIS}</td></tr>

<tr><td><b>{N_KUNDENKONTO}</td><td>
<input  type=radio name=cust_kk value='1' {V_KK_YES} onClick=javascript:enablePW();> {N_KK_YES} <input  type=radio name=cust_kk value='0' {V_KK_NO} onClick=javascript:disablePW();> {N_KK_NO}
</td></tr>
<!-- END switch_kundenkonto -->
<tr><td><b>{N_PASSWORT} *</td><td>
<input class='{C_V_PASSWORT}' type=password id=password name=password value='{V_PASSWORT}' {PW_ZUSATZ} size=40>
<span class='f19'><br>{E_PASSWORT}</span>
</td></tr>

<tr><td><b>{N_PASSWORT_AGAIN} *</td><td>
<input class='{C_V_PASSWORT_AGAIN}' type=password id=password_again name=password_again value='{V_PASSWORT_AGAIN}' {PW_ZUSATZ} size=40>
<span class='f19'><br>{E_PASSWORT_AGAIN}</span>
</td></tr>

<!-- BEGIN switch_datenschutz -->
<tr><td> </td></tr>
<tr><td align="right"><b><input type=checkbox name=datenschutz {V_DATENSCHUTZ} value=1></td>
<td> {DATENSCHUTZ_HINWEIS} <a href={DATENSCHUTZ_T_ACTION} target=_blank>{DATENSCHUTZ_T_NAME}</a></td></tr>
<!-- END switch_datenschutz -->

{HIDDEN_FIELDS}

</table>

<table width=100%><tr><td align=right><input type=submit value='{BUTTON_NAME}'>
</td></tR></form></table>
<hR>
*) {HINWEIS_FELDER}