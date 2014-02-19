<fieldset style="width:95%">
	<legend >{PASSWORT_INFO_LEGEND}</legend>
	{PASSWORT_REMIND}
</fieldset>

<fieldset style="width:95%">
	<legend >{PASSWORT_LEGEND}</legend>
	<table width="100%" cellpadding="4" cellspacing="1" border="0" align="center">
	<form action="{SEND_ACTION}" method="post" target="_top">
	  <tr>
	  	<td>
	  	<!-- BEGIN switch_error_value -->
			<div class="error"> {switch_error_value.PASSWORT_FORM_ERROR} </div>
		<!-- END switch_body_value -->
	  	</td>
	  	</tr><tr>
		<td ><table border="0" cellpadding="3" cellspacing="1" width="100%">
			  <tr> 
				<td width="45%" align="right">{EMAIL_NAME}</td>
				<td> 
				  <input type="text" name="custemail" class="post" size="25" maxlength="40" value="{CUSTEMAIL}" />
				</td>
			  </tr>
			  <tr> 
				<td align="right">{PLZ_NAME}</td>
				<td> 
				  <input type="text" name="custplz" class="post" size="25" maxlength="32" />
				</td>
			  </tr>
			  <tr align="center"> 
				<td colspan="2">{LOGIN_HIDDEN}<input type="submit" name="pass"  value="{BUTTON_NAME}" /></td>
			  </tr>
			</table></td>
	  </tr>
	</form>
	</table>
</fieldset>

