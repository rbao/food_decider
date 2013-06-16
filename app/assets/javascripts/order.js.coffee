$(document).on 'keyup', '#order_price', (event) ->
  $this = $(this)
  price = parseFloat($this.val())
  

  if price
    tax_rate = parseFloat($('#order_tax').data('rate'))
    tax = price * tax_rate
    after_tax = price + tax
    
    $('.order-tax').val(tax.toFixed(2))
    $('.order-total').val(after_tax.toFixed(2))
  else if $this.val() == ''
    $('.order-tax').val('')
    $('.order-total').val('')
  else
    $('.order-tax').val('N/A')
    $('.order-total').val('N/A')
  
