<!-- BEGIN switchblock_user_logged_out -->
<div class=bg17>{LOGIN_NAME}</div>
<div style="{BG_IMG_32}"><div style="padding:{PIXELABSTAND-MENUEBLOCK}px;">
    <FORM action="{LOGIN_ACTION}" method=post style="margin:0px;"><font class=f16>
<B>{LOGIN_EMAIL}</B></font><BR>
    {LOGIN_HIDDEN}
    <INPUT size=20 name=custemail><BR><font class=f16>
<B>{LOGIN_PASSWORT}</B></font><BR>
    <INPUT type=password  size=20 name=custpassword><BR>
    <INPUT type=submit name=login value="{LOGIN_BUTTON}"> <input type=button value="{REGISTER}" onclick="window.location.href='{REGISTER_ACTION}'"></FORM>
<font class=f16>
<br><a href="{SEND_PASSWORD_ACTION}" >{SEND_PASSWORD}</a>
</font></div></div>
<!-- END switchblock_user_logged_out -->

<!-- BEGIN switchblock_user_logged_in -->
<div class=bg18>{CUST_M_NAME}</div>
<div style="{BG_IMG_33}"><div style="padding:{PIXELABSTAND-MENUEBLOCK}px;"><font class=f16>
            <a href={CUST_M_HOME_ACTION}>{CUST_M_HOME}</a><br>
            <a href={CUST_M_DATEN_ACTION}>{CUST_M_DATEN}</a><br>
            <a href={CUST_M_ORDER_ACTION}>{CUST_M_ORDER}</a><br>
            <a href={LOGOUT_ACTION}>{LOGOUT_NAME}</a><br>
</font></div></div>
<!-- END switchblock_user_logged_in -->

<div style="height:{PIXELABSTAND-MENUEBLOCK-ZWISCHEN}px;">
</div>
