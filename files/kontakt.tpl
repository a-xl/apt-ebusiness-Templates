<!-- BEGIN switch_fin -->
<b>{switch_fin.HINWEIS}</b>
<!-- END switch_fin -->

<!-- BEGIN switch_error -->
<font class=f19>{switch_error.ERROR}</font>
<!-- END switch_error -->

<!-- BEGIN switch_nofin -->
<table width=100%><form action='{FORM_ACTION}' method='post'>

<tr><td><b>{N_NAME}</td>
<td><input type='text' name='name' value='{V_NAME}' size='60'></td></tr>

<!-- BEGIN switch_subject_selector -->
<tr>
<td><b>{switch_nofin.switch_subject_selector.SUBJECT_LABEL} *</td>
<td><select name='subject'>{switch_nofin.switch_subject_selector.SELECTOR_OPTIONS}</select></td>
</tr>
<!-- END switch_subject_selector -->

<tr><td><b>{N_EMAIL} *</td>
<td><input type=text name=email value='{V_EMAIL}' size=60></td></tr>

<tr><td valign=top><b>{N_ANFRAGE} *</td>
<td><textarea name=anfrage cols=60 rows=15 >{V_ANFRAGE}</textarea></td></tr>

<tr><tD></tD><tD>
 <img id="siimage" style="border: 1px solid #000; margin-right: 15px" src="{KONTAKT_CAPTCHA_SRC}" alt="CAPTCHA Image" align="left">
    <object type="application/x-shockwave-flash" data="./lib/securimage/securimage_play.swf?audio_file=./lib/securimage/securimage_play.php&amp;bgColor1=#fff&amp;bgColor2=#fff&amp;iconColor=#777&amp;borderWidth=1&amp;borderColor=#000" height="32" width="32">
    <param name="movie" value="./lib/securimage/securimage_play.swf?audio_file=./lib/securimage/securimage_play.php&amp;bgColor1=#fff&amp;bgColor2=#fff&amp;iconColor=#777&amp;borderWidth=1&amp;borderColor=#000">
    </object>
    &nbsp;
    <a tabindex="-1" style="border-style: none;" href="#" title="Refresh Image" onclick="document.getElementById('siimage').src = './lib/securimage/securimage_show.php?sid=' + Math.random(); this.blur(); return false"><img src="./lib/securimage/images/refresh.png" alt="Reload Image" onclick="this.blur()" align="bottom" border="0"></a><br />
    <strong>Enter Code*:</strong><br />
    <input type="text" name="captcha" size="12" maxlength="8" class="{KONTAKT_FORM_CAPTCHA_CLASS}"/>
</tD></tr>
</table>
*) {HINWEIS_FELDER}

<table width=100%><tr><td align=right><input type=submit value='{BUTTON_NAME}'>
</td></tR></form></table>
<!-- END switch_nofin -->