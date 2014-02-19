<!-- BEGIN newsletter_block -->
<div class=bg28>{NEWSLETTER_NAME}</div>
<div style="{BG_IMG_37}"><div style="padding:{PIXELABSTAND-MENUEBLOCK}px;">
    <FORM action="{newsletter_block.ACTION}" method=post style="margin:0px;">
    	<font class="f16"><B>{newsletter_block.VNAME_TITLE}</B></font><BR/>
   	<INPUT size="20" name="vname"><BR/>
   	<font class="f16"><B>{newsletter_block.NNAME_TITLE}</B></font><BR/>
    	<INPUT type="text"  size="20" name="nname"><BR/>
    	<font class="f16"><B>{newsletter_block.EMAIL_TITLE}</B></font><BR/>
    	<INPUT type="text"  size="20" name="email"><BR/>
	<!--
		<img id="siimage" style="border: 1px solid #000;" src="{newsletter_block.CAPTCHA_SRC}" alt="CAPTCHA Image" align="left" width="140">
		<object title="{newsletter_block.CAPTCHA_READ}" type="application/x-shockwave-flash" data="./lib/securimage/securimage_play.swf?audio_file=./lib/securimage/securimage_play.php&amp;bgColor1=#fff&amp;bgColor2=#fff&amp;iconColor=#777&amp;borderWidth=1&amp;borderColor=#000" height="32" width="32">
	   	 <param name="movie" value="./lib/securimage/securimage_play.swf?audio_file=./lib/securimage/securimage_play.php&amp;bgColor1=#fff&amp;bgColor2=#fff&amp;iconColor=#777&amp;borderWidth=1&amp;borderColor=#000">
		</object>
		&nbsp;
		<a tabindex="-1" style="border-style: none;" href="#" title="{newsletter_block.CAPTCHA_RELOAD}" onclick="document.getElementById('siimage').src = './lib/securimage/securimage_show.php?sid=' + Math.random(); this.blur(); return false"><img src="./lib/securimage/images/refresh.png" alt="{newsletter_block.CAPTCHA_RELOAD}" onclick="this.blur()" align="bottom" border="0"></a><br />
		<font class=f16><strong>{newsletter_block.CAPTCHA_TITLE}</strong></font><br />
		<input type="text" name="captcha" size="12" maxlength="8" class="{newsletter_block.FORM_CAPTCHA_CLASS}"/>
		<span class="error">{newsletter_block.CAPTCHA_ERROR}</span>
	-->
	{newsletter_block.HINWEIS}
    	<INPUT type="submit" value="{newsletter_block.SUBMIT_BUTTON_TEXT}">
    </FORM>
</div></div>

<div style="height:{PIXELABSTAND-MENUEBLOCK-ZWISCHEN}px;">
</div>
<!-- END newsletter_block -->