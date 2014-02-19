<script type="text/javascript">
	//Protottype execute your scripts when the DOM is ready
	Event.observe( window, 'load',function(){
		$$('select.variation_selector').each( function( el ) {
			if(typeof(el) == 'object'){
				el.observe( 'change', updateTotalPrice );
				el.observe( 'change', updateImagesArea );
			}
		} );
		
		$$('select.additional_option_selector').each( function( el ) {
			if(typeof(el) == 'object'){
				el.observe( 'change', updateTotalPrice );
			}
		} );
		
		
		$$('input.additional_formula_param').each( function( el ) {
			if(typeof(el) == 'object'){
				el.observe( 'change', updateTotalPrice );
			}
		} );
		
		if($('quantity_field')){
			$('quantity_field').observe( 'change', updateTotalPrice );
		}
	});
	function updateTotalPrice( event ){
	
		$('basket_form').request({
		  method: 'post',
		  parameters: {'class':'ArtikelView','func':'ajaxGetArtikelPriceByRequestData'},
		  onComplete: function(transport){ 
			
			var totalpricebox = $('totalpricebox');
			var purchasepricebox = $('purchasepricebox');
			if(!transport.responseText.empty()){
				var responseData = eval(transport.responseText);
				totalpricebox.show();
				totalpricebox.select('.price .pricevalue').all( function( el ) { el.update(responseData[0]); });

				if(responseData[1] != null){
					totalpricebox.select('.gprice').all( function( el ) { el.show(); });
					totalpricebox.select('.gprice .pricevalue').all( function( el ) { el.update(responseData[1]); });
				}else{
					totalpricebox.select('.gprice').all( function( el ) {el.hide(); });
				}
				
				totalpricebox.select('.mwst_info').all( function( el ) {
					el.update(responseData[2]);
				});
				
				if(responseData[3] != null){
					$$('.artikel_infos .artikel_number').all( function( el ) { el.show(); });
					$$('.artikel_infos .artikel_number .value').all( function( el ) { el.update(responseData[3]); });
				}else{
					$$('.artikel_infos .artikel_number').all( function( el ) {el.hide(); });
				}
				
				if(responseData[4] != null){
					totalpricebox.select('.klanarate_info').all( function( el ) { el.show(); });
					totalpricebox.select('.klanarate_info .pricevalue').all( function( el ) { el.update(responseData[4]); });
				}else{
					totalpricebox.select('.klanarate_info').all( function( el ) {el.hide(); });
				}
				
				if(responseData[5] != null){
					totalpricebox.select('.uvp_price').all( function( el ) { el.show(); });
					totalpricebox.select('.uvp_price .pricevalue').all( function( el ) { el.update(responseData[5]); });
				}else{
					totalpricebox.select('.uvp_price').all( function( el ) {el.hide(); });
				}
				
				
				if(responseData[7] != null){
					totalpricebox.select('.cfg_info').all( function( el ) { el.show(); });
					totalpricebox.select('.cfg_info').all( function( el ) { el.update(responseData[7]); });
					var price=responseData[0];
					
					if(price>=100) {
					
						$('tab_content_finanzierung').removeClassName('hidetab');
						//$('content_finanzierung').show();
						new Ajax.Request('modules.php',   {
							method: 'post',
				           	parameters: {'class':'CommerzFinanz', 'func':'ajaxgetRatenTabelleStatic','amount': responseData[0]},		         
				           	onSuccess: function(transport){
								$('finanzierungsbox').update(transport.responseText);
			     			}
						});
						}
						else{
						$('tab_content_finanzierung').addClassName('hidetab');
						//$('content_finanzierung').hide();
						change_active_tab('tab_content_description');
						
						}
				}else{
					totalpricebox.select('.cfg_info').all( function( el ) {el.hide(); });
				}
				if(responseData[6] != null){
					purchasepricebox.show();
					purchasepricebox.select('.price .pricevariation').all( function( el ) {el.hide(); });
					purchasepricebox.select('.price .pricevalue').all( function( el ) { el.update(responseData[6]); });
				}else{
					purchasepricebox.hide();
				}
			}else{
				totalpricebox.hide();
				purchasepricebox.hide();
			}
		  }
		});
	}
	
	
</script>
{KLANARATE_JS_CODE}

