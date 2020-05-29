stocks = [3,17,6,9,15,8,6,18,10]
max_value_for_each_stock = Hash.new(0)

for i in 1..stocks.length - 1 do
  target_stocks = stocks[0,i] # only count stocks that come from the past
  keys = target_stocks.map{|item| stocks[i] - item}.max 
  max_value_for_each_stock[keys] = i 
end

sell_minus_buy = max_value_for_each_stock.keys.max
sell_index = max_value_for_each_stock[sell_minus_buy]
buy_value = stocks[sell_index] - sell_minus_buy
buy_index = stocks.index(buy_value)

p  [buy_index,sell_index]
