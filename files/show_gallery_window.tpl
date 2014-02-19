<script type="text/javascript">
var gallery;
var currentThumbLink;

function initGalleryWindow(picId){
	// We only want these styles applied when javascript is enabled
	jQuery('div.content').css('display', 'block');
	
	// Initially set opacity on thumbs and add
	// additional styling for hover effect on thumbs
	var onMouseOutOpacity = 0.67;
	jQuery('#thumbs ul.thumbs li').opacityrollover({
		mouseOutOpacity:   onMouseOutOpacity,
		mouseOverOpacity:  1.0,
		fadeSpeed:         'fast',
		exemptionSelector: '.selected'
	});
	

	var captionOpacity = 0.5;
	// Initialize Advanced Galleriffic Gallery
	gallery = jQuery('#thumbs').galleriffic({
		delay:                     2500,
		numThumbs:                 15,
		preloadAhead:              10,
		enableTopPager:            true,
		enableBottomPager:         true,
		maxPagesToShow:            7,
		imageContainerSel:         '#slideshow',
		controlsContainerSel:      '#controls',
		captionContainerSel:       '#caption',
		loadingContainerSel:       '#loading',
		renderSSControls:          false,
		renderNavControls:         true,
		prevLinkText:              '< {PREV_PIC_LINK_NAME}',
		nextLinkText:              '{NEXT_PIC_LINK_NAME} >',
		nextPageLinkText:          'Next &rsaquo;',
		prevPageLinkText:          '&lsaquo; Prev',
		enableHistory:             false,
		autoStart:                 false,
		enableKeyboardNavigation:  true,
		syncTransitions:           true,
		defaultTransitionDuration: 900,
		onSlideChange:             function(prevIndex, nextIndex) {
			// 'this' refers to the gallery, which is an extension of $('#thumbs')
			this.find('ul.thumbs').children()
				.eq(prevIndex).fadeTo('fast', onMouseOutOpacity).end()
				.eq(nextIndex).fadeTo('fast', 1.0);
			// Update the photo index display
			jQuery('#photo-index')
			.html((nextIndex+1) +' / '+ this.data.length);
			currentThumbLink = this.find('ul.thumbs').children().eq(nextIndex).find('a');
		},
		onTransitionOut:           function(slide, caption, isSync, callback) {
			slide.fadeTo(this.getDefaultTransitionDuration(isSync), 0.0, callback);
			caption.fadeTo(this.getDefaultTransitionDuration(isSync), 0.0);
		},
		onTransitionIn:            function(slide, caption, isSync) {
			
			var duration = this.getDefaultTransitionDuration(isSync);
			slide.fadeTo(duration, 1.0);
			
			if(caption.find('.image-title').text()){
				caption.find('.caption').css('display', 'block');
				// Position the caption at the top of the image
				//Math.floor((slide.width() - slideImage.width()) / 2) + slideImage.outerWidth() - slideImage.width()
				var slideImage = slide.find('img');
				caption.width(slideImage.width());
				caption.css(slideImage.position());
				caption.fadeTo(duration, captionOpacity);
			}else{
				caption.fadeTo(duration, 0);
			}
			
			//Set current image size
			var galleryImage = jQuery('#slideshow img');
			if((currentThumbLink.attr('imgwidth') > 0) && (currentThumbLink.attr('imgheight') > 0)){
				galleryImage.animate({width:currentThumbLink.attr('imgwidth'),height:currentThumbLink.attr('imgheight')}, duration);
			}else{
				galleryImage.removeAttr('width');
				galleryImage.removeAttr('height');
			}
		},
		onPageTransitionOut:       function(callback) {
			this.fadeTo('fast', 0.0, callback);
		},
		onPageTransitionIn:        function() {
			this.fadeTo('fast', 1.0);
		}
	});

	/**************** Event handlers for custom next / prev page links **********************/
	/*
	gallery.find('a.prev').click(function(e) {
		gallery.previousPage();
		e.preventDefault();
	});
	gallery.find('a.next').click(function(e) {
		gallery.nextPage();
		e.preventDefault();
	});*/
	
	
	//Set gustom Start Image for the GalleryModul By ImageIndex if the Index is not the first image
	if(parseInt(picId) >1) gallery.gotoIndex(parseInt(picId)-1);
}
</script>

<div class="navigation-box" style="{NAVIGATION_BOX_STYLE}">		
	<div class="navigation-container">
		<div id="thumbs" class="navigation">
			<a class="pageLink prev" style="visibility: hidden;" href="#" title="Previous Page"></a>
			<ul class="thumbs noscript">
				<!-- BEGIN thumbs -->
				<li class="{thumbs.LI_CLASS}">
					<a class="thumb" name="leaf" href="{thumbs.ART_IMG_THUMB_3_SRC}" imgwidth="{thumbs.ART_IMG_THUMB_3_WIDTH}" imgheight="{thumbs.ART_IMG_THUMB_3_HEIGHT}" title="{thumbs.ART_IMG_TITLE}">
						<img src="{thumbs.ART_IMG_THUMB_1_SRC}" width="{thumbs.ART_IMG_THUMB_1_WIDTH}" height="{thumbs.ART_IMG_THUMB_1_HEIGHT}" alt="{thumbs.ART_IMG_TITLE}" title="{thumbs.ART_IMG_TITLE}">
					</a>
					<div class="caption" style="display:none">
						<div class="image-title">{thumbs.ART_IMG_TITLE}</div>
					</div>
				</li>
				<!-- END thumbs -->
			</ul>
			<a class="pageLink next" style="visibility: hidden;" href="#" title="Next Page"></a>
		</div>
	</div>
	<div style="clear: both;"></div>
</div>

<!-- BEGIN switch_show_navi_elements -->
	<div id="photo-index"></div>
<!-- END switch_show_navi_elements -->
<div id="gallery" class="content">
	<div class="slideshow-container">
		<div id="loading" class="loader"></div>
		<div id="slideshow" class="slideshow"></div>
		<div id="caption" class="caption-container"></div>
	</div>
	<!-- BEGIN switch_show_navi_elements -->
	<div class="controls-box">
		<div id="controls" class="controls"></div>
	</div>
	<!-- END switch_show_navi_elements -->
</div>