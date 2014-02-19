<!-- BEGIN show_hersteller -->
<div class=bg30 >{HERSTELLER_NAME}</div>
<div style="{BG_IMG_41}"><div style="padding:{PIXELABSTAND-MENUEBLOCK}px;"><center>
<script type="text/javascript">
	Event.observe(window, 'load', function() {
		var boxelement = $('firmselect_box');
		var element = $('firmselect');
		if(boxelement && element){
			if(boxelement.getWidth() < element.getWidth()){
				element.observe( 'focus', bringToFront );
				element.observe( 'blur', bringItBack );
			}
		}
});
function bringToFront(event){
	var element = $('firmselect_box');
	element.setStyle({
	  position: 'relative',
	  overflow:'visible',
	  zIndex:1000
	});
	return true;
}
function bringItBack(event){
	var element = $('firmselect_box');
	element.setStyle({
	  position: 'static',
	  overflow:'hidden',
	  zIndex:1
	});
	return true;
}
</script>
<br><form name="{HERSTELLERSUCHE_FORM_NAME}" action="{SUCHE_FORM_LINK}" method=post style="margin:0px;">
<div id="firmselect_box">{HERSTELLER_OPTIONS}</div>
</form><bR><font class=f15>
<!-- BEGIN switch_hersteller_abwahl -->
<a href="{HERSTELLER_ABWAHL_LINK}">{HERSTELLER_ABWAHL_NAME}</a>
<!-- END switch_hersteller_abwahl -->
</font></center>
</div>
</div>

<div style="height:{PIXELABSTAND-MENUEBLOCK-ZWISCHEN}px;">
</div>
<!-- END show_hersteller -->