<table width=100%>

<!-- BEGIN switch_fragen -->
<tr>
<td><a href=#{switch_fragen.ID}>{switch_fragen.NUMMER}. {switch_fragen.FRAGE}</a></td>
</tr>
<!-- END switch_fragen -->
</table>

<table width=100%>

<!-- BEGIN switch_antworten -->

<tr>
<a name={switch_antworten.ID}></a>
<td><u>{switch_antworten.NUMMER}. {switch_antworten.FRAGE}</u></td>
</tr>
<tR><td>{switch_antworten.ANTWORT}</td></tr>
<!-- END switch_antworten -->
</table>

