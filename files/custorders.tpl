{ORDER_LIST_KOPF}
<hr noshade>
<table cellspacing=0 width=100%>
    <tr>
        <td><b>{TABLE_HEAD_DATUM}</b></td>
        <td><b>{TABLE_HEAD_BESTELLNR}</b></td>
        <td><b>{TABLE_HEAD_STATUS}</b></td>
    </tR>
<!-- BEGIN orders -->
    <tr class={orders.TABLE_BG_COL_COLOR}>
        <td><a href={orders.ORDER_ACTION}>{orders.ORDER_DATUM}</a></td>
        <td><a href={orders.ORDER_ACTION}>{orders.ORDER_BESTELLNR}</a></td>
        <td><a href={orders.ORDER_ACTION}>{orders.ORDER_STATUS}</a></td>
    </tR>
<!-- END orders -->
</table>
<hr noshade>
{ORDER_LIST_KOPF}

