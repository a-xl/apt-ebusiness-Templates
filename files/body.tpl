<TABLE cellSpacing=0 cellPadding=0 width="{BREITE-SEITE}" class="bg2"

border=0 style="border-collapse: collapse">
  <TR valign="top">
	{BLOCKCONTAINER_LEFT}
	
	<TD vAlign=top class="content">
		<div class="contentarea">
			<!-- Navigation for the orderprocess-->
				{ORDER_STEP_NAVI}
			<table width="100%" cellspacing=0 cellpadding=0><tR><td valign=top align=left>
			<!-- BEGIN switch_body_value -->
			{switch_body_value.BODY_VALUE}<br>
			<!-- END switch_body_value -->
			
			<!-- BEGIN switch_news -->
			<div class=bg8 {INNENTEIL_KOPF_BG} ><div style="padding-left:3px;">
			<font class=f13>{NEWS_NAME}</font></div></div>
			
			<div class=bg2 {INNENTEIL_BG} >
			<div style="padding-left:{PIXELABSTAND-INNENTEIL}px;padding-right:{PIXELABSTAND-INNENTEIL}px;">
			<table width="100%">
			<!-- BEGIN news -->
			    <tr class={switch_news.news.TABLE_BG_COL_COLOR}>
			        <td width="30%"><font class=f22>{switch_news.news.DATE} {switch_news.news.TIME}</font></td>
			        <td><font class=f22>{switch_news.news.HEADLINE}</font></td>
			    </tR>
			    <tr  class={switch_news.news.TABLE_BG_COL_COLOR}><td colspan=2><font class=f22>{switch_news.news.INHALT}</font></td></tr>
			    <tr><td> </td></tr>
			<!-- END news -->
			</table></div></diV>
			<br/>
			<!-- END switch_news -->
			
			<!-- BEGIN switch_content_headline -->
			<div class=bg8 {INNENTEIL_KOPF_BG} >
				<div style="padding-left:3px;"><font class=f13>{BODY_NAME}</font></div>
			</div>
			<!-- END switch_content_headline -->
			
			<div class=bg2 {INNENTEIL_BG} >
				<div >
				<!-- BODY -->
				</div>
			</diV>
			</td></tR></table>
		</div>
	</TD>
	
	{BLOCKCONTAINER_RIGHT}
</TR>
</table>