<!-- BEGIN switch_unsubscribe -->
{switch_unsubscribe.SUCESS_HINWEIS}</font><br><br>
<!-- END switch_unsubscribe -->

<!-- BEGIN switch_sucess -->
{switch_sucess.SUCESS_HINWEIS}</font><br><br>
<!-- END switch_sucess -->

<!-- BEGIN switch_error -->
<font class=f19>{switch_error.ERROR}</font><br><br>
<!-- END switch_error -->

<!-- BEGIN show_form -->
<b>{NEWSLETTER_HINWEIS}<b/><br/><br/>

<form method="post" action="{NEWSLETTER_FORM_ACTION}" name="{NEWSLETTER_FORM_NAME}" id="{NEWSLETTER_FORM_NAME}">
  <input type="hidden" name="do" value="contact" />
  <p>
    <strong>{NEWSLETTER_FORM_VNAME_TITLE} *</strong><br/>
    <input type="text" name="vname" size="35" value="{NEWSLETTER_FORM_VNAME_VALUE}" class="{NEWSLETTER_FORM_VNAME_CLASS}"/>
    <span class="error">{NEWSLETTER_FORM_VNAME_ERROR}</span>
  </p>
  <p>
    <strong>{NEWSLETTER_FORM_NNAME_TITLE} *</strong><br/>
    <input type="text" name="nname" size="35" value="{NEWSLETTER_FORM_NNAME_VALUE}" class="{NEWSLETTER_FORM_NNAME_CLASS}"/>
    <span class="error">{NEWSLETTER_FORM_NNAME_ERROR}</span>
  </p>
  <p>
    <strong>{NEWSLETTER_FORM_EMAIL_TITLE} *</strong><br/>
    <input type="text" name="email" size="35" value="{NEWSLETTER_FORM_EMAIL_VALUE}" class="{NEWSLETTER_FORM_EMAIL_CLASS}"/>
    <span class="error">{NEWSLETTER_FORM_EMAIL_ERROR}</span>
  </p>
  <p>
    <img id="siimage" style="border: 1px solid #000; margin-right: 15px" src="{NEWSLETTER_FORM_CAPTCHA_SRC}" alt="CAPTCHA Image" align="left">
    <object title="{NEWSLETTER_FORM_CAPTCHA_READ}" type="application/x-shockwave-flash" data="./lib/securimage/securimage_play.swf?audio_file=./lib/securimage/securimage_play.php&amp;bgColor1=#fff&amp;bgColor2=#fff&amp;iconColor=#777&amp;borderWidth=1&amp;borderColor=#000" height="32" width="32">
    <param name="movie" value="./lib/securimage/securimage_play.swf?audio_file=./lib/securimage/securimage_play.php&amp;bgColor1=#fff&amp;bgColor2=#fff&amp;iconColor=#777&amp;borderWidth=1&amp;borderColor=#000">
    </object>
    &nbsp;
    <a tabindex="-1" style="border-style: none;" href="#" title="{NEWSLETTER_FORM_CAPTCHA_RELOAD}" onclick="document.getElementById('siimage').src = './lib/securimage/securimage_show.php?sid=' + Math.random(); this.blur(); return false"><img src="./lib/securimage/images/refresh.png" alt="{NEWSLETTER_FORM_CAPTCHA_RELOAD}" onclick="this.blur()" align="bottom" border="0"></a><br />
    <strong>{NEWSLETTER_FORM_CATCHA_TITLE} *</strong><br />
    {NEWSLETTER_FORM_CAPTCA_ERROR}
    <input type="text" name="captcha" size="12" maxlength="8" class="{NEWSLETTER_FORM_CAPTCHA_CLASS}"/>
    <span class="error">{NEWSLETTER_FORM_CAPTCHA_ERROR}</span>
  </p>
  <p>
    <br/>
    <input type="submit" value="{NEWSLETTER_FORM_SUBMIT_BUTTON_TEXT}">
  </p>
</form>
*) {HINWEIS_FELDER}
<!-- END show_form -->