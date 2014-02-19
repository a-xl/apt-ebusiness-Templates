<!-- BEGIN specialoffers -->
<div class=bg16>{specialoffers.BLOCK_NAME}</div>                
<div style="{BG_IMG_31}">
	<div style="padding:{PIXELABSTAND-MENUEBLOCK}px;">
		<center>
		
		{specialoffers.KEINE_ARTIKEL}
		
		<!-- BEGIN switch_show_buttons -->
		<a href="javascript:" class="{specialoffers.switch_show_buttons.BUTTON_PREV_CLASS}" rel="prev"></a>
		<!-- END switch_show_buttons -->
		
		<div id="{specialoffers.WRAPPER_BOX_ID}" style="{specialoffers.WRAPPER_BOX_STYLE}">
			<div id="{specialoffers.CONTENT_BOX_ID}" style="{specialoffers.CONTENT_BOX_STYLE}">
				<!-- BEGIN switch_artikel -->
				<div class="slide" style="{specialoffers.ELEMENT_BOX_STYLE}">
						<div class="mbArtPresenterItem">
						<span class="categoryname">{specialoffers.switch_artikel.CATEGORY_NAME}</span>
							<div class="content_box">
								<a href="{specialoffers.switch_artikel.ITEM_URL}" title="{ART_LINK_TITLE}" class="image_box" onclick="{specialoffers.switch_artikel.ITEM_TRACKINGCODE}">{specialoffers.switch_artikel.ART_IMG_THUMB_1_TAG}</a>
								<div class="info_box">
									<a href="{specialoffers.switch_artikel.ITEM_URL}" title="{ART_LINK_TITLE}" class="artikel_name" onclick="{specialoffers.switch_artikel.ITEM_TRACKINGCODE}">{specialoffers.switch_artikel.ART_NAME}</a>
									<!-- BEGIN switch_art_variation_info -->
										<div class="variation_info">{specialoffers.switch_artikel.ART_VARIATION_INFO}</div>
									<!-- END switch_art_variation_info -->
								</div>	
								<!-- BEGIN switch_dicount_preis -->
									<span class="discount_box">{specialoffers.switch_artikel.switch_dicount_preis.DISCOUNT_VALUE}</span>
								<!-- END switch_dicount_preis -->
								<!-- BEGIN switch_new_offer -->
									<span class="new_offer_box"><img title="{specialoffers.switch_artikel.switch_new_offer.NEW_OFFER_TITLE}" alt="{specialoffers.switch_artikel.switch_new_offer.NEW_OFFER_ALT}" src="{specialoffers.switch_artikel.switch_new_offer.NEW_OFFER_SRC}"></span>
								<!-- END switch_new_offer -->
								<!-- BEGIN switch_best_price -->
									<span class="best_price_box"><img title="{specialoffers.switch_best_price.BEST_PRICE_TITLE}" alt="{specialoffers.switch_best_price.BEST_PRICE_ALT}" src="{specialoffers.switch_best_price.BEST_PRICE_SRC}"></span>
								<!-- END switch_best_price -->
								<!-- BEGIN switch_show_preis -->
									<div class="price_box">
										<div class="price">
											<span class="pricevariation">{specialoffers.switch_artikel.ART_PREIS_ZUSATZ}</span><span class="pricevalue">{specialoffers.switch_artikel.ART_PREIS}</span><span class="pricecur">{specialoffers.switch_artikel.CUR}</span>
										</div>
										<!-- BEGIN switch_uvp_preis -->
											<div class="uvp_price">
												<span class="pricename">{specialoffers.switch_artikel.switch_show_preis.switch_uvp_preis.UVP_NAME}</span>
												<span class="pricevariation">{specialoffers.switch_artikel.ART_PREIS_ZUSATZ}</span><span class="pricevalue">{specialoffers.switch_artikel.switch_show_preis.switch_uvp_preis.UVP_PREIS}</span><span class="pricecur">{specialoffers.switch_artikel.CUR}</span>
											</div>
										<!-- END switch_uvp_preis -->
										<!-- BEGIN switch_gpreis -->
											<div class="gprice">
												<span class="pricename">{specialoffers.switch_artikel.switch_show_preis.switch_gpreis.GPREIS_NAME}</span>
												<span class="pricevariation">{specialoffers.switch_artikel.ART_PREIS_ZUSATZ}</span><span class="pricevalue">{specialoffers.switch_artikel.switch_show_preis.switch_gpreis.GPREIS_PREIS}</span><span class="pricecur">{specialoffers.switch_artikel.CUR}</span>
												<span class="priceunit">/{specialoffers.switch_artikel.switch_show_preis.switch_gpreis.GPREIS_UNIT}</span>
											</div>
										<!-- END switch_gpreis -->
											<div class="mwst_info">
												{specialoffers.switch_artikel.MWST_HINWEIS}
											</div>
											<div class="deliverycost_info">
												{ZZGL_NAME} 
												<a href={LIEFERVERSAND_T_ACTION}>
													{LIEFERVERSAND_T_NAME}{switch_artikel_teil.artikel.ART_GRUNDPREIS}
												</a>
											</div>
									</div>
								<!-- END switch_show_preis -->
								<!-- BEGIN switch_show_purchase -->
									<div id="purchasepricebox" class="price_box"">
										<div class='purchase_short_info'>{specialoffers.switch_artikel.switch_show_purchase.PURCHASE_SHORT_INFO_TEXT}</div>
										<div class="price">
											<span class="pricevariation">{specialoffers.switch_artikel.switch_show_purchase.PURCHASE_PREIS_ZUSATZ}</span>
											</span><span class="pricevalue">{specialoffers.switch_artikel.switch_show_purchase.PURCHASE_PREIS}</span><span class="pricecur">{specialoffers.switch_artikel.CUR}</span>
										</div>
										<div class="deliverycost_info">
											{ABZGL_NAME} 
											<a href={LIEFERVERSAND_T_ACTION}>
												{LIEFERVERSAND_T_NAME}{switch_artikel_teil.artikel.ART_GRUNDPREIS}
											</a>
										</div>
									</div>
								<!-- END switch_show_purchase -->
								<!-- BEGIN switch_show_basket -->
									<div class="basket_box" style="{BASKET_BOX_STYLE}">
										<form action="{BASKET_FORM_ACTION}" method="post">
											{specialoffers.switch_artikel.BASKET_FORM_HIDDEN_FIELDS}
											<span class="quantity_changer">
												<input id="quantity_field_{specialoffers.switch_artikel.DIV_ID}" type="text" size="2" name="wunschmenge" value="{specialoffers.switch_artikel.MIN_QUANTITY}"}>
												<label for="quantity_field_{specialoffers.switch_artikel.DIV_ID}">{specialoffers.switch_artikel.ART_UNIT}</label>
											</span>
											<button class="add_to_basket" title="{BASKET_BUTTON_TITLE}" type="submit" onclick="{specialoffers.switch_artikel.ITEM_TRACKINGCODE}">
												<img title="{BASKET_BUTTON_TITLE}" alt="{BASKET_BUTTON_ALT}" src="images/spacer.gif">
											</button>
										</form>
									</div>
								<!-- END switch_show_basket -->
								<!-- BEGIN switch_sold_out -->
									<div class="sold_out_info">
										{specialoffers.switch_artikel.switch_sold_out.SOLD_OUT_INFO}
									</div>
								<!-- END switch_sold_out -->
							</div>
							<div style="clear:both"></div>	
						</div>
				</div>
				<!-- END switch_artikel -->
			</div>
		</div>
		
		<!-- BEGIN switch_show_buttons -->
		<a href="javascript:" class="{specialoffers.switch_show_buttons.BUTTON_NEXT_CLASS}" rel="next"></a>
		<!-- END switch_show_buttons -->
		
		
		<!-- BEGIN switch_show_link -->
		<a href="{specialoffers.switch_show_link.LINK_URL}" title="{specialoffers.switch_show_link.LINK_NAME}">{specialoffers.switch_show_link.LINK_NAME}</a>
		<!-- END switch_show_link -->
		
		{specialoffers.SCRIPT_CODE}
		
		</center>
	</div>
</div>
<div style="height:{PIXELABSTAND-MENUEBLOCK-ZWISCHEN}px;"></div>
<!-- END specialoffers -->