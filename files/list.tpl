<!-- BEGIN switch_show_category -->
	<!-- BEGIN switch_cat_info -->
	<table width="100%">
		<tr>
			<td>{switch_show_category.switch_cat_info.CAT_DESCRIPTION}</td>
			<td>{switch_show_category.switch_cat_info.CAT_IMG}</tD>
		</tr>
	</table>
	<!-- END switch_cat_info -->
	{SELECT_CAT}
	<table width="100%">
	    <tr>
		<!-- BEGIN subcat -->
	        <td align=center><a href={switch_show_category.subcat.SUB_ACTION}>{switch_show_category.subcat.SUB_IMG}</a><bR>
	       <a href={switch_show_category.subcat.SUB_ACTION}>{switch_show_category.subcat.SUB_NAME}</a></td>
			{switch_show_category.subcat.LINE}
		<!-- END subcat -->
	    </tr>
	</table>
	<br/>
<!-- END switch_show_category -->

<div id='gridContent' class='gridContent'>
	{LIST_CONTENT}
</div>

<br/>

<!-- BEGIN switch_show_category -->
	<!-- BEGIN switch_cat_info -->
		{switch_show_category.switch_cat_info.CAT_DESCRIPTION_2}
	<!-- END switch_cat_info -->
<!-- END switch_show_category -->