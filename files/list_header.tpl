<!-- BEGIN gridHeader -->
<form name='{gridHeader.GRID_FORM_NAME}' action='{gridHeader.GRID_FORM_ACTION}' method='POST'>
<div  class='gridHeader'>
	<!-- BEGIN switchView -->
	<div class='switchView'>
		<div class='switchViewText'>{gridHeader.switchView.TEXT}</div>
		<a class='{gridHeader.switchView.LIST_LINK_CLASS}' title='{gridHeader.switchView.LIST_LINK_TITLE}' href='{gridHeader.switchView.LIST_LINK_URL}'></a>
		<a class='{gridHeader.switchView.GALLERY_LINK_CLASS}' title='{gridHeader.switchView.GALLERY_LINK_TITLE}' href='{gridHeader.switchView.GALLERY_LINK_URL}'></a>
	</div>
	<!-- END switchView -->
	<div class='pageNavi'>{gridHeader.PAGE_NAVI}</div>
	<div class='sortSelector'>{gridHeader.SORT_SELECTOR}</div>
	<div class='pageInfo'>{gridHeader.PAGE_INFO}</div>
</div>
</form>
<!-- END gridHeader -->