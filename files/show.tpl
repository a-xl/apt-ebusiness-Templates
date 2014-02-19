<script type="text/javascript">
var zoomImage;
var currentPicId;
var thumbs = [];
var currentThumbIndex;

// execute your scripts when the DOM is ready
jQuery(document).ready(function(){	
	initImagesArea();
});

function initImagesArea(){
	zoomImage = jQuery('#zoom_image');
	if( zoomImage.attr("artId")){
		zoomImage.bind({
				click: function(event) {
					event.preventDefault();
					openGalleryWindow(jQuery(this).attr("artId"),jQuery(this).attr("picId"));
				},
				mouseenter: function(event) {
					jQuery("#image_toolbox .toolbox_zoom_button").addClass('active');
				},
				mouseleave: function(event) {
					jQuery("#image_toolbox .toolbox_zoom_button").removeClass('active');
				}	
		});
		jQuery("#image_toolbox .toolbox_zoom_button").click(function(event) {
			event.preventDefault();
			openGalleryWindow(zoomImage.attr("artId"),zoomImage.attr("picId"));
		});
	}else{
		zoomImage.click(function(event) { event.preventDefault();});
		zoomImage.css('cursor', 'default');
	}
	
	jQuery("#thumb_box .scrollable").scrollable();
	
	jQuery("#thumb_box .scrollable a").each(function(index) {
		thumb = jQuery(this);
		if(thumb.attr("picid") == zoomImage.attr("picid")){
			currentPicId = thumb.attr("picid");
			thumb.addClass("current");
		}
		thumbs.push(thumb);
	});
	
	jQuery.each(thumbs, function(i, thumb) {
		thumb.bind({
			mouseenter: function(event){
				changeWrapPic(this);
			},
			click:function(event){
				currentPicId = jQuery(this).attr("picId");
				// set Item Class 'current'
				jQuery.each(thumbs, function(i, thumb) {thumb.removeClass("current")});
				jQuery(this).addClass("current");
				event.preventDefault();
			}
		});
	});

	jQuery("#thumb_box .scrollable").bind({
		mouseleave: function(event) {
			if(zoomImage.attr("picid") != currentPicId){
				jQuery.each(thumbs, function(i, thumb) {
					if(thumb.attr("picid") == currentPicId)
						changeWrapPic(thumb);
				});
				
			}
		}	
	});
}

function changeWrapPic(srcDomObj){
	srcDomObj = jQuery(srcDomObj);
	// see if same thumb is being clicked
	if (srcDomObj.hasClass("active")) { return false; }
	//alert('mouseenter'+srcDomObj);
	// get handle to element that wraps the image and make it semi-transparent
	var wrap = jQuery("#image_wrap");
	wrap.fadeTo(0, 0.5);

	// the large image
	var img = new Image();
	
	// call this function after it's loaded
	img.onload = function() {
		// change the attributes of zoomImage Link
		
		zoomImage.attr("artid",srcDomObj.attr("artid"));
		zoomImage.attr("picid",srcDomObj.attr("picid"));
		zoomImage.attr("thumb1src", srcDomObj.attr("thumb1Src"));
		zoomImage.attr("thumb2src", srcDomObj.attr("thumb2Src"));
		zoomImage.attr("thumb3src", srcDomObj.attr("thumb3src"));
		zoomImage.attr("href", srcDomObj.attr("thumb3src"));
		
		var wrapImage = wrap.find("img");
		wrapImage.attr("src", srcDomObj.attr("thumb2Src"));
		wrapImage.attr("title", srcDomObj.attr("title"));
		
		if(srcDomObj.attr("thumb2Width") > 0)
			wrapImage.attr("width", srcDomObj.attr("thumb2Width"));
		else
			wrapImage.removeAttr('width');
			
		if(srcDomObj.attr("thumb2Height") > 0)
			wrapImage.attr("height", srcDomObj.attr("thumb2Height"));
		else
			wrapImage.removeAttr('height');
		
		//make wrapper fully visible
		wrap.fadeTo("fast", 1);
	};

	// begin loading the image
	img.src = srcDomObj.attr("thumb2Src");
	
	// set Item Class 'active'
	jQuery.each(thumbs, function(i, thumb) {thumb.removeClass("active")});
	srcDomObj.addClass("active");
}

function createImageZoom(){
	var options = {
		zoomWidth: 300,
		zoomHeight: 250,
		xOffset: 10,
		yOffset: 0,
		position: "right"
	};
	//jQuery("#zoom_image").unbind();
	//jQuery("#zoom_image").jqzoom(options);
	//jQuery("#zoom_image").loupe();
	//jQuery("#zoom_image").bezoom();
}

function openGalleryWindow(artId,picId){
	var galleryWindow = jQuery('#galleryWindow');
	galleryWindow.jqm({
		closeClass:'galleryWindowCloseBtn',
		ajax:'modules.php?class=ArtikelView&func=ajaxGalleryWindowHtml&artId='+artId+'&picId='+picId,
		target:'div.galleryWindowContent',
		onLoad:function(param){initGalleryWindow(picId);},
		modal: false,
		overlay: 80,
		toTop: true
	});
	galleryWindow.jqmShow();
}

function updateImagesArea(){
	$('basket_form').request({
	  method: 'post',
	  parameters: {'class':'ArtikelView','func':'ajaxGetImagesAreaByRequestData'},
	  onComplete: function(transport){
		if(!transport.responseText.empty()){
			var images_area = $('images_area');
			images_area.update(transport.responseText);
			initImagesArea();
		}
	  }
	});
}
</script>

<div class="show">
	<div class="top_area">
		<div id="images_area" class="images_area">{IMAGES_AREA}</div>
		{SHOPPING_AREA}
	</div>
	<div class="details_area">{DETAILS_AREA}</div>
	<!-- BEGIN switch_show_crossselling -->
		<span class="crossselling_label_text">{switch_show_crossselling.CROSSSELLING_INFO_TEXT}</span>
		<div class="crossselling_area">{switch_show_crossselling.CROSSSELLING_AREA}</div>
	<!-- END switch_show_crossselling -->
</div>