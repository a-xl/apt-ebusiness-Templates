<div id="image_box">
		<div class="image_bg">
			<div id="image_wrap">
				<a href="{ARTIKEL_IMG_1_SRC}" class="cloud-zoom" id="zoom_image" title="{ARTIKEL_IMG_1_TITLE}" rel="{ARTIKEL_IMG_1_ZOOM_OPTIONS}" 
					artid="{ARTIKEL_ID}"
					picid="{ARTIKEL_IMG_1_ID}" 
					thumb1src="{ARTIKEL_IMG_THUMB_1_1_SRC}" 
					thumb2src="{ARTIKEL_IMG_THUMB_2_1_SRC}" 
					thumb3src="{ARTIKEL_IMG_THUMB_3_1_SRC}"
				>
					{ARTIKEL_IMG_THUMB_2_1}
				</a>
			</div>
			<!-- BEGIN switch_show_toolbox -->
			<div id="image_toolbox">
				<a class="toolbox_zoom_button" href="{ARTIKEL_IMG_1_SRC}" title="{TOOL_ZOOM_LABEL}"><img src="images/spacer.gif"></a>
			</div>
			<!-- END switch_show_toolbox -->
		</div>
</div>

<!-- BEGIN switch_show_thumbs -->
<div id="thumb_box">
	<!-- BEGIN switch_show_navi_buttons -->
		<a class="prev browse left"><span></span></a>
	<!-- END switch_show_navi_buttons -->

	<div class="scrollable">   
	 
	   <div class="items">
			<div class="slide">
			<!-- BEGIN thumbs -->
				<a href='{switch_show_thumbs.thumbs.ART_IMG_SRC}' class='cloud-zoom-gallery' title='{switch_show_thumbs.thumbs.ART_IMG_TITLE}' rel="{switch_show_thumbs.thumbs.ART_IMG_THUMB_ZOOM_OPTIONS}"
					artid="{ARTIKEL_ID}" 
					picid="{switch_show_thumbs.thumbs.ART_IMG_ID}" 
					thumb1src="{switch_show_thumbs.thumbs.ART_IMG_THUMB_1_SRC}" thumb1height="{switch_show_thumbs.thumbs.ART_IMG_THUMB_1_HEIGHT}" thumb1width="{switch_show_thumbs.thumbs.ART_IMG_THUMB_1_WIDTH}" 
					thumb2src="{switch_show_thumbs.thumbs.ART_IMG_THUMB_2_SRC}" thumb2height="{switch_show_thumbs.thumbs.ART_IMG_THUMB_2_HEIGHT}" thumb2width="{switch_show_thumbs.thumbs.ART_IMG_THUMB_2_WIDTH}" 
					thumb3src="{switch_show_thumbs.thumbs.ART_IMG_THUMB_3_SRC}" thumb3height="{switch_show_thumbs.thumbs.ART_IMG_THUMB_3_HEIGHT}" thumb3width="{switch_show_thumbs.thumbs.ART_IMG_THUMB_3_WIDTH}" 
				>
					<div>{switch_show_thumbs.thumbs.ART_IMG_THUMB_1}</div>
				</a>
				{switch_show_thumbs.thumbs.SLIDE_BOX_DELIMITER}
		  <!-- END thumbs -->
		  </div>
	   </div>  
	
	</div>

	
	<!-- BEGIN switch_show_navi_buttons -->
		<a class="next browse right"><span></span></a>
	<!-- END switch_show_navi_buttons -->
	<div style="clear:both"></div>
</div>
<!-- END switch_show_thumbs -->