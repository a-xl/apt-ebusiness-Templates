<p class="note">
{NOTIFICATION_FORM_INFO_TEXT}
</p>
<form method="post" action="{NOTIFICATION_FORM_ACTION}" name="{NOTIFICATION_FORM_NAME}" id="{NOTIFICATION_FORM_NAME}">
  <input type="hidden" name="do" value="contact" />
  <p>
    <strong>Name*:</strong><br/>
    <input type="text" name="name" size="35" value="{NOTIFICATION_FORM_NAME_VALUE}" class="{NOTIFICATION_FORM_NAME_CLASS}"/>
    <span class="error">{NOTIFICATION_FORM_NAME_ERROR}</span>
  </p>
  <p>
    <strong>Email*:</strong><br/>
    <input type="text" name="email" size="35" value="{NOTIFICATION_FORM_EMAIL_VALUE}" class="{NOTIFICATION_FORM_EMAIL_CLASS}"/>
    <span class="error">{NOTIFICATION_FORM_EMAIL_ERROR}</span>
  </p>
  <p>
    <img id="siimage" style="border: 1px solid #000; margin-right: 15px" src="{NOTIFICATION_CAPTCHA_SRC}" alt="CAPTCHA Image" align="left">
    <object type="application/x-shockwave-flash" data="./lib/securimage/securimage_play.swf?audio_file=./lib/securimage/securimage_play.php&amp;bgColor1=#fff&amp;bgColor2=#fff&amp;iconColor=#777&amp;borderWidth=1&amp;borderColor=#000" height="32" width="32">
    <param name="movie" value="./lib/securimage/securimage_play.swf?audio_file=./lib/securimage/securimage_play.php&amp;bgColor1=#fff&amp;bgColor2=#fff&amp;iconColor=#777&amp;borderWidth=1&amp;borderColor=#000">
    </object>
    &nbsp;
    <a tabindex="-1" style="border-style: none;" href="#" title="Refresh Image" onclick="document.getElementById('siimage').src = './lib/securimage/securimage_show.php?sid=' + Math.random(); this.blur(); return false"><img src="./lib/securimage/images/refresh.png" alt="Reload Image" onclick="this.blur()" align="bottom" border="0"></a><br />
    <strong>Enter Code*:</strong><br />
    {NOTIFICATION_FORM_CAPTCA_ERROR}
    <input type="text" name="captcha" size="12" maxlength="8" class="{NOTIFICATION_FORM_CAPTCHA_CLASS}"/>
    <span class="error">{NOTIFICATION_FORM_CAPTCHA_ERROR}</span>
  </p>
  <p>
    <br/>
    <input type="submit" value="{NOTIFICATION_FORM_SUBMIT_BUTTON_TEXT}">
  </p>
</form>