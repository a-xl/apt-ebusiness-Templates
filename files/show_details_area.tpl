<script type="text/javascript">
    var tabids = [];
    var containerids = [];
    function create_tabs(){
        $$('.tab').all( function( el ) {
                var container = $(el.id.replace( 'tab_', '' ));
                if(container === null || container === undefined){
                    el.hide();
                    return false;
                }else{
                    tabids.push( el.id );
                    containerids.push( el.id.replace( 'tab_', '' ));
                    el.observe( 'click', handle_tab_click );
                    return true;
                }
                
        } );
    }
    function handle_tab_click( event ){
        
        change_active_tab(this.id);
        
    }
    function change_active_tab(currentContainerTabId){
        currentContainerId = currentContainerTabId.replace( 'tab_', '' );
        currentTab = $(currentContainerId);
        tabids.all( function( tab ) {
            $(tab).removeClassName( 'active' );
            return true;
        } );
        $(currentContainerTabId).addClassName('active');
        containerids.each( function( containerId ) {
            $(containerId).hide();
            return true;
        } );
        currentTab.show();
        
    }
    Event.observe( window, 'load', create_tabs );
</script>

<div id="tabs">
  <ul>
	<!-- BEGIN tabs -->
		<li><a href="{tabs.LINK_HREF}" onClick="{tabs.LINK_ONCLICK}" id="tab_content_{tabs.CONTENT_KEY}" class="tab {tabs.LINK_CLASS}" title="{tabs.LINK_TITLE}"><span>{tabs.LINK_TEXT}</span></a></li>
	<!-- END tabs -->
	<!--
	<li><a href="#" id="tab_content1" class="tab" title="{TEXT_INFO} {TEXT_SHOW}"><span>{TEXT_INFO}</span></a></li>
    <li><a href="#" id="tab_content2" class="tab" title="{TEXT_DESCRIPTION} {TEXT_SHOW}"><span>{TEXT_DESCRIPTION}</span></a></li>
    <li><a href="#" id="tab_content3" class="tab" title="{TEXT_PROPERTIES} {TEXT_SHOW}"><span>{TEXT_PROPERTIES}</span></a></li>
    <li><a href="#" id="tab_content4" class="tab" title="{TEXT_OTHER} {TEXT_SHOW}"<span>{TEXT_OTHER}</span></a></li>
    <li><a href="#" id="tab_content5" class="tab" title="{TEXT_REVIEWS} {TEXT_SHOW}"><span>{TEXT_REVIEWS}</span></a></li>
	-->
  </ul>
</div>
<div id="tabcontent">
	<div id="content_info" style="{content_info_BOX_STYLE}">
		{ART_INFO}
	</div>
	
	<div id="content_description" style="{content_description_BOX_STYLE}">
		{ART_DESCRIPTION}
	</div>
	
	<div id="content_properties" style="{content_properties_BOX_STYLE}">
		<table class="art_properties">
		<!-- BEGIN list_properties -->
			<tr class="{list_properties.PROPERTY_CLASS}">
				<td class="art_properties_name"><b>{list_properties.PROPERTY_NAME}:</b></td>
				<td class="art_properties_value ">{list_properties.PROPERTY_VALUE}</td>
			</tr>
		<!-- END list_properties -->
		</table>
	</div>
	
	<div id="content_other" style="{content_other_BOX_STYLE}">
		<table class="art_otherproperties">
		<!-- BEGIN list_otherproperties -->
			<tr class="{list_otherproperties.PROPERTY_CLASS}">
				<td class="art_properties_name"><b>{list_otherproperties.PROPERTY_NAME}:</b></td>
				<td class="art_properties_value ">{list_otherproperties.PROPERTY_VALUE}</td>
			</tr>
		<!-- END list_otherproperties -->
		</table>
	</div>
	
	<div id="content_variations" style="{content_variations_BOX_STYLE}">
		<table class="art_variations">
			<tr>
				<th class="art_variation_name">{LABEL_VARIATION_NAME}</th>
				<th class="art_variation_name">{LABEL_VARIATION_NUMBER}</th>
				<th class="art_variation_price">{LABEL_VARIATION_PRICE}</th>
				<th class="art_variation_button">{LABEL_BASKET_BUTTON}</th>
			</tr>
		<!-- BEGIN list_variations -->
			<tr class="{list_variations.VARIATION_CLASS}">
				<td class="art_variation_name"><b>{list_variations.VARIATION_NAME}</b></td>
				<td class="art_variation_artikel_id">{list_variations.VARIATION_NUMBER}</td>
				<td class="art_variation_price">
					{list_variations.VARIATION_PRICE}<span class="pricecur">{CUR}</span><sup>1</sup>
					<!-- BEGIN switch_gpreis -->
					<div class="gprice">
						<span class="pricename">{list_variations.switch_gpreis.GPREIS_NAME}</span>
						<span class="pricevalue">{list_variations.switch_gpreis.GPREIS_PREIS}</span><span class="pricecur">{CUR}</span>
						<span class="priceunit">/{GPREIS_UNIT}</span>
					</div>
					<!-- END switch_gpreis -->
				</td>
				<td class="art_variation_button">
					<form action="{BASKET_FORM_ACTION}" method="POST">
						{list_variations.BASKET_HIDDEN_FIELDS}
						<span class="quantity_changer">
							<input id="quantity_field" type="text" size="2" name="wunschmenge" value="{MIN_QUANTITY}">
							<label for="quantity_field">{ART_UNIT}</label>
						</span>
						<button type="submit">{BASKET_BUTTON_TEXT}</button>
					</form>
				</td>
			</tr>
		<!-- END list_variations -->
		</table>
		
		<div class="mwst_info">
			<sup>1</sup> {MWST_HINWEIS}
			{ZZGL_NAME} 
			<a href={LIEFERVERSAND_T_ACTION}>
				{LIEFERVERSAND_T_NAME}{switch_artikel_teil.artikel.ART_GRUNDPREIS}
			</a>
		</div>
	</div>
	
	<div id="content_downloads" style="{content_downloads_BOX_STYLE}">
		{DOWNLOAD_INFO}<br><br>
		<table class="art_downloads">
		<!-- BEGIN list_downloads -->
			<tr class="{list_downloads.DOWNLOAD_CLASS}">
				<td class="art_download_icon"><a href="{list_downloads.DOWNLOAD_LINK}" target="_blank"><img border="0" src="{list_downloads.DOWNLOAD_ICON}" title="{list_downloads.DOWNLOAD_NAME}"></a></td>
				<td class="art_download_name"><a href="{list_downloads.DOWNLOAD_LINK}" target="_blank">{list_downloads.DOWNLOAD_NAME}</a></td>
			</tr>
		<!-- END list_downloads -->
		</table>
	</div>
	<div id="content_finanzierung" style="{content_finanzierung_BOX_STYLE}">
		{FINANZIERUNG_INFO}<br><br>
		<div id="finanzierungsbox">{FINANZIERUNG_BOX}</div>
	</div>
	
</div>