<div class="content_box">
	<!-- BEGIN switch_dicount_preis -->
		<span class="discount_box">{switch_dicount_preis.DISCOUNT_VALUE}</span>
	<!-- END switch_dicount_preis -->
	<!-- BEGIN switch_new_offer -->
		<span class="new_offer_box"><img title="{switch_new_offer.NEW_OFFER_TITLE}" alt="{switch_new_offer.NEW_OFFER_ALT}" src="{switch_new_offer.NEW_OFFER_SRC}"></span>
	<!-- END switch_new_offer -->
	<!-- BEGIN switch_best_price -->
		<span class="best_price_box"><img title="{switch_best_price.BEST_PRICE_TITLE}" alt="{switch_best_price.BEST_PRICE_ALT}" src="{switch_best_price.BEST_PRICE_SRC}"></span>
	<!-- END switch_best_price -->
	<h2 class="art_firm_name">
	<!-- BEGIN show_firm_link -->
		<a href={show_firm_link.ART_FIRM_LINK}>
	<!-- END show_firm_link -->
	{ART_FIRM_NAME}</a></h2>
	<h1 class="art_name">{ART_NAME}</h1>
	<div class="artikel_infos">
		<!-- BEGIN switch_art_number -->
			<div class="artikel_number">
				<span class="label">{ART_NUMBER_LABEL}:</span><span class="value">{ART_NUMBER_VALUE}</span>
			</div>
		<!-- END switch_art_number -->
		<!-- BEGIN switch_art_weight -->
			<div class="artikel_weight">
				<span class="label">{ART_WEIGHT_LABEL}:</span><span class="value">{ART_WEIGHT_VALUE}</span>
			</div>
		<!-- END switch_art_weight -->
		<!-- BEGIN switch_art_availability -->
			<div class="artikel_availability">
				{ART_AVAILABILITY_IMG_TAG} {ART_AVAILABILITY_NAME}
			</div>
		<!-- END switch_art_availability -->
		<!-- BEGIN switch_art_notification_button -->
			<button title="{NOTIFICATION_BUTTON_TITLE}" onclick=window.location.href="{NOTIFICATION_BUTTON_HREF}" class="artikelNotificationBtn" value="submit" onfocus="blur()">
					<span><img title="{NOTIFICATION_BUTTON_TITLE}" alt="{NOTIFICATION_BUTTON_ALT}" src="images/spacer.gif">
						{NOTIFICATION_BUTTON_TEXT}
					</span>
			</button>
		<!-- END switch_art_notification_button -->
		<!-- BEGIN switch_art_notification_enabled -->
			<button title="{NOTIFICATION_ENABLED_TITLE}" class="artikelNotificationEnabled">
					<span><img title="{NOTIFICATION_ENABLED_TITLE}" alt="{NOTIFICATION_ENABLED_ALT}" src="images/spacer.gif">
						{NOTIFICATION_ENABLED_TEXT}
					</span>
			</button>
		<!-- END switch_art_notification_enabled -->
		<!-- BEGIN switch_art_variation_info -->
			<div class="variation_info">
				{ART_VARIATION_INFO}
			</div>
		<!-- END switch_art_variation_info -->
	</div>
	<a href={ARTIKEL_PRINT_ACTION} target=_blank>{ARTIKEL_PRINT_NAME}</a>
	<!-- BEGIN switch_show_preis -->
		<div class="price_box">
			{ART_PREIS_ZUSATZ_HTML}
			<div class="price">
				<span class="pricevariation">{ART_PREIS_ZUSATZ}</span><span class="pricevalue">{ART_PREIS}</span><span class="pricecur">{CUR}</span>
			</div>
			<!-- BEGIN switch_gpreis -->
				<div class="gprice">
					<span class="pricename">{switch_show_preis.switch_gpreis.GPREIS_NAME}</span>
					<span class="pricevariation">{ART_PREIS_ZUSATZ}</span><span class="pricevalue">{switch_show_preis.switch_gpreis.GPREIS_PREIS}</span>
					<span class="pricecur">{CUR}</span><span class="priceunit">/{GPREIS_UNIT}</span>
				</div>
			<!-- END switch_gpreis -->
			
			<!-- BEGIN switch_uvp_preis -->
				<div class="uvp_price">
					<span class="pricename">{switch_show_preis.switch_uvp_preis.UVP_NAME}</span>
					<span class="pricevariation">{ART_PREIS_ZUSATZ}</span><span class="pricevalue">{switch_show_preis.switch_uvp_preis.UVP_PREIS}</span><span class="pricecur">{CUR}</span>
				</div>
			<!-- END switch_uvp_preis -->
			<br>
			<!-- BEGIN switch_staffel -->
				<div class="scaleprice">
					<span class="pricevariation">{switch_show_preis.switch_staffel.ART_SCALE_PREIS_ZUSATZ}</span> <span class="pricename">{switch_show_preis.switch_staffel.ART_SCALE_QUANTITY} {switch_show_preis.switch_staffel.ART_SCALE_UNIT}:</span>
					<span class="pricevalue">{switch_show_preis.switch_staffel.ART_SCALE_PREIS}</span><span class="pricecur">{CUR}</span><span class="priceunit">/{switch_show_preis.switch_staffel.ART_SCALE_UNIT}</span>
				</div>
				<!-- BEGIN switch_uvp_preis -->
					<div class="uvp_price">
						<span class="pricename">{switch_show_preis.switch_staffel.switch_uvp_preis.UVP_NAME}</span>
						<span class="pricevariation">{ART_PREIS_ZUSATZ}</span><span class="pricevalue">{switch_show_preis.switch_staffel.switch_uvp_preis.UVP_PREIS}</span><span class="pricecur">{CUR}</span><span class="priceunit">/{switch_show_preis.switch_staffel.ART_SCALE_UNIT}</span>
					</div>
				<!-- END switch_uvp_preis -->
			<!-- END switch_staffel -->
			
			<div class="mwst_info">
				{MWST_HINWEIS}
			</div>
			<div class="deliverycost_info">
				{ZZGL_NAME} 
				<a href={LIEFERVERSAND_T_ACTION}>
					{LIEFERVERSAND_T_NAME}{switch_artikel_teil.artikel.ART_GRUNDPREIS}
				</a>
			</div>
			<div class="klanarate_info">
				{KLANARATE_INFO_TEXT} <span class="pricevalue">{KLANARATE_PREIS}</span><br>
				{KLANARATE_INFO_LINK}
			</div>
			<div class="cfg_info">
				{CFG_INFO_TEXT}
			</div>
		</div>
	<!-- END switch_show_preis -->
	<form action="{BASKET_FORM_ACTION}" method="post" id="basket_form">
	{BASKET_FORM_HIDDEN_FIELDS}
		<!-- BEGIN switch_show_basket -->
				<div class="zusatzfelder_box">
					{ART_ZUSATZFELDER}
				</div>
				<div class="zusatzartikel_box">
					{ART_ZUSATZARTIKEL}
				</div>
				<div id="totalpricebox" class="price_box" style="display:none">
					<div class="price">
						</span><span class="pricevalue">{ART_PREIS}</span><span class="pricecur">{CUR}</span>
					</div>
					<div class="gprice">
						<span class="pricename">{switch_gpreis.GPREIS_NAME}</span>
						<span class="pricevalue">{switch_gpreis.GPREIS_PREIS}</span><span class="pricecur">{CUR}</span>
						<span class="priceunit">/{GPREIS_UNIT}</span>
					</div>
					<div class="uvp_price">
						<span class="pricename">{UVP_NAME}</span>
						<span class="pricevalue">{switch_uvp_preis.UVP_PREIS}</span><span class="pricecur">{CUR}</span>
					</div>
					<div class="mwst_info">
						{MWST_HINWEIS}
					</div>
					<div class="deliverycost_info">
						{ZZGL_NAME} 
						<a href={LIEFERVERSAND_T_ACTION}>
							{LIEFERVERSAND_T_NAME}{switch_artikel_teil.artikel.ART_GRUNDPREIS}
						</a>
					</div>
					<div class="klanarate_info">
						{KLANARATE_INFO_TEXT} <span class="pricevalue">{KLANARATE_PREIS}</span><br>
						{KLANARATE_INFO_LINK}
					</div>
					<div class="cfg_info">
					{CFG_INFO_TEXT}
				</div>
				</div>
				<div class="basket_box" style="{BASKET_BOX_STYLE}">
						{BASKET_FORM_ZUSATZ_HTML}
						<span class="quantity_changer">
							<input id="quantity_field" type="text" size="2" name="wunschmenge" value="{MIN_QUANTITY}">
							<label for="quantity_field">{ART_UNIT}</label>
						</span>
						<button title="{BASKET_BUTTON_TITLE}" type="submit" class="basketBtn" value="submit" onfocus="blur()">
							<span><img title="{BASKET_BUTTON_TITLE}" alt="{BASKET_BUTTON_ALT}" src="images/spacer.gif">
							{BASKET_BUTTON_TEXT}
							</span>
						</button>
						<!-- BEGIN switch_show_mp_directpayment -->
							<div class='mp_box'>
							  {ART_MICROPAYMENT_HANDYPAY}
							  {ART_MICROPAYMENT_CALL2PAY}
							</div>
						<!-- END switch_show_mp_directpayment -->
				</div>
		<!-- END switch_show_basket -->
		
		<!-- BEGIN switch_sold_out -->
			<div class="sold_out_info">
				{switch_sold_out.SOLD_OUT_INFO}
			</div>
		<!-- END switch_sold_out -->
		
		<!-- BEGIN switch_art_best_price_button -->
			<span class="artikelBestPriceInfotext">{BEST_PRICE_INFOTEXT}</span>
			<br/>
			<button title="{BEST_PRICE_BUTTON_TITLE}" onclick="window.location.href='{BEST_PRICE_BUTTON_HREF}'; return false;" class="artikelBestPriceBtn" value="bestprice" onfocus="blur()">
					<span><img title="{BEST_PRICE_BUTTON_TITLE}" alt="{BEST_PRICE_BUTTON_ALT}" src="images/spacer.gif">
						{BEST_PRICE_BUTTON_TEXT}
					</span>
			</button>
		<!-- END switch_art_best_price_button -->
	
		<!-- BEGIN switch_show_purchase -->
			<div style="clear:both"></div>
			<div id="purchasepricebox" class="price_box" style="{PURCHASE_BOX_STYLE}">
				<hr/>
				<div class='purchase_info'>{PURCHASE_INFO_TEXT}</div>
				<div class="price">
					<span class="pricevariation">{PURCHASE_PREIS_ZUSATZ}</span>
					</span><span class="pricevalue">{PURCHASE_PREIS}</span><span class="pricecur">{CUR}</span>
				</div>
				<div class="deliverycost_info">
					{ABZGL_NAME} 
					<a href={LIEFERVERSAND_T_ACTION}>
						{LIEFERVERSAND_T_NAME}{switch_artikel_teil.artikel.ART_GRUNDPREIS}
					</a>
				</div>
				<div class="basket_box" style="{PURCHASE_BOX_STYLE}">
						{PURCHASE_FORM_HIDDEN_FIELDS}
						<span class="quantity_changer">
							<input id="quantity_field" type="text" size="2" name="purchase_quantity" value="1">
							<label for="quantity_field">{ART_UNIT}</label>
						</span>
						<button title="{PURCHASE_BUTTON_TITLE}" type="submit" name="purchase" class="basketBtn" value="submit" onfocus="blur()">
							<span><img title="{PURCHASE_BUTTON_TITLE}" alt="{PURCHASE_BUTTON_ALT}" src="images/spacer.gif">
							{PURCHASE_BUTTON_TEXT}
							</span>
						</button>
				</div>
			</div>
		<!-- END switch_show_purchase -->
	</form>

	<div style="clear:both"></div>
	<div class="options_box">
		<div class="social_buttons">
			<ul class="service_buttons">
				<li class="sociablefirst">
					<script>function fbs_click() {u=location.href;t=document.title;window.open('http://www.facebook.com/sharer.php?u='+encodeURIComponent(u)+'&t='+encodeURIComponent(t),'sharer','toolbar=0,status=0,width=626,height=436');return false;}</script>
					<a class="share_fachebook" href="http://www.facebook.com/share.php?u={ART_PERMA_LINK}" onclick="return fbs_click()" target="_blank" rel="nofollow" title="Facebook">
						<img class="sociable-hovers" src="images/spacer.gif" style="width: 16px; height: 16px; background: url('{SERVICE_SPRITE_URL}') no-repeat scroll -343px -1px transparent;" alt="Facebook" title="Facebook">
					</a>
				</li>
				<li>
					<a class="share_twitter" href="http://twitter.com/home?status=Currentlyreading {ART_PERMA_LINK}" target="_blank" rel="nofollow" title="Twitter">
						<img class="sociable-hovers" src="images/spacer.gif" style="width: 16px; height: 16px; background: url('{SERVICE_SPRITE_URL}') no-repeat scroll -343px -55px transparent;" alt="Twitter" title="Twitter">
					</a>
				</li>
				<li>
					<a class="share_del.icio.us" href="http://delicious.com/post?url={ART_PERMA_LINK}" target="_blank" rel="nofollow" title="del.icio.us">
						<img class="sociable-hovers" src="images/spacer.gif" style="width: 16px; height: 16px; background: url('{SERVICE_SPRITE_URL}') no-repeat scroll -199px -1px transparent;" alt="del.icio.us" title="del.icio.us">
					</a>
				</li>
				<li>
					<a class="share_linkedin" href="http://www.linkedin.com/shareArticle?mini=true&url={ART_PERMA_LINK}" target="_blank" rel="nofollow" title="LinkIn">
						<img class="sociable-hovers" src="images/spacer.gif" style="width: 16px; height: 16px; background: url('{SERVICE_SPRITE_URL}') no-repeat scroll -1px -37px transparent;" alt="LinkIn" title="LinkIn">
					</a>
				</li>
				<li>
					<a class="share_linkedin" href="http://www.linkedin.com/shareArticle?mini=true&url={ART_PERMA_LINK}" target="_blank" rel="nofollow" title="StumbleUpon">
						<img class="sociable-hovers" src="images/spacer.gif" style="width: 16px; height: 16px; background: url('{SERVICE_SPRITE_URL}') no-repeat scroll -217px -55px transparent;" alt="StumbleUpon" title="StumbleUpon">
					</a>
				</li>
				<li>
					<a class="share_digg" href="http://digg.com/submit?phase=2&url={ART_PERMA_LINK}" target="_blank" rel="nofollow" title="Digg">
						<img class="sociable-hovers" src="images/spacer.gif" style="width: 16px; height: 16px; background: url('{SERVICE_SPRITE_URL}') no-repeat scroll -235px -1px transparent;" alt="Digg" title="Digg">
					</a>
				</li>
				<li>
					<a class="share_reddit" href="http://reddit.com/submit?url={ART_PERMA_LINK}" target="_blank" rel="nofollow" title="Reddit">
						<img class="sociable-hovers" src="images/spacer.gif" style="width: 16px; height: 16px; background: url('{SERVICE_SPRITE_URL}') no-repeat scroll -55px -55px transparent;" alt="Reddit" title="Reddit">
					</a>
				</li>
				<li>
					<a class="share_yahoo" href="http://buzz.yahoo.com/submit/?submitUrl={ART_PERMA_LINK}" target="_blank" rel="nofollow" title="Yahoo! Buzz">
						<img class="sociable-hovers" src="images/spacer.gif" style="width: 16px; height: 16px; background: url('{SERVICE_SPRITE_URL}') no-repeat scroll -127px -73px transparent;" alt="Yahoo! Buzz" title="Yahoo! Buzz">
					</a>
				</li>
				<li>
					<a class="share_technorati" href="http://technorati.com/faves?add={ART_PERMA_LINK}" target="_blank" rel="nofollow" title="Technorati">
						<img class="sociable-hovers" src="images/spacer.gif" style="width: 16px; height: 16px; background: url('{SERVICE_SPRITE_URL}') no-repeat scroll -271px -55px transparent;" alt="Technorati" title="Technorati">
					</a>
				</li>
				<li>
					<a class="share_sphinn" href="http://sphinn.com/index.php?c=post&m=submit&link={ART_PERMA_LINK}" target="_blank" rel="nofollow" title="Sphinn">
						<img class="sociable-hovers" src="images/spacer.gif" style="width: 16px; height: 16px; background: url('{SERVICE_SPRITE_URL}') no-repeat scroll -199px -55px transparent;" alt="Sphinn" title="Sphinn">
					</a>
				</li>
				<li>
					<a class="share_google" href="http://www.google.com/bookmarks/mark?op=edit&bkmk={ART_PERMA_LINK}" target="_blank" rel="nofollow" title="Google Bookmarks">
						<img class="sociable-hovers" src="images/spacer.gif" style="width: 16px; height: 16px; background: url('{SERVICE_SPRITE_URL}') no-repeat scroll -91px -19px transparent;" alt="Google Bookmarks" title="Google Bookmarks">
					</a>
				</li>
			</ul>
		</div>
		<div class="option_buttons">
			<ul class="service_buttons">
				<li><a href={PRODUKTFRAGE_ACTION}>{PRODUKTFRAGE_NAME}</a>
				</li>
				<li class="sociablefirst">
					<a class="share_email" href="{ART_MAIL_ACTION}" target="_self" rel="nofollow" title="{ART_MAIL_NAME}">
						<img class="sociable-hovers" src="images/spacer.gif" style="width: 16px; height: 16px; background: url('{SERVICE_SPRITE_URL}') no-repeat scroll -325px -1px transparent;" alt="{ART_MAIL_NAME}" title="{ART_MAIL_NAME}">
					</a>
				</li>
				<li>
					<a href="{OPTION_PRINT_LINK}" target="_blank" rel="nofollow" title="{OPTION_PRINT_TITLE}">
						<img class="sociable-hovers" src="images/spacer.gif" style="width: 16px; height: 16px; background: url('{SERVICE_SPRITE_URL}') no-repeat scroll -1px -91px transparent;" alt="{OPTION_PRINT_TITLE}" title="{OPTION_PRINT_TITLE}">
					</a>
				</li>
			</ul>
		</div>
		<div style="clear:both"></div>
	</div>
</div>