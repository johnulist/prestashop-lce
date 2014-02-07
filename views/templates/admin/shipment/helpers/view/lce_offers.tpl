<form id="select-offer">
<input type='hidden' name='quote_uuid' value='{$quote->id}'>
<table>
  <thead>
    <tr>
      <th></th>
      <th style='width: 20%;'>{l s='Product name'}</th>
      <th>{l s='Pickup details'}</th>
      <th>{l s='Delivery details'}</th>
      <th>{l s='Other details'}</th>
    </tr>
  </thead>
  <tbody>
{foreach from=$offers item=offer}
  <tr>
    <td><input type='radio' name='offer_uuid' value='{$offer->id}'></td>
    
    <td>{$offer->product->name}
        <br/>{l s='Total price:'} <b>{$offer->total_price->formatted}</b>
    </td>
    
    <td>
      {foreach from=$offer->product->collection_informations key=lang item=s}
        <p class='lang {$lang}'>{$s|nl2br}</p>
      {/foreach}
    </td>

    <td>
      {foreach from=$offer->product->delivery_informations key=lang item=s}
        <p class='lang {$lang}'>{$s|nl2br}</p>
      {/foreach}
    </td>

    <td>
      {foreach from=$offer->product->details key=lang item=s}
        <p class='lang {$lang}'>{$s|nl2br}</p>
      {/foreach}
    </td>

  </tr>
{/foreach}
  </tbody>
</table>
<input type='submit' value='{l s='Select offer'}' name='select_lce_offer'/>
</form>