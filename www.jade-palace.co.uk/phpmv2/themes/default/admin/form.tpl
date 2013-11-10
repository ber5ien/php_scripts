{include file=admin/form_header.tpl}
<form {$form_data.attributes}>
<!-- Output hidden fields -->
{$form_data.hidden}
<!-- Display the fields -->
{foreach from=$list_elements key=title item=data}
	<h3>{$title}</h3>
	<div class="centrer">
	<table class="centrer">
	{foreach from=$data item=fieldname}
		{* normal form *}
		{if $form_data.$fieldname.label}
		<tr>
			<td>{$form_data.$fieldname.label}</td>
			<td>{$form_data.$fieldname.html}</td>
		</tr>
		{* radio form *}
		{else}
			{foreach from=$form_data.$fieldname key=key item=radio}
			<tr>
				<td>{$radio.label}</td>
				<td>{$radio.html}</td>
			</tr>
			{/foreach}
		{/if}
	{/foreach}
	</table>
	</div>
{/foreach}
<div class="boutonsAction">
{$form_data.submit.html}
{if $mod=='admin' && $action !=='modCur'}
	{$form_data.back.html}
{/if}
</div>
</form> 