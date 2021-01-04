def order_checker(take_out_orders, dine_in_orders, served_orders)
  take_out_index = 0
  dine_in_index = 0
  served_orders.each do |order|
    current_take_out_order = take_out_orders[take_out_index]
    current_dine_in_order = dine_in_orders[dine_in_index]
    if order == current_take_out_order
      take_out_index += 1
    elsif order == current_dine_in_order
      dine_in_index += 1
    else
      return false
    end
  end

  return true
end
