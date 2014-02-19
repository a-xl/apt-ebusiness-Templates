 <fieldset style="width:95%">
	<legend >{LOGIN_INFO_LEGEND}</legend>
	{LOGIN_INFO_TEXT}
</fieldset>
<br>
<fieldset style="width:95%">
	<legend >{REGISTER_LEGEND}</legend>
	<table width="100%" cellpadding="4" cellspacing="1" border="0" align="center">
	<form action="{ACCOUNT_ACTION}" method="post" target="_top">
	  <tr>
		<td ><table border="0" cellpadding="3" cellspacing="1" width="100%">
			  <tr> 
				<td align="left">
					{REGISTER_TEXT}
				</td>
			  </tr>
			  <tr align="center">
				<td ><input type=button value="{REGISTER_BUTTON}" onclick="window.location.href='{REGISTER_ACTION}'"></FORM></td>
			  </tr>
			</table></td>
	  </tr>
	</form>
	</table>
</fieldset>
<br>
<fieldset style="width:95%">
	<legend >{LOGIN_LEGEND}</legend>
	<table width="100%" cellpadding="4" cellspacing="1" border="0" align="center">
	<form action="{LOGIN_ACTION}" method="post" target="_top">
	  <tr>
	  	<td>
	  	<!-- BEGIN switch_error_value -->
			<div class="error"> {switch_error_value.LOGIN_FORM_ERROR} </div>
		<!-- END switch_body_value -->
	  	</td>
	  	</tr><tr>
		<td ><table border="0" cellpadding="3" cellspacing="1" width="100%">
			  <tr> 
				<td width="45%" align="right">{LOGIN_EMAIL}</td>
				<td> 
				  <input type="text" name="custemail" class="post" size="25" maxlength="255" value="{CUSTEMAIL}" />
				</td>
			  </tr>
			  <tr> 
				<td align="right">{LOGIN_PASSWORT}</td>
				<td> 
				  <input type="password" name="custpassword" class="post" size="25" maxlength="32" />
				</td>
			  </tr>
			  <tr align="center"> 
				<td colspan="2">{LOGIN_HIDDEN}<input type="submit" name="login"  value="{LOGIN_BUTTON}" /></td>
			  </tr>
			  <tr align="center"> 
				<td colspan="2"><a href="{SEND_PASSWORD_ACTION}" >{SEND_PASSWORD}</a></td>
			  </tr>
			  <!--
			  <tr align="center">
				<td colspan="2"><a href="{REGISTER_ACTION}" >{REGISTER}</a></td>
			  </tr>
			  -->
			</table></td>
	  </tr>
	</form>
	</table>
</fieldset>

