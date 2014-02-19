<script type="text/javascript">
	{CONTENT_JS_CODE}
</script>
<div id="{CONTENT_ID}">
<!-- BEGIN item -->
	<div id="{item.DIV_ID}" class="item">
		<div class="galleryitem">
			 <span class="categoryname">{galleryItem.CATEGORY_NAME}</span>
			 <div class="itemShadow">
				 <div class="content_box">
					<a href="{item.ITEM_URL}" title="{ART_LINK_TITLE}" class="image_box">{item.ART_IMG_THUMB_1_TAG}</a>
					<div class="info_box">
						<a href="{item.ITEM_URL}" title="{ART_LINK_TITLE}" class="artikel_name">{item.ART_NAME}</a>
						<!-- BEGIN switch_art_variation_info -->
							<div class="variation_info">{item.ART_VARIATION_INFO}</div>
						<!-- END switch_art_variation_info -->
						<!-- BEGIN switch_art_availability -->
							<div class="artikel_availability">{item.ART_AVAILABILITY_IMG_TAG} {item.ART_AVAILABILITY_NAME}</div><div style="clear:both"></div>
						<!-- END switch_art_availability -->
					</div>
					<!-- BEGIN switch_dicount_preis -->
						<span class="discount_box">{item.switch_dicount_preis.DISCOUNT_VALUE}</span>
					<!-- END switch_dicount_preis -->
					<!-- BEGIN switch_new_offer -->
						<span class="new_offer_box"><img title="{item.switch_new_offer.NEW_OFFER_TITLE}" alt="{item.switch_new_offer.NEW_OFFER_ALT}" src="{item.switch_new_offer.NEW_OFFER_SRC}"></span>
					<!-- END switch_new_offer -->
					<!-- BEGIN switch_best_price -->
						<span class="best_price_box"><img title="{item.switch_best_price.BEST_PRICE_TITLE}" alt="{item.switch_best_price.BEST_PRICE_ALT}" src="{item.switch_best_price.BEST_PRICE_SRC}"></span>
					<!-- END switch_best_price -->
					<!-- BEGIN switch_show_preis -->
						<div class="price_box">
							<div class="price">
								<span class="pricevariation">{item.ART_PREIS_ZUSATZ}</span><span class="pricevalue">{item.ART_PREIS}</span><span class="pricecur">{item.CUR}</span>
							</div>
							<!-- BEGIN switch_uvp_preis -->
								<div class="uvp_price">
									<span class="pricename">{item.switch_show_preis.switch_uvp_preis.UVP_NAME}</span>
									<span class="pricevariation">{item.ART_PREIS_ZUSATZ}</span><span class="pricevalue">{item.switch_show_preis.switch_uvp_preis.UVP_PREIS}</span><span class="pricecur">{item.CUR}</span>
								</div>
							<!-- END switch_uvp_preis -->
							<!-- BEGIN switch_gpreis -->
								<div class="gprice">
									<span class="pricename">{item.switch_show_preis.switch_gpreis.GPREIS_NAME}</span>
									<span class="pricevariation">{item.ART_PREIS_ZUSATZ}</span><span class="pricevalue">{item.switch_show_preis.switch_gpreis.GPREIS_PREIS}</span><span class="pricecur">{item.CUR}</span>
									<span class="priceunit">/{item.switch_show_preis.switch_gpreis.GPREIS_UNIT}</span>
								</div>
							<!-- END switch_gpreis -->
								<div class="mwst_info">
									{item.MWST_HINWEIS}
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
						<div id="purchasepricebox" class="price_box">
							<div class='purchase_short_info'>{item.switch_show_purchase.PURCHASE_SHORT_INFO_TEXT}</div>
							<div class="price">
								<span class="pricevariation">{item.switch_show_purchase.PURCHASE_PREIS_ZUSATZ}</span>
								</span><span class="pricevalue">{item.switch_show_purchase.PURCHASE_PREIS}</span><span class="pricecur">{item.CUR}</span>
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
								{item.BASKET_FORM_HIDDEN_FIELDS}
								<span class="quantity_changer">
									<input id="quantity_field_{item.DIV_ID}" type="text" size="2" name="wunschmenge" value="{item.MIN_QUANTITY}"}>
									<label for="quantity_field_{item.DIV_ID}">{item.ART_UNIT}</label>
								</span>
								<button class="add_to_basket" title="{BASKET_BUTTON_TITLE}" type="submit">
									<img title="{BASKET_BUTTON_TITLE}" alt="{BASKET_BUTTON_ALT}" src="images/spacer.gif">
								</button>
							</form>
						</div>
					<!-- END switch_show_basket -->
					<!-- BEGIN switch_sold_out -->
						<div class="sold_out_info">
							{item.switch_sold_out.SOLD_OUT_INFO}
						</div>
					<!-- END switch_sold_out -->
				</div>
				<div style="clear:both"></div>
			</div>
		</div>
	</div>
<!-- END item -->
</div>
<div style="clear:both"></div>